; ModuleID = 'crypto/srp/srp_vfy.c'
source_filename = "crypto/srp/srp_vfy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SRP_user_pwd_st = type { i8*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8* }
%struct.bignum_st = type opaque
%struct.SRP_VBASE_st = type { %struct.stack_st_SRP_user_pwd*, %struct.stack_st_SRP_gN_cache*, i8*, %struct.bignum_st*, %struct.bignum_st* }
%struct.stack_st_SRP_user_pwd = type opaque
%struct.stack_st_SRP_gN_cache = type opaque
%struct.stack_st = type opaque
%struct.stack_st_SRP_gN = type opaque
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.txt_db_st = type { i32, %struct.stack_st_OPENSSL_PSTRING*, %struct.lhash_st_OPENSSL_STRING**, i32 (i8**)**, i64, i64, i64, i8** }
%struct.stack_st_OPENSSL_PSTRING = type opaque
%struct.lhash_st_OPENSSL_STRING = type { %union.lh_OPENSSL_STRING_dummy }
%union.lh_OPENSSL_STRING_dummy = type { i8* }
%struct.SRP_gN_st = type { i8*, %struct.bignum_st*, %struct.bignum_st* }
%struct.SRP_gN_cache_st = type { i8*, %struct.bignum_st* }
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_md_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_lib_ctx_st = type opaque
%struct.engine_st = type opaque
%struct.evp_Encode_Ctx_st = type opaque
%struct.bignum_ctx = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/srp/srp_vfy.c\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"00\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @SRP_user_pwd_free(%struct.SRP_user_pwd_st* noundef %user_pwd) #0 {
entry:
  %cmp = icmp eq %struct.SRP_user_pwd_st* %user_pwd, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %s = getelementptr inbounds %struct.SRP_user_pwd_st, %struct.SRP_user_pwd_st* %user_pwd, i64 0, i32 1
  %0 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !4
  tail call void @BN_free(%struct.bignum_st* noundef %0) #7
  %v = getelementptr inbounds %struct.SRP_user_pwd_st, %struct.SRP_user_pwd_st* %user_pwd, i64 0, i32 2
  %1 = load %struct.bignum_st*, %struct.bignum_st** %v, align 8, !tbaa !9
  tail call void @BN_clear_free(%struct.bignum_st* noundef %1) #7
  %id = getelementptr inbounds %struct.SRP_user_pwd_st, %struct.SRP_user_pwd_st* %user_pwd, i64 0, i32 0
  %2 = load i8*, i8** %id, align 8, !tbaa !10
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 185) #7
  %info = getelementptr inbounds %struct.SRP_user_pwd_st, %struct.SRP_user_pwd_st* %user_pwd, i64 0, i32 5
  %3 = load i8*, i8** %info, align 8, !tbaa !11
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 186) #7
  %4 = bitcast %struct.SRP_user_pwd_st* %user_pwd to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 187) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.SRP_user_pwd_st* @SRP_user_pwd_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 48, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 194) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.SRP_user_pwd_st*
  %g = getelementptr inbounds i8, i8* %call, i64 24
  %1 = bitcast i8* %g to <2 x %struct.bignum_st*>*
  store <2 x %struct.bignum_st*> zeroinitializer, <2 x %struct.bignum_st*>* %1, align 8, !tbaa !12
  %s = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %s to <2 x %struct.bignum_st*>*
  store <2 x %struct.bignum_st*> zeroinitializer, <2 x %struct.bignum_st*>* %2, align 8, !tbaa !12
  %id = bitcast i8* %call to i8**
  store i8* null, i8** %id, align 8, !tbaa !10
  %info = getelementptr inbounds i8, i8* %call, i64 40
  %3 = bitcast i8* %info to i8**
  store i8* null, i8** %3, align 8, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.SRP_user_pwd_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.SRP_user_pwd_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SRP_user_pwd_set_gN(%struct.SRP_user_pwd_st* nocapture noundef writeonly %vinfo, %struct.bignum_st* noundef %g, %struct.bignum_st* noundef %N) local_unnamed_addr #3 {
entry:
  %N1 = getelementptr inbounds %struct.SRP_user_pwd_st, %struct.SRP_user_pwd_st* %vinfo, i64 0, i32 4
  store %struct.bignum_st* %N, %struct.bignum_st** %N1, align 8, !tbaa !13
  %g2 = getelementptr inbounds %struct.SRP_user_pwd_st, %struct.SRP_user_pwd_st* %vinfo, i64 0, i32 3
  store %struct.bignum_st* %g, %struct.bignum_st** %g2, align 8, !tbaa !14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @SRP_user_pwd_set1_ids(%struct.SRP_user_pwd_st* nocapture noundef %vinfo, i8* noundef %id, i8* noundef %info) local_unnamed_addr #0 {
entry:
  %id1 = getelementptr inbounds %struct.SRP_user_pwd_st, %struct.SRP_user_pwd_st* %vinfo, i64 0, i32 0
  %0 = load i8*, i8** %id1, align 8, !tbaa !10
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 217) #7
  %info2 = getelementptr inbounds %struct.SRP_user_pwd_st, %struct.SRP_user_pwd_st* %vinfo, i64 0, i32 5
  %1 = load i8*, i8** %info2, align 8, !tbaa !11
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 218) #7
  %cmp.not = icmp eq i8* %id, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %id, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 219) #7
  store i8* %call, i8** %id1, align 8, !tbaa !10
  %cmp4 = icmp eq i8* %call, null
  br i1 %cmp4, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %cmp5 = icmp eq i8* %info, null
  br i1 %cmp5, label %return, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %call6 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %info, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 221) #7
  store i8* %call6, i8** %info2, align 8, !tbaa !11
  %cmp8 = icmp ne i8* %call6, null
  %phi.cast = zext i1 %cmp8 to i32
  br label %return

return:                                           ; preds = %if.end, %lor.rhs, %land.lhs.true
  %retval.0 = phi i32 [ 0, %land.lhs.true ], [ 1, %if.end ], [ %phi.cast, %lor.rhs ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SRP_user_pwd_set0_sv(%struct.SRP_user_pwd_st* nocapture noundef %vinfo, %struct.bignum_st* noundef %s, %struct.bignum_st* noundef %v) local_unnamed_addr #0 {
entry:
  %s1 = getelementptr inbounds %struct.SRP_user_pwd_st, %struct.SRP_user_pwd_st* %vinfo, i64 0, i32 1
  %0 = load %struct.bignum_st*, %struct.bignum_st** %s1, align 8, !tbaa !4
  tail call void @BN_free(%struct.bignum_st* noundef %0) #7
  %v2 = getelementptr inbounds %struct.SRP_user_pwd_st, %struct.SRP_user_pwd_st* %vinfo, i64 0, i32 2
  %1 = load %struct.bignum_st*, %struct.bignum_st** %v2, align 8, !tbaa !9
  tail call void @BN_clear_free(%struct.bignum_st* noundef %1) #7
  store %struct.bignum_st* %v, %struct.bignum_st** %v2, align 8, !tbaa !9
  store %struct.bignum_st* %s, %struct.bignum_st** %s1, align 8, !tbaa !4
  %cmp.not = icmp ne %struct.bignum_st* %s, null
  %cmp7 = icmp ne %struct.bignum_st* %v, null
  %narrow = and i1 %cmp.not, %cmp7
  %2 = zext i1 %narrow to i32
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define %struct.SRP_VBASE_st* @SRP_VBASE_new(i8* noundef %seed_key) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 40, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 280) #7
  %0 = bitcast i8* %call to %struct.SRP_VBASE_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #7
  %users_pwd = bitcast i8* %call to %struct.stack_st_SRP_user_pwd**
  %1 = bitcast i8* %call to %struct.stack_st**
  store %struct.stack_st* %call1, %struct.stack_st** %1, align 8, !tbaa !15
  %cmp2 = icmp eq %struct.stack_st* %call1, null
  br i1 %cmp2, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #7
  %gN_cache = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %gN_cache to %struct.stack_st_SRP_gN_cache**
  %3 = bitcast i8* %gN_cache to %struct.stack_st**
  store %struct.stack_st* %call3, %struct.stack_st** %3, align 8, !tbaa !17
  %cmp4 = icmp eq %struct.stack_st* %call3, null
  br i1 %cmp4, label %cleanup.sink.split, label %if.end6

if.end6:                                          ; preds = %lor.lhs.false
  %default_g = getelementptr inbounds i8, i8* %call, i64 24
  %4 = bitcast i8* %default_g to <2 x %struct.bignum_st*>*
  store <2 x %struct.bignum_st*> zeroinitializer, <2 x %struct.bignum_st*>* %4, align 8, !tbaa !12
  %seed_key7 = getelementptr inbounds i8, i8* %call, i64 16
  %5 = bitcast i8* %seed_key7 to i8**
  store i8* null, i8** %5, align 8, !tbaa !18
  %cmp8.not = icmp eq i8* %seed_key, null
  br i1 %cmp8.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end6
  %call9 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %seed_key, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 292) #7
  store i8* %call9, i8** %5, align 8, !tbaa !18
  %cmp11 = icmp eq i8* %call9, null
  br i1 %cmp11, label %if.then12, label %cleanup

