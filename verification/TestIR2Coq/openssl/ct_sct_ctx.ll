; ModuleID = 'crypto/ct/ct_sct_ctx.c'
source_filename = "crypto/ct/ct_sct_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sct_ctx_st = type { %struct.evp_pkey_st*, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i64, %struct.ossl_lib_ctx_st*, i8* }
%struct.evp_pkey_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.x509_st = type opaque
%struct.X509_extension_st = type opaque
%struct.X509_name_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.X509_pubkey_st = type opaque
%struct.evp_md_st = type opaque
%struct.engine_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/ct/ct_sct_ctx.c\00", align 1
@__func__.SCT_CTX_new = private unnamed_addr constant [12 x i8] c"SCT_CTX_new\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"SHA2-256\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.sct_ctx_st* @SCT_CTX_new(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 96, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 25) #4
  %0 = bitcast i8* %call to %struct.sct_ctx_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 28, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.SCT_CTX_new, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %libctx1 = getelementptr inbounds i8, i8* %call, i64 80
  %1 = bitcast i8* %libctx1 to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %1, align 8, !tbaa !4
  %cmp2.not = icmp eq i8* %propq, null
  br i1 %cmp2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %propq, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 34) #4
  %propq5 = getelementptr inbounds i8, i8* %call, i64 88
  %2 = bitcast i8* %propq5 to i8**
  store i8* %call4, i8** %2, align 8, !tbaa !10
  %cmp7 = icmp eq i8* %call4, null
  br i1 %cmp7, label %if.then8, label %cleanup

if.then8:                                         ; preds = %if.then3
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.SCT_CTX_new, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 786688, i8* noundef null) #4
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 37) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %if.then8, %if.then
  %retval.0 = phi %struct.sct_ctx_st* [ null, %if.then ], [ null, %if.then8 ], [ %0, %if.then3 ], [ %0, %if.end ]
  ret %struct.sct_ctx_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @SCT_CTX_free(%struct.sct_ctx_st* noundef %sctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.sct_ctx_st* %sctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %pkey = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 0
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !11
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %0) #4
  %pkeyhash = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 1
  %1 = load i8*, i8** %pkeyhash, align 8, !tbaa !12
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 50) #4
  %ihash = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 3
  %2 = load i8*, i8** %ihash, align 8, !tbaa !13
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 51) #4
  %certder = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 5
  %3 = load i8*, i8** %certder, align 8, !tbaa !14
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 52) #4
  %preder = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 7
  %4 = load i8*, i8** %preder, align 8, !tbaa !15
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 53) #4
  %propq = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 11
  %5 = load i8*, i8** %propq, align 8, !tbaa !10
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 54) #4
  %6 = bitcast %struct.sct_ctx_st* %sctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %6, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 55) #4
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @SCT_CTX_set1_cert(%struct.sct_ctx_st* nocapture noundef %sctx, %struct.x509_st* noundef %cert, %struct.x509_st* noundef %presigner) local_unnamed_addr #0 {
entry:
  %certder = alloca i8*, align 8
  %preder = alloca i8*, align 8
  %poison_ext_is_dup = alloca i32, align 4
  %sct_ext_is_dup = alloca i32, align 4
  %0 = bitcast i8** %certder to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i8* null, i8** %certder, align 8, !tbaa !16
  %1 = bitcast i8** %preder to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store i8* null, i8** %preder, align 8, !tbaa !16
  %2 = bitcast i32* %poison_ext_is_dup to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #5
  %3 = bitcast i32* %sct_ext_is_dup to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #5
  %call = call fastcc i32 @ct_x509_get_ext(%struct.x509_st* noundef %cert, i32 noundef 952, i32* noundef nonnull %poison_ext_is_dup) #6
  %4 = load i32, i32* %poison_ext_is_dup, align 4, !tbaa !17
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %err

if.end:                                           ; preds = %entry
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then1, label %if.end9

if.then1:                                         ; preds = %if.end
  %cmp2.not = icmp eq %struct.x509_st* %presigner, null
  br i1 %cmp2.not, label %if.end4, label %err

if.end4:                                          ; preds = %if.then1
  %call5 = call i32 @i2d_X509(%struct.x509_st* noundef %cert, i8** noundef nonnull %certder) #4
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %err, label %if.end9

if.end9:                                          ; preds = %if.end4, %if.end
  %certderlen.0 = phi i32 [ %call5, %if.end4 ], [ 0, %if.end ]
  %call10 = call fastcc i32 @ct_x509_get_ext(%struct.x509_st* noundef %cert, i32 noundef 951, i32* noundef nonnull %sct_ext_is_dup) #6
  %5 = load i32, i32* %sct_ext_is_dup, align 4, !tbaa !17
  %tobool11.not = icmp eq i32 %5, 0
  br i1 %tobool11.not, label %if.end13, label %err

if.end13:                                         ; preds = %if.end9
  %cmp14 = icmp sgt i32 %call10, -1
  %cmp15 = icmp sgt i32 %call, -1
  %or.cond = select i1 %cmp14, i1 %cmp15, i1 false
  br i1 %or.cond, label %err, label %if.end17

if.end17:                                         ; preds = %if.end13
  %cmp18 = icmp eq i32 %call10, -1
  %spec.select = select i1 %cmp18, i32 %call, i32 %call10
  %cmp21 = icmp sgt i32 %spec.select, -1
  br i1 %cmp21, label %if.then22, label %if.end36

if.then22:                                        ; preds = %if.end17
  %call23 = call %struct.x509_st* @X509_dup(%struct.x509_st* noundef %cert) #4
  %cmp24 = icmp eq %struct.x509_st* %call23, null
  br i1 %cmp24, label %err, label %if.end26

if.end26:                                         ; preds = %if.then22
  %call27 = call %struct.X509_extension_st* @X509_delete_ext(%struct.x509_st* noundef nonnull %call23, i32 noundef %spec.select) #4
  call void @X509_EXTENSION_free(%struct.X509_extension_st* noundef %call27) #4
  %call28 = call fastcc i32 @ct_x509_cert_fixup(%struct.x509_st* noundef nonnull %call23, %struct.x509_st* noundef %presigner) #6
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %if.end31

if.end31:                                         ; preds = %if.end26
  %call32 = call i32 @i2d_re_X509_tbs(%struct.x509_st* noundef nonnull %call23, i8** noundef nonnull %preder) #4
  %cmp33 = icmp slt i32 %call32, 1
  br i1 %cmp33, label %err, label %if.end36

if.end36:                                         ; preds = %if.end31, %if.end17
  %pretmp.0 = phi %struct.x509_st* [ %call23, %if.end31 ], [ null, %if.end17 ]
  %prederlen.0 = phi i32 [ %call32, %if.end31 ], [ 0, %if.end17 ]
  call void @X509_free(%struct.x509_st* noundef %pretmp.0) #4
  %certder37 = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 5
  %6 = load i8*, i8** %certder37, align 8, !tbaa !14
  call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 188) #4
  %7 = load i8*, i8** %certder, align 8, !tbaa !16
  store i8* %7, i8** %certder37, align 8, !tbaa !14
  %conv78 = zext i32 %certderlen.0 to i64
  %certderlen39 = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 6
  store i64 %conv78, i64* %certderlen39, align 8, !tbaa !19
  %preder40 = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 7
  %8 = load i8*, i8** %preder40, align 8, !tbaa !15
  call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 192) #4
  %9 = load i8*, i8** %preder, align 8, !tbaa !16
  store i8* %9, i8** %preder40, align 8, !tbaa !15
  %conv4279 = zext i32 %prederlen.0 to i64
  %prederlen43 = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 8
  store i64 %conv4279, i64* %prederlen43, align 8, !tbaa !20
  br label %cleanup

err:                                              ; preds = %if.end31, %if.end26, %if.then22, %if.end13, %if.end9, %if.end4, %if.then1, %entry
  %pretmp.1 = phi %struct.x509_st* [ null, %entry ], [ null, %if.then1 ], [ null, %if.end4 ], [ null, %if.end9 ], [ null, %if.end13 ], [ null, %if.then22 ], [ %call23, %if.end31 ], [ %call23, %if.end26 ]
  %10 = load i8*, i8** %certder, align 8, !tbaa !16
  call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 198) #4
  %11 = load i8*, i8** %preder, align 8, !tbaa !16
  call void @CRYPTO_free(i8* noundef %11, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 199) #4
  call void @X509_free(%struct.x509_st* noundef %pretmp.1) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end36
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end36 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ct_x509_get_ext(%struct.x509_st* noundef %cert, i32 noundef %nid, i32* noundef writeonly %is_duplicated) unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_get_ext_by_NID(%struct.x509_st* noundef %cert, i32 noundef %nid, i32 noundef -1) #4
  %cmp.not = icmp eq i32* %is_duplicated, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %call, -1
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %call2 = tail call i32 @X509_get_ext_by_NID(%struct.x509_st* noundef %cert, i32 noundef %nid, i32 noundef %call) #4
  %0 = xor i32 %call2, -1
  %call2.lobit.not = lshr i32 %0, 31
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %1 = phi i32 [ 0, %if.then ], [ %call2.lobit.not, %land.rhs ]
  store i32 %1, i32* %is_duplicated, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %land.end, %entry
  ret i32 %call
}