if.then12:                                        ; preds = %land.lhs.true
  %6 = load %struct.stack_st_SRP_user_pwd*, %struct.stack_st_SRP_user_pwd** %users_pwd, align 8, !tbaa !15
  %call14 = tail call fastcc %struct.stack_st* @ossl_check_SRP_user_pwd_sk_type(%struct.stack_st_SRP_user_pwd* noundef %6) #8
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call14) #7
  %7 = load %struct.stack_st_SRP_gN_cache*, %struct.stack_st_SRP_gN_cache** %2, align 8, !tbaa !17
  %call16 = tail call fastcc %struct.stack_st* @ossl_check_SRP_gN_cache_sk_type(%struct.stack_st_SRP_gN_cache* noundef %7) #8
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call16) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %lor.lhs.false, %if.then12
  %.sink = phi i32 [ 295, %if.then12 ], [ 286, %lor.lhs.false ], [ 286, %if.end ]
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6, %land.lhs.true, %entry
  %retval.0 = phi %struct.SRP_VBASE_st* [ null, %entry ], [ %0, %land.lhs.true ], [ %0, %if.end6 ], [ null, %cleanup.sink.split ]
  ret %struct.SRP_VBASE_st* %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_SRP_user_pwd_sk_type(%struct.stack_st_SRP_user_pwd* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_SRP_user_pwd* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_SRP_gN_cache_sk_type(%struct.stack_st_SRP_gN_cache* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_SRP_gN_cache* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @SRP_VBASE_free(%struct.SRP_VBASE_st* noundef %vb) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.SRP_VBASE_st* %vb, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %users_pwd = getelementptr inbounds %struct.SRP_VBASE_st, %struct.SRP_VBASE_st* %vb, i64 0, i32 0
  %0 = load %struct.stack_st_SRP_user_pwd*, %struct.stack_st_SRP_user_pwd** %users_pwd, align 8, !tbaa !15
  %call = tail call fastcc %struct.stack_st* @ossl_check_SRP_user_pwd_sk_type(%struct.stack_st_SRP_user_pwd* noundef %0) #8
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.SRP_user_pwd_st*)* @SRP_user_pwd_free to void (i8*)*)) #7
  %gN_cache = getelementptr inbounds %struct.SRP_VBASE_st, %struct.SRP_VBASE_st* %vb, i64 0, i32 1
  %1 = load %struct.stack_st_SRP_gN_cache*, %struct.stack_st_SRP_gN_cache** %gN_cache, align 8, !tbaa !17
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_SRP_gN_cache_sk_type(%struct.stack_st_SRP_gN_cache* noundef %1) #8
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call2) #7
  %seed_key = getelementptr inbounds %struct.SRP_VBASE_st, %struct.SRP_VBASE_st* %vb, i64 0, i32 2
  %2 = load i8*, i8** %seed_key, align 8, !tbaa !18
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 307) #7
  %3 = bitcast %struct.SRP_VBASE_st* %vb to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 308) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SRP_VBASE_init(%struct.SRP_VBASE_st* nocapture noundef %vb, i8* noundef %verifier_file) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #7
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_SRP_gN*
  %call1 = tail call %struct.bio_method_st* @BIO_s_file() #7
  %call2 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call1) #7
  %cmp = icmp eq %struct.bio_st* %call2, null
  br i1 %cmp, label %if.end114, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call2, i32 noundef 108, i64 noundef 3, i8* noundef %verifier_file) #7
  %conv = trunc i64 %call3 to i32
  %cmp4 = icmp slt i32 %conv, 1
  br i1 %cmp4, label %if.end114, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call6 = tail call %struct.txt_db_st* @TXT_DB_read(%struct.bio_st* noundef nonnull %call2, i32 noundef 6) #7
  %cmp7 = icmp eq %struct.txt_db_st* %call6, null
  br i1 %cmp7, label %if.end114, label %if.end10

if.end10:                                         ; preds = %if.end
  %seed_key = getelementptr inbounds %struct.SRP_VBASE_st, %struct.SRP_VBASE_st* %vb, i64 0, i32 2
  %1 = load i8*, i8** %seed_key, align 8, !tbaa !18
  %tobool.not = icmp eq i8* %1, null
  br i1 %tobool.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end10
  %call12 = tail call %struct.SRP_gN_st* @SRP_get_default_gN(i8* noundef null) #7
  %id = getelementptr inbounds %struct.SRP_gN_st, %struct.SRP_gN_st* %call12, i64 0, i32 0
  %2 = load i8*, i8** %id, align 8, !tbaa !19
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end10
  %last_index.0 = phi i8* [ %2, %if.then11 ], [ null, %if.end10 ]
  %data = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %call6, i64 0, i32 1
  %3 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data, align 8, !tbaa !21
  %call14192 = tail call fastcc i32 @sk_OPENSSL_PSTRING_num(%struct.stack_st_OPENSSL_PSTRING* noundef %3) #8
  %cmp15193 = icmp sgt i32 %call14192, 0
  br i1 %cmp15193, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end13
  %users_pwd = getelementptr inbounds %struct.SRP_VBASE_st, %struct.SRP_VBASE_st* %vb, i64 0, i32 0
  %gN_cache = getelementptr inbounds %struct.SRP_VBASE_st, %struct.SRP_VBASE_st* %vb, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %error_code.0196 = phi i32 [ 4, %for.body.lr.ph ], [ %error_code.3, %for.inc ]
  %last_index.1195 = phi i8* [ %last_index.0, %for.body.lr.ph ], [ %last_index.2, %for.inc ]
  %i.0194 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %4 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data, align 8, !tbaa !21
  %call18 = tail call fastcc i8** @sk_OPENSSL_PSTRING_value(%struct.stack_st_OPENSSL_PSTRING* noundef %4, i32 noundef %i.0194) #8
  %5 = load i8*, i8** %call18, align 8, !tbaa !12
  %6 = load i8, i8* %5, align 1, !tbaa !25
  switch i8 %6, label %for.inc [
    i8 73, label %if.then23
    i8 86, label %if.then64
  ]

if.then23:                                        ; preds = %for.body
  %call24 = tail call i8* @CRYPTO_malloc(i64 noundef 24, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 430) #7
  %cmp25 = icmp eq i8* %call24, null
  br i1 %cmp25, label %if.end114, label %if.end28

if.end28:                                         ; preds = %if.then23
  %arrayidx29 = getelementptr inbounds i8*, i8** %call18, i64 3
  %7 = load i8*, i8** %arrayidx29, align 8, !tbaa !12
  %call30 = tail call i8* @CRYPTO_strdup(i8* noundef %7, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 433) #7
  %id31 = bitcast i8* %call24 to i8**
  store i8* %call30, i8** %id31, align 8, !tbaa !19
  %cmp32 = icmp eq i8* %call30, null
  br i1 %cmp32, label %if.then112, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.end28
  %8 = load %struct.stack_st_SRP_gN_cache*, %struct.stack_st_SRP_gN_cache** %gN_cache, align 8, !tbaa !17
  %arrayidx35 = getelementptr inbounds i8*, i8** %call18, i64 1
  %9 = load i8*, i8** %arrayidx35, align 8, !tbaa !12
  %call36 = tail call fastcc %struct.bignum_st* @SRP_gN_place_bn(%struct.stack_st_SRP_gN_cache* noundef %8, i8* noundef %9) #8
  %N = getelementptr inbounds i8, i8* %call24, i64 16
  %10 = bitcast i8* %N to %struct.bignum_st**
  store %struct.bignum_st* %call36, %struct.bignum_st** %10, align 8, !tbaa !26
  %cmp37 = icmp eq %struct.bignum_st* %call36, null
  br i1 %cmp37, label %if.then112, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false34
  %11 = load %struct.stack_st_SRP_gN_cache*, %struct.stack_st_SRP_gN_cache** %gN_cache, align 8, !tbaa !17
  %arrayidx41 = getelementptr inbounds i8*, i8** %call18, i64 2
  %12 = load i8*, i8** %arrayidx41, align 8, !tbaa !12
  %call42 = tail call fastcc %struct.bignum_st* @SRP_gN_place_bn(%struct.stack_st_SRP_gN_cache* noundef %11, i8* noundef %12) #8
  %g = getelementptr inbounds i8, i8* %call24, i64 8
  %13 = bitcast i8* %g to %struct.bignum_st**
  store %struct.bignum_st* %call42, %struct.bignum_st** %13, align 8, !tbaa !27
  %cmp43 = icmp eq %struct.bignum_st* %call42, null
  br i1 %cmp43, label %if.then112, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false39
  %call46 = tail call fastcc %struct.stack_st* @ossl_check_SRP_gN_sk_type(%struct.stack_st_SRP_gN* noundef %0) #8
  %call48 = tail call i32 @OPENSSL_sk_insert(%struct.stack_st* noundef %call46, i8* noundef nonnull %call24, i32 noundef 0) #7
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then112, label %if.end52

if.end52:                                         ; preds = %lor.lhs.false45
  %14 = load i8*, i8** %seed_key, align 8, !tbaa !18
  %cmp54.not = icmp eq i8* %14, null
  br i1 %cmp54.not, label %for.inc, label %if.then56

if.then56:                                        ; preds = %if.end52
  %15 = load i8*, i8** %arrayidx29, align 8, !tbaa !12
  br label %for.inc

if.then64:                                        ; preds = %for.body
  %arrayidx65 = getelementptr inbounds i8*, i8** %call18, i64 4
  %16 = load i8*, i8** %arrayidx65, align 8, !tbaa !12
  %call66 = tail call fastcc %struct.SRP_gN_st* @SRP_get_gN_by_id(i8* noundef %16, %struct.stack_st_SRP_gN* noundef %0) #8
  %cmp67.not = icmp eq %struct.SRP_gN_st* %call66, null
  br i1 %cmp67.not, label %for.inc, label %if.then69

if.then69:                                        ; preds = %if.then64
  %call70 = tail call %struct.SRP_user_pwd_st* @SRP_user_pwd_new() #8
  %cmp71 = icmp eq %struct.SRP_user_pwd_st* %call70, null
  br i1 %cmp71, label %if.end114, label %if.end74

if.end74:                                         ; preds = %if.then69
  %g75 = getelementptr inbounds %struct.SRP_gN_st, %struct.SRP_gN_st* %call66, i64 0, i32 1
  %17 = load %struct.bignum_st*, %struct.bignum_st** %g75, align 8, !tbaa !27
  %N76 = getelementptr inbounds %struct.SRP_gN_st, %struct.SRP_gN_st* %call66, i64 0, i32 2
  %18 = load %struct.bignum_st*, %struct.bignum_st** %N76, align 8, !tbaa !26
  tail call void @SRP_user_pwd_set_gN(%struct.SRP_user_pwd_st* noundef nonnull %call70, %struct.bignum_st* noundef %17, %struct.bignum_st* noundef %18) #8
  %arrayidx77 = getelementptr inbounds i8*, i8** %call18, i64 3
  %19 = load i8*, i8** %arrayidx77, align 8, !tbaa !12
  %arrayidx78 = getelementptr inbounds i8*, i8** %call18, i64 5
  %20 = load i8*, i8** %arrayidx78, align 8, !tbaa !12
  %call79 = tail call i32 @SRP_user_pwd_set1_ids(%struct.SRP_user_pwd_st* noundef nonnull %call70, i8* noundef %19, i8* noundef %20) #8
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end114, label %if.end82