declare i32 @i2d_X509(%struct.x509_st* noundef, i8** noundef) local_unnamed_addr #2

declare %struct.x509_st* @X509_dup(%struct.x509_st* noundef) local_unnamed_addr #2

declare void @X509_EXTENSION_free(%struct.X509_extension_st* noundef) local_unnamed_addr #2

declare %struct.X509_extension_st* @X509_delete_ext(%struct.x509_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ct_x509_cert_fixup(%struct.x509_st* noundef %cert, %struct.x509_st* noundef %presigner) unnamed_addr #0 {
entry:
  %pre_akid_ext_is_dup = alloca i32, align 4
  %cert_akid_ext_is_dup = alloca i32, align 4
  %0 = bitcast i32* %pre_akid_ext_is_dup to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %1 = bitcast i32* %cert_akid_ext_is_dup to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  %cmp = icmp eq %struct.x509_st* %presigner, null
  br i1 %cmp, label %cleanup43, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @ct_x509_get_ext(%struct.x509_st* noundef nonnull %presigner, i32 noundef 90, i32* noundef nonnull %pre_akid_ext_is_dup) #6
  %call1 = call fastcc i32 @ct_x509_get_ext(%struct.x509_st* noundef %cert, i32 noundef 90, i32* noundef nonnull %cert_akid_ext_is_dup) #6
  %cmp2 = icmp slt i32 %call, -1
  %cmp3 = icmp slt i32 %call1, -1
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp3
  br i1 %or.cond, label %cleanup43, label %if.end5

if.end5:                                          ; preds = %if.end
  %2 = load i32, i32* %pre_akid_ext_is_dup, align 4, !tbaa !17
  %tobool = icmp ne i32 %2, 0
  %3 = load i32, i32* %cert_akid_ext_is_dup, align 4
  %tobool7 = icmp ne i32 %3, 0
  %or.cond47 = select i1 %tobool, i1 true, i1 %tobool7
  br i1 %or.cond47, label %cleanup43, label %if.end9

if.end9:                                          ; preds = %if.end5
  %cmp10 = icmp sgt i32 %call, -1
  %cmp11 = icmp eq i32 %call1, -1
  %or.cond48 = select i1 %cmp10, i1 %cmp11, i1 false
  br i1 %or.cond48, label %cleanup43, label %if.end13

if.end13:                                         ; preds = %if.end9
  %cmp14 = icmp eq i32 %call, -1
  %cmp16 = icmp sgt i32 %call1, -1
  %or.cond49 = select i1 %cmp14, i1 %cmp16, i1 false
  br i1 %or.cond49, label %cleanup43, label %if.end18

if.end18:                                         ; preds = %if.end13
  %call19 = call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef nonnull %presigner) #4
  %call20 = call i32 @X509_set_issuer_name(%struct.x509_st* noundef %cert, %struct.X509_name_st* noundef %call19) #4
  %tobool21.not = icmp eq i32 %call20, 0
  %brmerge = select i1 %tobool21.not, i1 true, i1 %cmp14
  %not.tobool21.not = xor i1 %tobool21.not, true
  br i1 %brmerge, label %cleanup43, label %if.then25

if.then25:                                        ; preds = %if.end18
  %call26 = call %struct.X509_extension_st* @X509_get_ext(%struct.x509_st* noundef nonnull %presigner, i32 noundef %call) #4
  %call27 = call %struct.X509_extension_st* @X509_get_ext(%struct.x509_st* noundef %cert, i32 noundef %call1) #4
  %cmp28 = icmp eq %struct.X509_extension_st* %call26, null
  %cmp30 = icmp eq %struct.X509_extension_st* %call27, null
  %or.cond50 = select i1 %cmp28, i1 true, i1 %cmp30
  br i1 %or.cond50, label %cleanup43, label %if.end32

if.end32:                                         ; preds = %if.then25
  %call33 = call %struct.asn1_string_st* @X509_EXTENSION_get_data(%struct.X509_extension_st* noundef nonnull %call26) #4
  %cmp34 = icmp eq %struct.asn1_string_st* %call33, null
  br i1 %cmp34, label %cleanup43, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %if.end32
  %call36 = call i32 @X509_EXTENSION_set_data(%struct.X509_extension_st* noundef nonnull %call27, %struct.asn1_string_st* noundef nonnull %call33) #4
  %tobool37.not = icmp ne i32 %call36, 0
  br label %cleanup43

cleanup43:                                        ; preds = %if.end18, %lor.lhs.false35, %if.then25, %if.end32, %if.end13, %if.end9, %if.end5, %if.end, %entry
  %retval.1.shrunk = phi i1 [ true, %entry ], [ false, %if.end ], [ false, %if.end5 ], [ false, %if.end9 ], [ false, %if.end13 ], [ %not.tobool21.not, %if.end18 ], [ false, %if.end32 ], [ false, %if.then25 ], [ %tobool37.not, %lor.lhs.false35 ]
  %retval.1 = zext i1 %retval.1.shrunk to i32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %retval.1
}

declare i32 @i2d_re_X509_tbs(%struct.x509_st* noundef, i8** noundef) local_unnamed_addr #2

declare void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @SCT_CTX_set1_issuer(%struct.sct_ctx_st* nocapture noundef %sctx, %struct.x509_st* noundef %issuer) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.X509_pubkey_st* @X509_get_X509_PUBKEY(%struct.x509_st* noundef %issuer) #4
  %call1 = tail call i32 @SCT_CTX_set1_issuer_pubkey(%struct.sct_ctx_st* noundef %sctx, %struct.X509_pubkey_st* noundef %call) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define i32 @SCT_CTX_set1_issuer_pubkey(%struct.sct_ctx_st* nocapture noundef %sctx, %struct.X509_pubkey_st* noundef %pubkey) local_unnamed_addr #0 {
entry:
  %ihash = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 3
  %ihashlen = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 4
  %call = tail call fastcc i32 @ct_public_key_hash(%struct.sct_ctx_st* noundef %sctx, %struct.X509_pubkey_st* noundef %pubkey, i8** noundef nonnull %ihash, i64* noundef nonnull %ihashlen) #6
  ret i32 %call
}

declare %struct.X509_pubkey_st* @X509_get_X509_PUBKEY(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ct_public_key_hash(%struct.sct_ctx_st* nocapture noundef readonly %sctx, %struct.X509_pubkey_st* noundef %pkey, i8** nocapture noundef %hash, i64* nocapture noundef %hash_len) unnamed_addr #0 {
entry:
  %der = alloca i8*, align 8
  %md_len = alloca i32, align 4
  %0 = bitcast i8** %der to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i8* null, i8** %der, align 8, !tbaa !16
  %1 = bitcast i32* %md_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  %libctx = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 10
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %propq = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 11
  %3 = load i8*, i8** %propq, align 8, !tbaa !10
  %call = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef %3) #4
  %cmp = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %hash, align 8, !tbaa !16
  %cmp1.not = icmp eq i8* %4, null
  br i1 %cmp1.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %5 = load i64, i64* %hash_len, align 8, !tbaa !21
  %cmp2 = icmp ugt i64 %5, 31
  br i1 %cmp2, label %if.end8, label %if.else

if.else:                                          ; preds = %land.lhs.true, %if.end
  %call4 = tail call i8* @CRYPTO_malloc(i64 noundef 32, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 220) #4
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %err, label %if.end8

if.end8:                                          ; preds = %land.lhs.true, %if.else
  %md.0 = phi i8* [ %call4, %if.else ], [ %4, %land.lhs.true ]
  %call9 = call i32 @i2d_X509_PUBKEY(%struct.X509_pubkey_st* noundef %pkey, i8** noundef nonnull %der) #4
  %cmp10 = icmp slt i32 %call9, 1
  br i1 %cmp10, label %err, label %if.end12