if.end82:                                         ; preds = %if.end74
  %arrayidx83 = getelementptr inbounds i8*, i8** %call18, i64 2
  %21 = load i8*, i8** %arrayidx83, align 8, !tbaa !12
  %arrayidx84 = getelementptr inbounds i8*, i8** %call18, i64 1
  %22 = load i8*, i8** %arrayidx84, align 8, !tbaa !12
  %call85 = tail call fastcc i32 @SRP_user_pwd_set_sv(%struct.SRP_user_pwd_st* noundef nonnull %call70, i8* noundef %21, i8* noundef %22) #8
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end114, label %if.end88

if.end88:                                         ; preds = %if.end82
  %23 = load %struct.stack_st_SRP_user_pwd*, %struct.stack_st_SRP_user_pwd** %users_pwd, align 8, !tbaa !15
  %call89 = tail call fastcc %struct.stack_st* @ossl_check_SRP_user_pwd_sk_type(%struct.stack_st_SRP_user_pwd* noundef %23) #8
  %24 = bitcast %struct.SRP_user_pwd_st* %call70 to i8*
  %call91 = tail call i32 @OPENSSL_sk_insert(%struct.stack_st* noundef %call89, i8* noundef nonnull %24, i32 noundef 0) #7
  %cmp92 = icmp eq i32 %call91, 0
  br i1 %cmp92, label %if.end114, label %for.inc

for.inc:                                          ; preds = %if.end88, %if.then64, %for.body, %if.then56, %if.end52
  %last_index.2 = phi i8* [ %15, %if.then56 ], [ %last_index.1195, %if.end52 ], [ %last_index.1195, %for.body ], [ %last_index.1195, %if.then64 ], [ %last_index.1195, %if.end88 ]
  %error_code.3 = phi i32 [ %error_code.0196, %if.then56 ], [ %error_code.0196, %if.end52 ], [ %error_code.0196, %for.body ], [ %error_code.0196, %if.then64 ], [ 2, %if.end88 ]
  %inc = add nuw nsw i32 %i.0194, 1
  %25 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data, align 8, !tbaa !21
  %call14 = tail call fastcc i32 @sk_OPENSSL_PSTRING_num(%struct.stack_st_OPENSSL_PSTRING* noundef %25) #8
  %cmp15 = icmp slt i32 %inc, %call14
  br i1 %cmp15, label %for.body, label %for.end, !llvm.loop !28

for.end:                                          ; preds = %for.inc, %if.end13
  %last_index.1.lcssa = phi i8* [ %last_index.0, %if.end13 ], [ %last_index.2, %for.inc ]
  %cmp99.not = icmp eq i8* %last_index.1.lcssa, null
  br i1 %cmp99.not, label %if.end114, label %if.then101

if.then101:                                       ; preds = %for.end
  %call102 = tail call fastcc %struct.SRP_gN_st* @SRP_get_gN_by_id(i8* noundef nonnull %last_index.1.lcssa, %struct.stack_st_SRP_gN* noundef %0) #8
  %cmp103 = icmp eq %struct.SRP_gN_st* %call102, null
  br i1 %cmp103, label %if.end114, label %if.end106

if.end106:                                        ; preds = %if.then101
  %g107 = getelementptr inbounds %struct.SRP_gN_st, %struct.SRP_gN_st* %call102, i64 0, i32 1
  %default_g = getelementptr inbounds %struct.SRP_VBASE_st, %struct.SRP_VBASE_st* %vb, i64 0, i32 3
  %26 = bitcast %struct.bignum_st** %g107 to <2 x %struct.bignum_st*>*
  %27 = load <2 x %struct.bignum_st*>, <2 x %struct.bignum_st*>* %26, align 8, !tbaa !12
  %28 = bitcast %struct.bignum_st** %default_g to <2 x %struct.bignum_st*>*
  store <2 x %struct.bignum_st*> %27, <2 x %struct.bignum_st*>* %28, align 8, !tbaa !12
  br label %if.end114

if.then112:                                       ; preds = %lor.lhs.false45, %lor.lhs.false39, %lor.lhs.false34, %if.end28
  %id31.le = bitcast i8* %call24 to i8**
  %29 = load i8*, i8** %id31.le, align 8, !tbaa !19
  tail call void @CRYPTO_free(i8* noundef %29, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 492) #7
  tail call void @CRYPTO_free(i8* noundef nonnull %call24, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 493) #7
  br label %if.end114

if.end114:                                        ; preds = %if.end88, %if.end82, %if.end74, %if.then69, %if.then23, %for.end, %if.end106, %if.then101, %if.end, %lor.lhs.false, %entry, %if.then112
  %error_code.4187 = phi i32 [ %error_code.0196, %if.then112 ], [ 0, %for.end ], [ 0, %if.end106 ], [ 2, %if.then101 ], [ 1, %if.end ], [ 3, %lor.lhs.false ], [ 3, %entry ], [ 4, %if.then69 ], [ 4, %if.end74 ], [ 2, %if.end82 ], [ 2, %if.end88 ], [ %error_code.0196, %if.then23 ]
  %tmpdb.0186 = phi %struct.txt_db_st* [ %call6, %if.then112 ], [ %call6, %for.end ], [ %call6, %if.end106 ], [ %call6, %if.then101 ], [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %if.then23 ], [ %call6, %if.then69 ], [ %call6, %if.end74 ], [ %call6, %if.end82 ], [ %call6, %if.end88 ]
  %user_pwd.4185 = phi %struct.SRP_user_pwd_st* [ null, %if.then112 ], [ null, %for.end ], [ null, %if.end106 ], [ null, %if.then101 ], [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.then69 ], [ %call70, %if.end74 ], [ %call70, %if.end82 ], [ %call70, %if.end88 ], [ null, %if.then23 ]
  tail call void @SRP_user_pwd_free(%struct.SRP_user_pwd_st* noundef %user_pwd.4185) #8
  tail call void @TXT_DB_free(%struct.txt_db_st* noundef %tmpdb.0186) #7
  tail call void @BIO_free_all(%struct.bio_st* noundef %call2) #7
  %call115 = tail call fastcc %struct.stack_st* @ossl_check_SRP_gN_sk_type(%struct.stack_st_SRP_gN* noundef %0) #8
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call115) #7
  ret i32 %error_code.4187
}

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare %struct.bio_method_st* @BIO_s_file() local_unnamed_addr #1

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare %struct.txt_db_st* @TXT_DB_read(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.SRP_gN_st* @SRP_get_default_gN(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OPENSSL_PSTRING_num(%struct.stack_st_OPENSSL_PSTRING* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_PSTRING* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8** @sk_OPENSSL_PSTRING_value(%struct.stack_st_OPENSSL_PSTRING* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_PSTRING* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #7
  %1 = bitcast i8* %call to i8**
  ret i8** %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bignum_st* @SRP_gN_place_bn(%struct.stack_st_SRP_gN_cache* noundef %gN_cache, i8* noundef %ch) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_SRP_gN_cache* %gN_cache, null
  br i1 %cmp, label %cleanup22, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_SRP_gN_cache_sk_type(%struct.stack_st_SRP_gN_cache* noundef nonnull %gN_cache) #8
  %call141 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp242 = icmp sgt i32 %call141, 0
  br i1 %cmp242, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp2 = icmp slt i32 %inc, %call1
  br i1 %cmp2, label %for.body, label %for.end, !llvm.loop !30

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.043 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.043) #7
  %b64_bn = bitcast i8* %call4 to i8**
  %0 = load i8*, i8** %b64_bn, align 8, !tbaa !31
  %call5 = tail call i32 @strcmp(i8* noundef %0, i8* noundef %ch) #9
  %cmp6 = icmp eq i32 %call5, 0
  %inc = add nuw nsw i32 %i.043, 1
  br i1 %cmp6, label %cleanup.thread, label %for.cond

cleanup.thread:                                   ; preds = %for.body
  %bn = getelementptr inbounds i8, i8* %call4, i64 8
  %1 = bitcast i8* %bn to %struct.bignum_st**
  %2 = load %struct.bignum_st*, %struct.bignum_st** %1, align 8, !tbaa !33
  br label %cleanup22

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %call9 = tail call fastcc %struct.SRP_gN_cache_st* @SRP_gN_new_init(i8* noundef %ch) #8
  %tobool.not = icmp eq %struct.SRP_gN_cache_st* %call9, null
  br i1 %tobool.not, label %cleanup22, label %if.then10

if.then10:                                        ; preds = %for.end
  %call11 = tail call fastcc %struct.stack_st* @ossl_check_SRP_gN_cache_sk_type(%struct.stack_st_SRP_gN_cache* noundef nonnull %gN_cache) #8
  %3 = bitcast %struct.SRP_gN_cache_st* %call9 to i8*
  %call13 = tail call i32 @OPENSSL_sk_insert(%struct.stack_st* noundef %call11, i8* noundef nonnull %3, i32 noundef 0) #7
  %cmp14 = icmp sgt i32 %call13, 0
  br i1 %cmp14, label %cleanup19, label %if.end17

if.end17:                                         ; preds = %if.then10
  tail call fastcc void @SRP_gN_free(%struct.SRP_gN_cache_st* noundef nonnull %call9) #8
  br label %cleanup22

cleanup19:                                        ; preds = %if.then10
  %bn16 = getelementptr inbounds %struct.SRP_gN_cache_st, %struct.SRP_gN_cache_st* %call9, i64 0, i32 1
  %4 = load %struct.bignum_st*, %struct.bignum_st** %bn16, align 8, !tbaa !33
  br label %cleanup22

cleanup22:                                        ; preds = %cleanup19, %if.end17, %for.end, %cleanup.thread, %entry
  %retval.3 = phi %struct.bignum_st* [ null, %entry ], [ %2, %cleanup.thread ], [ %4, %cleanup19 ], [ null, %if.end17 ], [ null, %for.end ]
  ret %struct.bignum_st* %retval.3
}

declare i32 @OPENSSL_sk_insert(%struct.stack_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_SRP_gN_sk_type(%struct.stack_st_SRP_gN* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_SRP_gN* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.SRP_gN_st* @SRP_get_gN_by_id(i8* noundef %id, %struct.stack_st_SRP_gN* noundef %gN_tab) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.stack_st_SRP_gN* %gN_tab, null
  br i1 %cmp.not, label %if.end10, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_SRP_gN_sk_type(%struct.stack_st_SRP_gN* noundef nonnull %gN_tab) #8
  %call123 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp224 = icmp sgt i32 %call123, 0
  br i1 %cmp224, label %for.body.lr.ph, label %if.end10

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cmp5 = icmp eq i8* %id, null
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.025) #7
  %tobool.not = icmp eq i8* %call4, null
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  br i1 %cmp5, label %cleanup.loopexit, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %id6 = bitcast i8* %call4 to i8**
  %0 = load i8*, i8** %id6, align 8, !tbaa !19
  %call7 = tail call i32 @strcmp(i8* noundef %0, i8* noundef nonnull %id) #9
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %cleanup.loopexit, label %for.inc

for.inc:                                          ; preds = %for.body, %lor.lhs.false
  %inc = add nuw nsw i32 %i.025, 1
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp2 = icmp slt i32 %inc, %call1
  br i1 %cmp2, label %for.body, label %if.end10, !llvm.loop !34

if.end10:                                         ; preds = %for.inc, %for.cond.preheader, %entry
  %call11 = tail call %struct.SRP_gN_st* @SRP_get_default_gN(i8* noundef %id) #7
  br label %cleanup

cleanup.loopexit:                                 ; preds = %lor.lhs.false, %land.lhs.true
  %1 = bitcast i8* %call4 to %struct.SRP_gN_st*
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.end10
  %retval.0 = phi %struct.SRP_gN_st* [ %call11, %if.end10 ], [ %1, %cleanup.loopexit ]
  ret %struct.SRP_gN_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @SRP_user_pwd_set_sv(%struct.SRP_user_pwd_st* nocapture noundef %vinfo, i8* noundef %s, i8* noundef %v) unnamed_addr #0 {
entry:
  %tmp = alloca [2500 x i8], align 16
  %0 = getelementptr inbounds [2500 x i8], [2500 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2500, i8* nonnull %0) #10
  %v1 = getelementptr inbounds %struct.SRP_user_pwd_st, %struct.SRP_user_pwd_st* %vinfo, i64 0, i32 2
  %s2 = getelementptr inbounds %struct.SRP_user_pwd_st, %struct.SRP_user_pwd_st* %vinfo, i64 0, i32 1
  %1 = bitcast %struct.bignum_st** %s2 to <2 x %struct.bignum_st*>*
  store <2 x %struct.bignum_st*> zeroinitializer, <2 x %struct.bignum_st*>* %1, align 8, !tbaa !12
  %call = call fastcc i32 @t_fromb64(i8* noundef nonnull %0, i8* noundef %v) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call4 = call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %0, i32 noundef %call, %struct.bignum_st* noundef null) #7
  store %struct.bignum_st* %call4, %struct.bignum_st** %v1, align 8, !tbaa !9
  %cmp6 = icmp eq %struct.bignum_st* %call4, null
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  %call10 = call fastcc i32 @t_fromb64(i8* noundef nonnull %0, i8* noundef %s) #8
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %err, label %if.end13

if.end13:                                         ; preds = %if.end8
  %call15 = call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %0, i32 noundef %call10, %struct.bignum_st* noundef null) #7
  store %struct.bignum_st* %call15, %struct.bignum_st** %s2, align 8, !tbaa !4
  %cmp18 = icmp eq %struct.bignum_st* %call15, null
  br i1 %cmp18, label %err, label %cleanup

err:                                              ; preds = %if.end13, %if.end8
  %2 = load %struct.bignum_st*, %struct.bignum_st** %v1, align 8, !tbaa !9
  call void @BN_free(%struct.bignum_st* noundef %2) #7
  store %struct.bignum_st* null, %struct.bignum_st** %v1, align 8, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end, %entry, %err
  %retval.0 = phi i32 [ 0, %err ], [ 0, %entry ], [ 0, %if.end ], [ 1, %if.end13 ]
  call void @llvm.lifetime.end.p0i8(i64 2500, i8* nonnull %0) #10
  ret i32 %retval.0
}

declare void @TXT_DB_free(%struct.txt_db_st* noundef) local_unnamed_addr #1

declare void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SRP_VBASE_add0_user(%struct.SRP_VBASE_st* nocapture noundef readonly %vb, %struct.SRP_user_pwd_st* noundef %user_pwd) local_unnamed_addr #0 {
entry:
  %users_pwd = getelementptr inbounds %struct.SRP_VBASE_st, %struct.SRP_VBASE_st* %vb, i64 0, i32 0
  %0 = load %struct.stack_st_SRP_user_pwd*, %struct.stack_st_SRP_user_pwd** %users_pwd, align 8, !tbaa !15
  %call = tail call fastcc %struct.stack_st* @ossl_check_SRP_user_pwd_sk_type(%struct.stack_st_SRP_user_pwd* noundef %0) #8
  %1 = bitcast %struct.SRP_user_pwd_st* %user_pwd to i8*
  %call2 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call, i8* noundef %1) #7
  %cmp = icmp sgt i32 %call2, 0
  %. = zext i1 %cmp to i32
  ret i32 %.
}

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.SRP_user_pwd_st* @SRP_VBASE_get_by_user(%struct.SRP_VBASE_st* noundef %vb, i8* noundef %username) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.SRP_user_pwd_st* @find_user(%struct.SRP_VBASE_st* noundef %vb, i8* noundef %username) #8
  ret %struct.SRP_user_pwd_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.SRP_user_pwd_st* @find_user(%struct.SRP_VBASE_st* noundef readonly %vb, i8* noundef readonly %username) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.SRP_VBASE_st* %vb, null
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %users_pwd = getelementptr inbounds %struct.SRP_VBASE_st, %struct.SRP_VBASE_st* %vb, i64 0, i32 0
  %0 = load %struct.stack_st_SRP_user_pwd*, %struct.stack_st_SRP_user_pwd** %users_pwd, align 8, !tbaa !15
  %call18 = tail call fastcc %struct.stack_st* @ossl_check_const_SRP_user_pwd_sk_type(%struct.stack_st_SRP_user_pwd* noundef %0) #8
  %call119 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call18) #7
  %cmp220 = icmp sgt i32 %call119, 0
  br i1 %cmp220, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %1 = load %struct.stack_st_SRP_user_pwd*, %struct.stack_st_SRP_user_pwd** %users_pwd, align 8, !tbaa !15
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_SRP_user_pwd_sk_type(%struct.stack_st_SRP_user_pwd* noundef %1) #8
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp2 = icmp slt i32 %inc, %call1
  br i1 %cmp2, label %for.body, label %cleanup, !llvm.loop !35

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.021 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %2 = load %struct.stack_st_SRP_user_pwd*, %struct.stack_st_SRP_user_pwd** %users_pwd, align 8, !tbaa !15
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_const_SRP_user_pwd_sk_type(%struct.stack_st_SRP_user_pwd* noundef %2) #8
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call4, i32 noundef %i.021) #7
  %id = bitcast i8* %call5 to i8**
  %3 = load i8*, i8** %id, align 8, !tbaa !10
  %call6 = tail call i32 @strcmp(i8* noundef %3, i8* noundef %username) #9
  %cmp7 = icmp eq i32 %call6, 0
  %inc = add nuw nsw i32 %i.021, 1
  br i1 %cmp7, label %if.then8, label %for.cond

if.then8:                                         ; preds = %for.body
  %4 = bitcast i8* %call5 to %struct.SRP_user_pwd_st*
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %for.cond.preheader, %entry, %if.then8
  %retval.0 = phi %struct.SRP_user_pwd_st* [ %4, %if.then8 ], [ null, %entry ], [ null, %for.cond.preheader ], [ null, %for.cond ]
  ret %struct.SRP_user_pwd_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.SRP_user_pwd_st* @SRP_VBASE_get1_by_user(%struct.SRP_VBASE_st* noundef %vb, i8* noundef %username) local_unnamed_addr #0 {
entry:
  %digv = alloca [20 x i8], align 16
  %digs = alloca [20 x i8], align 16
  %0 = getelementptr inbounds [20 x i8], [20 x i8]* %digv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #10
  %1 = getelementptr inbounds [20 x i8], [20 x i8]* %digs, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %1) #10
  %cmp = icmp eq %struct.SRP_VBASE_st* %vb, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call fastcc %struct.SRP_user_pwd_st* @find_user(%struct.SRP_VBASE_st* noundef nonnull %vb, i8* noundef %username) #8
  %cmp1.not = icmp eq %struct.SRP_user_pwd_st* %call, null
  br i1 %cmp1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc %struct.SRP_user_pwd_st* @srp_user_pwd_dup(%struct.SRP_user_pwd_st* noundef nonnull %call) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %seed_key = getelementptr inbounds %struct.SRP_VBASE_st, %struct.SRP_VBASE_st* %vb, i64 0, i32 2
  %2 = load i8*, i8** %seed_key, align 8, !tbaa !18
  %cmp5 = icmp eq i8* %2, null
  br i1 %cmp5, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %default_g = getelementptr inbounds %struct.SRP_VBASE_st, %struct.SRP_VBASE_st* %vb, i64 0, i32 3
  %3 = load %struct.bignum_st*, %struct.bignum_st** %default_g, align 8, !tbaa !36
  %cmp6 = icmp eq %struct.bignum_st* %3, null
  br i1 %cmp6, label %cleanup, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %default_N = getelementptr inbounds %struct.SRP_VBASE_st, %struct.SRP_VBASE_st* %vb, i64 0, i32 4
  %4 = load %struct.bignum_st*, %struct.bignum_st** %default_N, align 8, !tbaa !37
  %cmp8 = icmp eq %struct.bignum_st* %4, null
  br i1 %cmp8, label %cleanup, label %if.end10