if.end12:                                         ; preds = %if.end8
  %6 = load i8*, i8** %der, align 8, !tbaa !16
  %conv38 = zext i32 %call9 to i64
  %call13 = call i32 @EVP_Digest(i8* noundef %6, i64 noundef %conv38, i8* noundef nonnull %md.0, i32* noundef nonnull %md_len, %struct.evp_md_st* noundef nonnull %call, %struct.engine_st* noundef null) #4
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %err, label %if.end15

if.end15:                                         ; preds = %if.end12
  %7 = load i8*, i8** %hash, align 8, !tbaa !16
  %cmp16.not = icmp eq i8* %md.0, %7
  br i1 %cmp16.not, label %err, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 234) #4
  store i8* %md.0, i8** %hash, align 8, !tbaa !16
  store i64 32, i64* %hash_len, align 8, !tbaa !21
  br label %err

err:                                              ; preds = %if.end15, %if.then18, %if.end12, %if.end8, %if.else, %entry
  %md.1 = phi i8* [ null, %entry ], [ %md.0, %if.end8 ], [ %md.0, %if.end12 ], [ null, %if.else ], [ null, %if.then18 ], [ null, %if.end15 ]
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.end8 ], [ 0, %if.end12 ], [ 0, %if.else ], [ 1, %if.then18 ], [ 1, %if.end15 ]
  call void @EVP_MD_free(%struct.evp_md_st* noundef %call) #4
  call void @CRYPTO_free(i8* noundef %md.1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 243) #4
  %8 = load i8*, i8** %der, align 8, !tbaa !16
  call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 244) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SCT_CTX_set1_pubkey(%struct.sct_ctx_st* nocapture noundef %sctx, %struct.X509_pubkey_st* noundef %pubkey) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_pkey_st* @X509_PUBKEY_get(%struct.X509_pubkey_st* noundef %pubkey) #4
  %cmp = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %pkeyhash = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 1
  %pkeyhashlen = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 2
  %call1 = tail call fastcc i32 @ct_public_key_hash(%struct.sct_ctx_st* noundef %sctx, %struct.X509_pubkey_st* noundef %pubkey, i8** noundef nonnull %pkeyhash, i64* noundef nonnull %pkeyhashlen) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %pkey4 = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 0
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey4, align 8, !tbaa !11
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %0) #4
  store %struct.evp_pkey_st* %call, %struct.evp_pkey_st** %pkey4, align 8, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3, %if.then2
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 0, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.evp_pkey_st* @X509_PUBKEY_get(%struct.X509_pubkey_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SCT_CTX_set_time(%struct.sct_ctx_st* nocapture noundef writeonly %sctx, i64 noundef %time_in_ms) local_unnamed_addr #3 {
entry:
  %epoch_time_in_ms = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 9
  store i64 %time_in_ms, i64* %epoch_time_in_ms, align 8, !tbaa !22
  ret void
}

declare i32 @X509_get_ext_by_NID(%struct.x509_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_set_issuer_name(%struct.x509_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.X509_extension_st* @X509_get_ext(%struct.x509_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_EXTENSION_get_data(%struct.X509_extension_st* noundef) local_unnamed_addr #2

declare i32 @X509_EXTENSION_set_data(%struct.X509_extension_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @i2d_X509_PUBKEY(%struct.X509_pubkey_st* noundef, i8** noundef) local_unnamed_addr #2

declare i32 @EVP_Digest(i8* noundef, i64 noundef, i8* noundef, i32* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 80}
!5 = !{!"sct_ctx_st", !6, i64 0, !6, i64 8, !9, i64 16, !6, i64 24, !9, i64 32, !6, i64 40, !9, i64 48, !6, i64 56, !9, i64 64, !9, i64 72, !6, i64 80, !6, i64 88}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!5, !6, i64 88}
!11 = !{!5, !6, i64 0}
!12 = !{!5, !6, i64 8}
!13 = !{!5, !6, i64 24}
!14 = !{!5, !6, i64 40}
!15 = !{!5, !6, i64 56}
!16 = !{!6, !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !7, i64 0}
!19 = !{!5, !9, i64 48}
!20 = !{!5, !9, i64 64}
!21 = !{!9, !9, i64 0}
!22 = !{!5, !9, i64 72}