if.end10:                                         ; preds = %lor.lhs.false7
  %call11 = tail call %struct.SRP_user_pwd_st* @SRP_user_pwd_new() #8
  %cmp12 = icmp eq %struct.SRP_user_pwd_st* %call11, null
  br i1 %cmp12, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end10
  %5 = load %struct.bignum_st*, %struct.bignum_st** %default_g, align 8, !tbaa !36
  %6 = load %struct.bignum_st*, %struct.bignum_st** %default_N, align 8, !tbaa !37
  tail call void @SRP_user_pwd_set_gN(%struct.SRP_user_pwd_st* noundef nonnull %call11, %struct.bignum_st* noundef %5, %struct.bignum_st* noundef %6) #8
  %call17 = tail call i32 @SRP_user_pwd_set1_ids(%struct.SRP_user_pwd_st* noundef nonnull %call11, i8* noundef %username, i8* noundef null) #8
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %err, label %if.end19

if.end19:                                         ; preds = %if.end14
  %call20 = call i32 @RAND_priv_bytes(i8* noundef nonnull %0, i32 noundef 20) #7
  %cmp21 = icmp slt i32 %call20, 1
  br i1 %cmp21, label %err, label %if.end23

if.end23:                                         ; preds = %if.end19
  %call24 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef null) #7
  %cmp25 = icmp eq %struct.evp_md_st* %call24, null
  br i1 %cmp25, label %err, label %if.end27

if.end27:                                         ; preds = %if.end23
  %call28 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #7
  %cmp29 = icmp eq %struct.evp_md_ctx_st* %call28, null
  br i1 %cmp29, label %err, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %if.end27
  %call31 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call28, %struct.evp_md_st* noundef nonnull %call24, %struct.engine_st* noundef null) #7
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %7 = load i8*, i8** %seed_key, align 8, !tbaa !18
  %call36 = call i64 @strlen(i8* noundef %7) #9
  %call37 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call28, i8* noundef %7, i64 noundef %call36) #7
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false33
  %call40 = call i64 @strlen(i8* noundef %username) #9
  %call41 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call28, i8* noundef %username, i64 noundef %call40) #7
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false39
  %call45 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call28, i8* noundef nonnull %1, i32* noundef null) #7
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %err, label %if.end48

if.end48:                                         ; preds = %lor.lhs.false43
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call28) #7
  call void @EVP_MD_free(%struct.evp_md_st* noundef nonnull %call24) #7
  %call50 = call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %1, i32 noundef 20, %struct.bignum_st* noundef null) #7
  %call52 = call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %0, i32 noundef 20, %struct.bignum_st* noundef null) #7
  %call53 = call i32 @SRP_user_pwd_set0_sv(%struct.SRP_user_pwd_st* noundef nonnull %call11, %struct.bignum_st* noundef %call50, %struct.bignum_st* noundef %call52) #8
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %err, label %cleanup

err:                                              ; preds = %if.end48, %if.end27, %lor.lhs.false30, %lor.lhs.false33, %lor.lhs.false39, %lor.lhs.false43, %if.end23, %if.end19, %if.end14
  %ctxt.0 = phi %struct.evp_md_ctx_st* [ null, %if.end19 ], [ null, %if.end23 ], [ null, %if.end27 ], [ null, %if.end48 ], [ %call28, %lor.lhs.false43 ], [ %call28, %lor.lhs.false39 ], [ %call28, %lor.lhs.false33 ], [ %call28, %lor.lhs.false30 ], [ null, %if.end14 ]
  %md.0 = phi %struct.evp_md_st* [ null, %if.end19 ], [ null, %if.end23 ], [ %call24, %if.end27 ], [ null, %if.end48 ], [ %call24, %lor.lhs.false43 ], [ %call24, %lor.lhs.false39 ], [ %call24, %lor.lhs.false33 ], [ %call24, %lor.lhs.false30 ], [ null, %if.end14 ]
  call void @EVP_MD_free(%struct.evp_md_st* noundef %md.0) #7
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %ctxt.0) #7
  call void @SRP_user_pwd_free(%struct.SRP_user_pwd_st* noundef nonnull %call11) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end10, %if.end4, %lor.lhs.false, %lor.lhs.false7, %entry, %err, %if.then2
  %retval.0 = phi %struct.SRP_user_pwd_st* [ %call3, %if.then2 ], [ null, %err ], [ null, %entry ], [ null, %lor.lhs.false7 ], [ null, %lor.lhs.false ], [ null, %if.end4 ], [ null, %if.end10 ], [ %call11, %if.end48 ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #10
  ret %struct.SRP_user_pwd_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.SRP_user_pwd_st* @srp_user_pwd_dup(%struct.SRP_user_pwd_st* noundef readonly %src) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.SRP_user_pwd_st* %src, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.SRP_user_pwd_st* @SRP_user_pwd_new() #8
  %cmp1 = icmp eq %struct.SRP_user_pwd_st* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %g = getelementptr inbounds %struct.SRP_user_pwd_st, %struct.SRP_user_pwd_st* %src, i64 0, i32 3
  %0 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !14
  %N = getelementptr inbounds %struct.SRP_user_pwd_st, %struct.SRP_user_pwd_st* %src, i64 0, i32 4
  %1 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !13
  tail call void @SRP_user_pwd_set_gN(%struct.SRP_user_pwd_st* noundef nonnull %call, %struct.bignum_st* noundef %0, %struct.bignum_st* noundef %1) #8
  %id = getelementptr inbounds %struct.SRP_user_pwd_st, %struct.SRP_user_pwd_st* %src, i64 0, i32 0
  %2 = load i8*, i8** %id, align 8, !tbaa !10
  %info = getelementptr inbounds %struct.SRP_user_pwd_st, %struct.SRP_user_pwd_st* %src, i64 0, i32 5
  %3 = load i8*, i8** %info, align 8, !tbaa !11
  %call4 = tail call i32 @SRP_user_pwd_set1_ids(%struct.SRP_user_pwd_st* noundef nonnull %call, i8* noundef %2, i8* noundef %3) #8
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %s = getelementptr inbounds %struct.SRP_user_pwd_st, %struct.SRP_user_pwd_st* %src, i64 0, i32 1
  %4 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !4
  %call5 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %4) #7
  %v = getelementptr inbounds %struct.SRP_user_pwd_st, %struct.SRP_user_pwd_st* %src, i64 0, i32 2
  %5 = load %struct.bignum_st*, %struct.bignum_st** %v, align 8, !tbaa !9
  %call6 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %5) #7
  %call7 = tail call i32 @SRP_user_pwd_set0_sv(%struct.SRP_user_pwd_st* noundef nonnull %call, %struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %call6) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %cleanup

if.then9:                                         ; preds = %lor.lhs.false, %if.end3
  tail call void @SRP_user_pwd_free(%struct.SRP_user_pwd_st* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end, %entry, %if.then9
  %retval.0 = phi %struct.SRP_user_pwd_st* [ null, %if.then9 ], [ null, %entry ], [ null, %if.end ], [ %call, %lor.lhs.false ]
  ret %struct.SRP_user_pwd_st* %retval.0
}

declare i32 @RAND_priv_bytes(i8* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #1

declare i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #1

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #5

declare i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i8* @SRP_create_verifier_ex(i8* noundef %user, i8* noundef %pass, i8** noundef %salt, i8** noundef writeonly %verifier, i8* noundef %N, i8* noundef %g, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %s = alloca %struct.bignum_st*, align 8
  %v = alloca %struct.bignum_st*, align 8
  %tmp = alloca [2500 x i8], align 16
  %tmp2 = alloca [2500 x i8], align 16
  %0 = bitcast %struct.bignum_st** %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store %struct.bignum_st* null, %struct.bignum_st** %s, align 8, !tbaa !12
  %1 = bitcast %struct.bignum_st** %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #10
  store %struct.bignum_st* null, %struct.bignum_st** %v, align 8, !tbaa !12
  %2 = getelementptr inbounds [2500 x i8], [2500 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2500, i8* nonnull %2) #10
  %3 = getelementptr inbounds [2500 x i8], [2500 x i8]* %tmp2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2500, i8* nonnull %3) #10
  %cmp = icmp eq i8* %user, null
  %cmp1 = icmp eq i8* %pass, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i8** %salt, null
  %or.cond107 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i8** %verifier, null
  %or.cond108 = or i1 %or.cond107, %cmp5
  br i1 %or.cond108, label %err, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i8* %N, null
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %call = call fastcc i32 @t_fromb64(i8* noundef nonnull %2, i8* noundef nonnull %N) #8
  %cmp7 = icmp slt i32 %call, 1
  br i1 %cmp7, label %err, label %if.end9

if.end9:                                          ; preds = %if.then6
  %call11 = call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %2, i32 noundef %call, %struct.bignum_st* noundef null) #7
  %cmp12 = icmp eq %struct.bignum_st* %call11, null
  br i1 %cmp12, label %err, label %if.end14

if.end14:                                         ; preds = %if.end9
  %call16 = call fastcc i32 @t_fromb64(i8* noundef nonnull %2, i8* noundef %g) #8
  %cmp17 = icmp slt i32 %call16, 1
  br i1 %cmp17, label %err, label %if.end19

if.end19:                                         ; preds = %if.end14
  %call21 = call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %2, i32 noundef %call16, %struct.bignum_st* noundef null) #7
  %cmp22 = icmp eq %struct.bignum_st* %call21, null
  br i1 %cmp22, label %err, label %if.end31

if.else:                                          ; preds = %if.end
  %call25 = tail call %struct.SRP_gN_st* @SRP_get_default_gN(i8* noundef %g) #7
  %cmp26 = icmp eq %struct.SRP_gN_st* %call25, null
  br i1 %cmp26, label %err, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else
  %N29 = getelementptr inbounds %struct.SRP_gN_st, %struct.SRP_gN_st* %call25, i64 0, i32 2
  %4 = load %struct.bignum_st*, %struct.bignum_st** %N29, align 8, !tbaa !26
  %g30 = getelementptr inbounds %struct.SRP_gN_st, %struct.SRP_gN_st* %call25, i64 0, i32 1
  %5 = load %struct.bignum_st*, %struct.bignum_st** %g30, align 8, !tbaa !27
  %id = getelementptr inbounds %struct.SRP_gN_st, %struct.SRP_gN_st* %call25, i64 0, i32 0
  %6 = load i8*, i8** %id, align 8, !tbaa !19
  br label %if.end31

if.end31:                                         ; preds = %cleanup.thread, %if.end19
  %N_bn.1 = phi %struct.bignum_st* [ %call11, %if.end19 ], [ %4, %cleanup.thread ]
  %g_bn.1 = phi %struct.bignum_st* [ %call21, %if.end19 ], [ %5, %cleanup.thread ]
  %N_bn_alloc.0 = phi %struct.bignum_st* [ %call11, %if.end19 ], [ null, %cleanup.thread ]
  %g_bn_alloc.0 = phi %struct.bignum_st* [ %call21, %if.end19 ], [ null, %cleanup.thread ]
  %defgNid.1 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %if.end19 ], [ %6, %cleanup.thread ]
  %7 = load i8*, i8** %salt, align 8, !tbaa !12
  %cmp32 = icmp eq i8* %7, null
  br i1 %cmp32, label %if.then33, label %if.else41

if.then33:                                        ; preds = %if.end31
  %call35 = call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %3, i64 noundef 20, i32 noundef 0) #7
  %cmp36 = icmp slt i32 %call35, 1
  br i1 %cmp36, label %err, label %if.end49

if.else41:                                        ; preds = %if.end31
  %call43 = call fastcc i32 @t_fromb64(i8* noundef nonnull %3, i8* noundef nonnull %7) #8
  %cmp44 = icmp slt i32 %call43, 1
  br i1 %cmp44, label %err, label %if.end49

if.end49:                                         ; preds = %if.else41, %if.then33
  %call43.sink = phi i32 [ 20, %if.then33 ], [ %call43, %if.else41 ]
  %call48 = call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %3, i32 noundef %call43.sink, %struct.bignum_st* noundef null) #7
  store %struct.bignum_st* %call48, %struct.bignum_st** %s, align 8, !tbaa !12
  %cmp50 = icmp eq %struct.bignum_st* %call48, null
  br i1 %cmp50, label %err, label %if.end52

if.end52:                                         ; preds = %if.end49
  %call53 = call i32 @SRP_create_verifier_BN_ex(i8* noundef nonnull %user, i8* noundef nonnull %pass, %struct.bignum_st** noundef nonnull %s, %struct.bignum_st** noundef nonnull %v, %struct.bignum_st* noundef %N_bn.1, %struct.bignum_st* noundef %g_bn.1, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #8
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %err, label %if.end56

if.end56:                                         ; preds = %if.end52
  %8 = load %struct.bignum_st*, %struct.bignum_st** %v, align 8, !tbaa !12
  %call58 = call i32 @BN_bn2bin(%struct.bignum_st* noundef %8, i8* noundef nonnull %2) #7
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %err, label %if.end61

if.end61:                                         ; preds = %if.end56
  %9 = load %struct.bignum_st*, %struct.bignum_st** %v, align 8, !tbaa !12
  %call62 = call i32 @BN_num_bits(%struct.bignum_st* noundef %9) #7
  %add = add nsw i32 %call62, 7
  %div = sdiv i32 %add, 8
  %mul = shl nsw i32 %div, 1
  %conv = sext i32 %mul to i64
  %call63 = call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 667) #7
  %cmp64 = icmp eq i8* %call63, null
  br i1 %cmp64, label %err, label %if.end67

if.end67:                                         ; preds = %if.end61
  %10 = load %struct.bignum_st*, %struct.bignum_st** %v, align 8, !tbaa !12
  %call69 = call i32 @BN_num_bits(%struct.bignum_st* noundef %10) #7
  %add70 = add nsw i32 %call69, 7
  %div71 = sdiv i32 %add70, 8
  %call72 = call fastcc i32 @t_tob64(i8* noundef nonnull %call63, i8* noundef nonnull %2, i32 noundef %div71) #8
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err, label %if.end75

if.end75:                                         ; preds = %if.end67
  %11 = load i8*, i8** %salt, align 8, !tbaa !12
  %cmp76 = icmp eq i8* %11, null
  br i1 %cmp76, label %if.then78, label %if.end92

if.then78:                                        ; preds = %if.end75
  %call79 = call i8* @CRYPTO_malloc(i64 noundef 40, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 675) #7
  %cmp80 = icmp eq i8* %call79, null
  br i1 %cmp80, label %err, label %if.end83

if.end83:                                         ; preds = %if.then78
  %call85 = call fastcc i32 @t_tob64(i8* noundef nonnull %call79, i8* noundef nonnull %3, i32 noundef 20) #8
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then87, label %cleanup89

if.then87:                                        ; preds = %if.end83
  call void @CRYPTO_free(i8* noundef nonnull %call79, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 679) #7
  br label %err

cleanup89:                                        ; preds = %if.end83
  store i8* %call79, i8** %salt, align 8, !tbaa !12
  br label %if.end92

if.end92:                                         ; preds = %cleanup89, %if.end75
  store i8* %call63, i8** %verifier, align 8, !tbaa !12
  br label %err

err:                                              ; preds = %if.then78, %if.then87, %if.else, %if.end67, %if.end61, %if.end56, %if.end52, %if.end49, %if.else41, %if.then33, %if.end19, %if.end14, %if.end9, %if.then6, %entry, %if.end92
  %result.0 = phi i8* [ null, %entry ], [ null, %if.then6 ], [ null, %if.end9 ], [ null, %if.end14 ], [ null, %if.end19 ], [ null, %if.then33 ], [ null, %if.end49 ], [ null, %if.end56 ], [ null, %if.end61 ], [ %defgNid.1, %if.end92 ], [ null, %if.end67 ], [ null, %if.end52 ], [ null, %if.else41 ], [ null, %if.else ], [ null, %if.then87 ], [ null, %if.then78 ]
  %vf.0 = phi i8* [ null, %entry ], [ null, %if.then6 ], [ null, %if.end9 ], [ null, %if.end14 ], [ null, %if.end19 ], [ null, %if.then33 ], [ null, %if.end49 ], [ null, %if.end56 ], [ null, %if.end61 ], [ null, %if.end92 ], [ %call63, %if.end67 ], [ null, %if.end52 ], [ null, %if.else41 ], [ null, %if.else ], [ %call63, %if.then87 ], [ %call63, %if.then78 ]
  %N_bn_alloc.1 = phi %struct.bignum_st* [ null, %entry ], [ null, %if.then6 ], [ null, %if.end9 ], [ %call11, %if.end14 ], [ %call11, %if.end19 ], [ %N_bn_alloc.0, %if.then33 ], [ %N_bn_alloc.0, %if.end49 ], [ %N_bn_alloc.0, %if.end56 ], [ %N_bn_alloc.0, %if.end61 ], [ %N_bn_alloc.0, %if.end92 ], [ %N_bn_alloc.0, %if.end67 ], [ %N_bn_alloc.0, %if.end52 ], [ %N_bn_alloc.0, %if.else41 ], [ null, %if.else ], [ %N_bn_alloc.0, %if.then87 ], [ %N_bn_alloc.0, %if.then78 ]
  %g_bn_alloc.1 = phi %struct.bignum_st* [ null, %entry ], [ null, %if.then6 ], [ null, %if.end9 ], [ null, %if.end14 ], [ null, %if.end19 ], [ %g_bn_alloc.0, %if.then33 ], [ %g_bn_alloc.0, %if.end49 ], [ %g_bn_alloc.0, %if.end56 ], [ %g_bn_alloc.0, %if.end61 ], [ %g_bn_alloc.0, %if.end92 ], [ %g_bn_alloc.0, %if.end67 ], [ %g_bn_alloc.0, %if.end52 ], [ %g_bn_alloc.0, %if.else41 ], [ null, %if.else ], [ %g_bn_alloc.0, %if.then87 ], [ %g_bn_alloc.0, %if.then78 ]
  %vfsize.0 = phi i32 [ 0, %entry ], [ 0, %if.then6 ], [ 0, %if.end9 ], [ 0, %if.end14 ], [ 0, %if.end19 ], [ 0, %if.then33 ], [ 0, %if.end49 ], [ 0, %if.end56 ], [ %mul, %if.end61 ], [ %mul, %if.end92 ], [ %mul, %if.end67 ], [ 0, %if.end52 ], [ 0, %if.else41 ], [ 0, %if.else ], [ %mul, %if.then87 ], [ %mul, %if.then78 ]
  call void @BN_free(%struct.bignum_st* noundef %N_bn_alloc.1) #7
  call void @BN_free(%struct.bignum_st* noundef %g_bn_alloc.1) #7
  %conv93 = sext i32 %vfsize.0 to i64
  call void @CRYPTO_clear_free(i8* noundef %vf.0, i64 noundef %conv93, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 692) #7
  %12 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !12
  call void @BN_clear_free(%struct.bignum_st* noundef %12) #7
  %13 = load %struct.bignum_st*, %struct.bignum_st** %v, align 8, !tbaa !12
  call void @BN_clear_free(%struct.bignum_st* noundef %13) #7
  call void @llvm.lifetime.end.p0i8(i64 2500, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 2500, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i8* %result.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @t_fromb64(i8* noundef %a, i8* noundef %src) unnamed_addr #0 {
entry:
  %outl = alloca i32, align 4
  %outl2 = alloca i32, align 4
  %0 = bitcast i32* %outl to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %outl, align 4, !tbaa !38
  %1 = bitcast i32* %outl2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #10
  store i32 0, i32* %outl2, align 4, !tbaa !38
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %src.addr.0 = phi i8* [ %src, %entry ], [ %incdec.ptr, %while.body ]
  %2 = load i8, i8* %src.addr.0, align 1, !tbaa !25
  switch i8 %2, label %while.end [
    i8 32, label %while.body
    i8 9, label %while.body
    i8 10, label %while.body
  ]

while.body:                                       ; preds = %while.cond, %while.cond, %while.cond
  %incdec.ptr = getelementptr inbounds i8, i8* %src.addr.0, i64 1
  br label %while.cond, !llvm.loop !39

while.end:                                        ; preds = %while.cond
  %call = tail call i64 @strlen(i8* noundef nonnull %src.addr.0) #9
  %sub = sub i64 0, %call
  %and8 = and i64 %sub, 3
  %cmp9 = icmp ugt i64 %call, 2147483647
  br i1 %cmp9, label %cleanup, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %while.end
  %add = add nuw nsw i64 %and8, %call
  %div = lshr i64 %add, 2
  %mul = mul nuw nsw i64 %div, 3
  %cmp12 = icmp ugt i64 %mul, 2500
  br i1 %cmp12, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false11
  %call14 = tail call %struct.evp_Encode_Ctx_st* @EVP_ENCODE_CTX_new() #7
  %cmp15 = icmp eq %struct.evp_Encode_Ctx_st* %call14, null
  br i1 %cmp15, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end
  %cmp19 = icmp eq i64 %and8, 3
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  store i32 -1, i32* %outl, align 4, !tbaa !38
  br label %err

if.end22:                                         ; preds = %if.end18
  tail call void @EVP_DecodeInit(%struct.evp_Encode_Ctx_st* noundef nonnull %call14) #7
  tail call void @evp_encode_ctx_set_flags(%struct.evp_Encode_Ctx_st* noundef nonnull %call14, i32 noundef 2) #7
  %cmp23.not = icmp eq i64 %and8, 0
  br i1 %cmp23.not, label %if.end30, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end22
  %conv25 = trunc i64 %and8 to i32
  %call26 = call i32 @EVP_DecodeUpdate(%struct.evp_Encode_Ctx_st* noundef nonnull %call14, i8* noundef %a, i32* noundef nonnull %outl, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 noundef %conv25) #7
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %outl, align 4, !tbaa !38
  br label %err

if.end30:                                         ; preds = %land.lhs.true, %if.end22
  %conv31 = trunc i64 %call to i32
  %call32 = call i32 @EVP_DecodeUpdate(%struct.evp_Encode_Ctx_st* noundef nonnull %call14, i8* noundef %a, i32* noundef nonnull %outl2, i8* noundef nonnull %src.addr.0, i32 noundef %conv31) #7
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end30
  store i32 -1, i32* %outl, align 4, !tbaa !38
  br label %err

if.end36:                                         ; preds = %if.end30
  %3 = load i32, i32* %outl2, align 4, !tbaa !38
  %4 = load i32, i32* %outl, align 4, !tbaa !38
  %add37 = add nsw i32 %4, %3
  store i32 %add37, i32* %outl, align 4, !tbaa !38
  %idx.ext = sext i32 %add37 to i64
  %add.ptr = getelementptr inbounds i8, i8* %a, i64 %idx.ext
  %call38 = call i32 @EVP_DecodeFinal(%struct.evp_Encode_Ctx_st* noundef nonnull %call14, i8* noundef %add.ptr, i32* noundef nonnull %outl2) #7
  %5 = load i32, i32* %outl2, align 4, !tbaa !38
  %6 = load i32, i32* %outl, align 4, !tbaa !38
  %add39 = add nsw i32 %6, %5
  store i32 %add39, i32* %outl, align 4, !tbaa !38
  br i1 %cmp23.not, label %err, label %if.then42

if.then42:                                        ; preds = %if.end36
  %conv43 = trunc i64 %and8 to i32
  %cmp44.not = icmp sgt i32 %add39, %conv43
  br i1 %cmp44.not, label %if.end47, label %if.then46

if.then46:                                        ; preds = %if.then42
  store i32 -1, i32* %outl, align 4, !tbaa !38
  br label %err

if.end47:                                         ; preds = %if.then42
  %add.ptr48 = getelementptr inbounds i8, i8* %a, i64 %and8
  %conv49 = sext i32 %add39 to i64
  %sub50 = sub nsw i64 %conv49, %and8
  %call51 = call i8* @memmove(i8* noundef %a, i8* noundef nonnull %add.ptr48, i64 noundef %sub50) #7
  %7 = load i32, i32* %outl, align 4, !tbaa !38
  %conv54 = sub i32 %7, %conv43
  store i32 %conv54, i32* %outl, align 4, !tbaa !38
  br label %err

err:                                              ; preds = %if.end36, %if.end47, %if.then46, %if.then35, %if.then29, %if.then21
  call void @EVP_ENCODE_CTX_free(%struct.evp_Encode_Ctx_st* noundef nonnull %call14) #7
  %8 = load i32, i32* %outl, align 4, !tbaa !38
  br label %cleanup

cleanup:                                          ; preds = %if.end, %while.end, %lor.lhs.false11, %err
  %retval.0 = phi i32 [ %8, %err ], [ -1, %lor.lhs.false11 ], [ -1, %while.end ], [ -1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %retval.0
}

declare i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SRP_create_verifier_BN_ex(i8* noundef %user, i8* noundef %pass, %struct.bignum_st** noundef %salt, %struct.bignum_st** noundef writeonly %verifier, %struct.bignum_st* noundef %N, %struct.bignum_st* noundef %g, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %tmp2 = alloca [2500 x i8], align 16
  %call = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx) #7
  %0 = getelementptr inbounds [2500 x i8], [2500 x i8]* %tmp2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2500, i8* nonnull %0) #10
  %cmp = icmp eq i8* %user, null
  %cmp1 = icmp eq i8* %pass, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct.bignum_st** %salt, null
  %or.cond39 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq %struct.bignum_st** %verifier, null
  %or.cond40 = or i1 %or.cond39, %cmp5
  %cmp7 = icmp eq %struct.bignum_st* %N, null
  %or.cond41 = or i1 %or.cond40, %cmp7
  %cmp9 = icmp eq %struct.bignum_st* %g, null
  %or.cond42 = or i1 %or.cond41, %cmp9
  %cmp11 = icmp eq %struct.bignum_ctx* %call, null
  %or.cond43 = select i1 %or.cond42, i1 true, i1 %cmp11
  br i1 %or.cond43, label %err, label %if.end

if.end:                                           ; preds = %entry
  %1 = load %struct.bignum_st*, %struct.bignum_st** %salt, align 8, !tbaa !12
  %cmp12 = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp12, label %if.then13, label %if.end23

if.then13:                                        ; preds = %if.end
  %call14 = call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %0, i64 noundef 20, i32 noundef 0) #7
  %cmp15 = icmp slt i32 %call14, 1
  br i1 %cmp15, label %err, label %if.end17

if.end17:                                         ; preds = %if.then13
  %call19 = call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %0, i32 noundef 20, %struct.bignum_st* noundef null) #7
  %cmp20 = icmp eq %struct.bignum_st* %call19, null
  br i1 %cmp20, label %err, label %if.end23

if.end23:                                         ; preds = %if.end, %if.end17
  %salttmp.0 = phi %struct.bignum_st* [ %call19, %if.end17 ], [ %1, %if.end ]
  %call24 = call %struct.bignum_st* @SRP_Calc_x_ex(%struct.bignum_st* noundef nonnull %salttmp.0, i8* noundef nonnull %user, i8* noundef nonnull %pass, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #7
  %cmp25 = icmp eq %struct.bignum_st* %call24, null
  br i1 %cmp25, label %err, label %if.end27

if.end27:                                         ; preds = %if.end23
  %call28 = call %struct.bignum_st* @BN_new() #7
  %cmp29 = icmp eq %struct.bignum_st* %call28, null
  br i1 %cmp29, label %err, label %if.end31

if.end31:                                         ; preds = %if.end27
  %call32 = call i32 @BN_mod_exp(%struct.bignum_st* noundef nonnull %call28, %struct.bignum_st* noundef nonnull %g, %struct.bignum_st* noundef nonnull %call24, %struct.bignum_st* noundef nonnull %N, %struct.bignum_ctx* noundef nonnull %call) #7
  %tobool.not = icmp eq i32 %call32, 0
  br i1 %tobool.not, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end31
  call void @BN_clear_free(%struct.bignum_st* noundef nonnull %call28) #7
  br label %err

if.end34:                                         ; preds = %if.end31
  store %struct.bignum_st* %salttmp.0, %struct.bignum_st** %salt, align 8, !tbaa !12
  store %struct.bignum_st* %call28, %struct.bignum_st** %verifier, align 8, !tbaa !12
  br label %err

err:                                              ; preds = %if.end27, %if.end23, %if.end17, %if.then13, %entry, %if.end34, %if.then33
  %x.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %if.then13 ], [ null, %if.end17 ], [ null, %if.end23 ], [ %call24, %if.end27 ], [ %call24, %if.end34 ], [ %call24, %if.then33 ]
  %salttmp.1 = phi %struct.bignum_st* [ null, %entry ], [ null, %if.then13 ], [ null, %if.end17 ], [ %salttmp.0, %if.end23 ], [ %salttmp.0, %if.end27 ], [ %salttmp.0, %if.end34 ], [ %salttmp.0, %if.then33 ]
  %result.0 = phi i32 [ 0, %entry ], [ 0, %if.then13 ], [ 0, %if.end17 ], [ 0, %if.end23 ], [ 0, %if.end27 ], [ 1, %if.end34 ], [ 0, %if.then33 ]
  br i1 %cmp3, label %if.end38, label %land.lhs.true

land.lhs.true:                                    ; preds = %err
  %2 = load %struct.bignum_st*, %struct.bignum_st** %salt, align 8, !tbaa !12
  %cmp36.not = icmp eq %struct.bignum_st* %2, %salttmp.1
  br i1 %cmp36.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %land.lhs.true
  call void @BN_clear_free(%struct.bignum_st* noundef %salttmp.1) #7
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %land.lhs.true, %err
  call void @BN_clear_free(%struct.bignum_st* noundef %x.0) #7
  call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #7
  call void @llvm.lifetime.end.p0i8(i64 2500, i8* nonnull %0) #10
  ret i32 %result.0
}

declare i32 @BN_bn2bin(%struct.bignum_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @t_tob64(i8* noundef %dst, i8* noundef %src, i32 noundef %size) unnamed_addr #0 {
entry:
  %outl = alloca i32, align 4
  %outl2 = alloca i32, align 4
  %pad = alloca i16, align 2
  %call = tail call %struct.evp_Encode_Ctx_st* @EVP_ENCODE_CTX_new() #7
  %0 = bitcast i32* %outl to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %outl, align 4, !tbaa !38
  %1 = bitcast i32* %outl2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #10
  store i32 0, i32* %outl2, align 4, !tbaa !38
  %2 = bitcast i16* %pad to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %2) #10
  store i16 0, i16* %pad, align 2
  %cmp = icmp eq %struct.evp_Encode_Ctx_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @EVP_EncodeInit(%struct.evp_Encode_Ctx_st* noundef nonnull %call) #7
  tail call void @evp_encode_ctx_set_flags(%struct.evp_Encode_Ctx_st* noundef nonnull %call, i32 noundef 3) #7
  %rem = srem i32 %size, 3
  %sub = sub nsw i32 3, %rem
  %3 = zext i32 %sub to i64
  %cmp1.not = icmp eq i32 %rem, 0
  br i1 %cmp1.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call4 = call i32 @EVP_EncodeUpdate(%struct.evp_Encode_Ctx_st* noundef nonnull %call, i8* noundef %dst, i32* noundef nonnull %outl, i8* noundef nonnull %2, i32 noundef %sub) #7
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  %.pre = load i32, i32* %outl, align 4, !tbaa !38
  %phi.cast = sext i32 %.pre to i64
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end
  %4 = phi i64 [ %phi.cast, %land.lhs.true.if.end6_crit_edge ], [ 0, %if.end ]
  %add.ptr = getelementptr inbounds i8, i8* %dst, i64 %4
  %call7 = call i32 @EVP_EncodeUpdate(%struct.evp_Encode_Ctx_st* noundef nonnull %call, i8* noundef %add.ptr, i32* noundef nonnull %outl2, i8* noundef %src, i32 noundef %size) #7
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup.sink.split, label %if.end10

if.end10:                                         ; preds = %if.end6
  %5 = load i32, i32* %outl2, align 4, !tbaa !38
  %6 = load i32, i32* %outl, align 4, !tbaa !38
  %add = add nsw i32 %6, %5
  store i32 %add, i32* %outl, align 4, !tbaa !38
  %idx.ext11 = sext i32 %add to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %dst, i64 %idx.ext11
  call void @EVP_EncodeFinal(%struct.evp_Encode_Ctx_st* noundef nonnull %call, i8* noundef %add.ptr12, i32* noundef nonnull %outl2) #7
  %7 = load i32, i32* %outl2, align 4, !tbaa !38
  %8 = load i32, i32* %outl, align 4, !tbaa !38
  %add13 = add nsw i32 %8, %7
  store i32 %add13, i32* %outl, align 4, !tbaa !38
  br i1 %cmp1.not, label %cleanup.sink.split, label %if.then16

if.then16:                                        ; preds = %if.end10
  %add.ptr17 = getelementptr inbounds i8, i8* %dst, i64 %3
  %conv18 = sext i32 %add13 to i64
  %sub19 = sub nsw i64 %conv18, %3
  %call20 = call i8* @memmove(i8* noundef %dst, i8* noundef %add.ptr17, i64 noundef %sub19) #7
  %9 = load i32, i32* %outl, align 4, !tbaa !38
  %conv21 = sext i32 %9 to i64
  %sub22 = sub nsw i64 %conv21, %3
  %arrayidx = getelementptr inbounds i8, i8* %dst, i64 %sub22
  store i8 0, i8* %arrayidx, align 1, !tbaa !25
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end10, %if.then16, %if.end6, %land.lhs.true
  %retval.0.ph = phi i32 [ 0, %land.lhs.true ], [ 0, %if.end6 ], [ 1, %if.then16 ], [ 1, %if.end10 ]
  call void @EVP_ENCODE_CTX_free(%struct.evp_Encode_Ctx_st* noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %retval.0
}

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i8* @SRP_create_verifier(i8* noundef %user, i8* noundef %pass, i8** noundef %salt, i8** noundef %verifier, i8* noundef %N, i8* noundef %g) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @SRP_create_verifier_ex(i8* noundef %user, i8* noundef %pass, i8** noundef %salt, i8** noundef %verifier, i8* noundef %N, i8* noundef %g, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #8
  ret i8* %call
}

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @SRP_Calc_x_ex(%struct.bignum_st* noundef, i8* noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare i32 @BN_mod_exp(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SRP_create_verifier_BN(i8* noundef %user, i8* noundef %pass, %struct.bignum_st** noundef %salt, %struct.bignum_st** noundef %verifier, %struct.bignum_st* noundef %N, %struct.bignum_st* noundef %g) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @SRP_create_verifier_BN_ex(i8* noundef %user, i8* noundef %pass, %struct.bignum_st** noundef %salt, %struct.bignum_st** noundef %verifier, %struct.bignum_st* noundef %N, %struct.bignum_st* noundef %g, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #8
  ret i32 %call
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SRP_gN_cache_sk_type(%struct.stack_st_SRP_gN_cache* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_SRP_gN_cache* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.SRP_gN_cache_st* @SRP_gN_new_init(i8* noundef %ch) unnamed_addr #0 {
entry:
  %tmp = alloca [2500 x i8], align 16
  %0 = getelementptr inbounds [2500 x i8], [2500 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2500, i8* nonnull %0) #10
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 16, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 315) #7
  %1 = bitcast i8* %call to %struct.SRP_gN_cache_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @t_fromb64(i8* noundef nonnull %0, i8* noundef %ch) #8
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call i8* @CRYPTO_strdup(i8* noundef %ch, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 324) #7
  %b64_bn = bitcast i8* %call to i8**
  store i8* %call5, i8** %b64_bn, align 8, !tbaa !31
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call10 = call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %0, i32 noundef %call1, %struct.bignum_st* noundef null) #7
  %bn = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %bn to %struct.bignum_st**
  store %struct.bignum_st* %call10, %struct.bignum_st** %2, align 8, !tbaa !33
  %tobool.not = icmp eq %struct.bignum_st* %call10, null
  br i1 %tobool.not, label %if.end12, label %cleanup

if.end12:                                         ; preds = %if.end8
  %3 = load i8*, i8** %b64_bn, align 8, !tbaa !31
  call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 330) #7
  br label %err

err:                                              ; preds = %if.end4, %if.end, %if.end12
  call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 332) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry, %err
  %retval.0 = phi %struct.SRP_gN_cache_st* [ null, %err ], [ null, %entry ], [ %1, %if.end8 ]
  call void @llvm.lifetime.end.p0i8(i64 2500, i8* nonnull %0) #10
  ret %struct.SRP_gN_cache_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @SRP_gN_free(%struct.SRP_gN_cache_st* noundef %gN_cache) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.SRP_gN_cache_st* %gN_cache, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %b64_bn = getelementptr inbounds %struct.SRP_gN_cache_st, %struct.SRP_gN_cache_st* %gN_cache, i64 0, i32 0
  %0 = load i8*, i8** %b64_bn, align 8, !tbaa !31
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 340) #7
  %bn = getelementptr inbounds %struct.SRP_gN_cache_st, %struct.SRP_gN_cache_st* %gN_cache, i64 0, i32 1
  %1 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !33
  tail call void @BN_free(%struct.bignum_st* noundef %1) #7
  %2 = bitcast %struct.SRP_gN_cache_st* %gN_cache to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 342) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SRP_gN_sk_type(%struct.stack_st_SRP_gN* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_SRP_gN* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SRP_user_pwd_sk_type(%struct.stack_st_SRP_user_pwd* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_SRP_user_pwd* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.evp_Encode_Ctx_st* @EVP_ENCODE_CTX_new() local_unnamed_addr #1

declare void @EVP_DecodeInit(%struct.evp_Encode_Ctx_st* noundef) local_unnamed_addr #1

declare void @evp_encode_ctx_set_flags(%struct.evp_Encode_Ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_DecodeUpdate(%struct.evp_Encode_Ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_DecodeFinal(%struct.evp_Encode_Ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

declare void @EVP_ENCODE_CTX_free(%struct.evp_Encode_Ctx_st* noundef) local_unnamed_addr #1

declare void @EVP_EncodeInit(%struct.evp_Encode_Ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_EncodeUpdate(%struct.evp_Encode_Ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @EVP_EncodeFinal(%struct.evp_Encode_Ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 8}
!5 = !{!"SRP_user_pwd_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 16}
!10 = !{!5, !6, i64 0}
!11 = !{!5, !6, i64 40}
!12 = !{!6, !6, i64 0}
!13 = !{!5, !6, i64 32}
!14 = !{!5, !6, i64 24}
!15 = !{!16, !6, i64 0}
!16 = !{!"SRP_VBASE_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!17 = !{!16, !6, i64 8}
!18 = !{!16, !6, i64 16}
!19 = !{!20, !6, i64 0}
!20 = !{!"SRP_gN_st", !6, i64 0, !6, i64 8, !6, i64 16}
!21 = !{!22, !6, i64 8}
!22 = !{!"txt_db_st", !23, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !24, i64 32, !24, i64 40, !24, i64 48, !6, i64 56}
!23 = !{!"int", !7, i64 0}
!24 = !{!"long", !7, i64 0}
!25 = !{!7, !7, i64 0}
!26 = !{!20, !6, i64 16}
!27 = !{!20, !6, i64 8}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = distinct !{!30, !29}
!31 = !{!32, !6, i64 0}
!32 = !{!"SRP_gN_cache_st", !6, i64 0, !6, i64 8}
!33 = !{!32, !6, i64 8}
!34 = distinct !{!34, !29}
!35 = distinct !{!35, !29}
!36 = !{!16, !6, i64 24}
!37 = !{!16, !6, i64 32}
!38 = !{!23, !23, i64 0}
!39 = distinct !{!39, !29}
