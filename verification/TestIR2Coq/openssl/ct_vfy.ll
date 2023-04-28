; ModuleID = 'crypto/ct/ct_vfy.c'
source_filename = "crypto/ct/ct_vfy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sct_ctx_st = type { %struct.evp_pkey_st*, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i64, %struct.ossl_lib_ctx_st*, i8* }
%struct.evp_pkey_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.sct_st = type { i32, i8*, i64, i8*, i64, i64, i8*, i64, i8, i8, i8*, i64, i32, i32, i32 }
%struct.evp_md_ctx_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"crypto/ct/ct_vfy.c\00", align 1
@__func__.SCT_CTX_verify = private unnamed_addr constant [15 x i8] c"SCT_CTX_verify\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"SHA2-256\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @SCT_CTX_verify(%struct.sct_ctx_st* nocapture noundef readonly %sctx, %struct.sct_st* noundef %sct) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @SCT_is_complete(%struct.sct_st* noundef %sct) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %pkey = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 0
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !4
  %cmp = icmp eq %struct.evp_pkey_st* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %entry_type = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 12
  %1 = load i32, i32* %entry_type, align 8, !tbaa !10
  switch i32 %1, label %if.end [
    i32 -1, label %if.then
    i32 1, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %lor.lhs.false1
  %ihash = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 3
  %2 = load i8*, i8** %ihash, align 8, !tbaa !12
  %cmp6 = icmp eq i8* %2, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false1, %land.lhs.true, %lor.lhs.false, %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.SCT_CTX_verify, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 106, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1, %land.lhs.true
  %version = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 0
  %3 = load i32, i32* %version, align 8, !tbaa !13
  %cmp7.not = icmp eq i32 %3, 0
  br i1 %cmp7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.SCT_CTX_verify, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 115, i8* noundef null) #4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %log_id_len = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 4
  %4 = load i64, i64* %log_id_len, align 8, !tbaa !14
  %pkeyhashlen = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 2
  %5 = load i64, i64* %pkeyhashlen, align 8, !tbaa !15
  %cmp10.not = icmp eq i64 %4, %5
  br i1 %cmp10.not, label %lor.lhs.false11, label %if.then15

lor.lhs.false11:                                  ; preds = %if.end9
  %log_id = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 3
  %6 = load i8*, i8** %log_id, align 8, !tbaa !16
  %pkeyhash = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 1
  %7 = load i8*, i8** %pkeyhash, align 8, !tbaa !17
  %call13 = tail call i32 @memcmp(i8* noundef %6, i8* noundef %7, i64 noundef %4) #5
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %lor.lhs.false11, %if.end9
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.SCT_CTX_verify, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 114, i8* noundef null) #4
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false11
  %timestamp = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 5
  %8 = load i64, i64* %timestamp, align 8, !tbaa !18
  %epoch_time_in_ms = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 9
  %9 = load i64, i64* %epoch_time_in_ms, align 8, !tbaa !19
  %cmp17 = icmp ugt i64 %8, %9
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end16
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.SCT_CTX_verify, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 116, i8* noundef null) #4
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  %call20 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #4
  %cmp21 = icmp eq %struct.evp_md_ctx_st* %call20, null
  br i1 %cmp21, label %end, label %if.end23

if.end23:                                         ; preds = %if.end19
  %libctx = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 10
  %10 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !20
  %propq = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 11
  %11 = load i8*, i8** %propq, align 8, !tbaa !21
  %12 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !4
  %call25 = tail call i32 @EVP_DigestVerifyInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call20, %struct.evp_pkey_ctx_st** noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.ossl_lib_ctx_st* noundef %10, i8* noundef %11, %struct.evp_pkey_st* noundef %12, %struct.ossl_param_st* noundef null) #4
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %end, label %if.end28

if.end28:                                         ; preds = %if.end23
  %call29 = tail call fastcc i32 @sct_ctx_update(%struct.evp_md_ctx_st* noundef nonnull %call20, %struct.sct_ctx_st* noundef nonnull %sctx, %struct.sct_st* noundef nonnull %sct) #6
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %end, label %if.end32

if.end32:                                         ; preds = %if.end28
  %sig = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 10
  %13 = load i8*, i8** %sig, align 8, !tbaa !22
  %sig_len = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 11
  %14 = load i64, i64* %sig_len, align 8, !tbaa !23
  %call33 = tail call i32 @EVP_DigestVerifyFinal(%struct.evp_md_ctx_st* noundef nonnull %call20, i8* noundef %13, i64 noundef %14) #4
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %end

if.then35:                                        ; preds = %if.end32
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 136, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.SCT_CTX_verify, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 107, i8* noundef null) #4
  br label %end

end:                                              ; preds = %if.end32, %if.then35, %if.end28, %if.end23, %if.end19
  %ret.0 = phi i32 [ 0, %if.end19 ], [ 0, %if.then35 ], [ %call33, %if.end32 ], [ 0, %if.end28 ], [ 0, %if.end23 ]
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call20) #4
  br label %cleanup

cleanup:                                          ; preds = %end, %if.then18, %if.then15, %if.then8, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then8 ], [ 0, %if.then15 ], [ 0, %if.then18 ], [ %ret.0, %end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @SCT_is_complete(%struct.sct_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare i32 @EVP_DigestVerifyInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sct_ctx_update(%struct.evp_md_ctx_st* noundef %ctx, %struct.sct_ctx_st* nocapture noundef readonly %sctx, %struct.sct_st* nocapture noundef readonly %sct) unnamed_addr #0 {
entry:
  %tmpbuf = alloca [12 x i8], align 1
  %0 = getelementptr inbounds [12 x i8], [12 x i8]* %tmpbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %0) #7
  %entry_type = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 12
  %1 = load i32, i32* %entry_type, align 8, !tbaa !10
  switch i32 %1, label %if.end5 [
    i32 -1, label %cleanup
    i32 1, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %entry
  %ihash = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 3
  %2 = load i8*, i8** %ihash, align 8, !tbaa !12
  %cmp3 = icmp eq i8* %2, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %entry, %land.lhs.true
  %version = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 0
  %3 = load i32, i32* %version, align 8, !tbaa !13
  %conv = trunc i32 %3 to i8
  %incdec.ptr = getelementptr inbounds [12 x i8], [12 x i8]* %tmpbuf, i64 0, i64 1
  store i8 %conv, i8* %0, align 1, !tbaa !24
  %incdec.ptr6 = getelementptr inbounds [12 x i8], [12 x i8]* %tmpbuf, i64 0, i64 2
  store i8 0, i8* %incdec.ptr, align 1, !tbaa !24
  %timestamp = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 5
  %4 = load i64, i64* %timestamp, align 8, !tbaa !18
  %shr = lshr i64 %4, 56
  %conv7 = trunc i64 %shr to i8
  %incdec.ptr8 = getelementptr inbounds [12 x i8], [12 x i8]* %tmpbuf, i64 0, i64 3
  store i8 %conv7, i8* %incdec.ptr6, align 1, !tbaa !24
  %shr10 = lshr i64 %4, 48
  %conv12 = trunc i64 %shr10 to i8
  %incdec.ptr13 = getelementptr inbounds [12 x i8], [12 x i8]* %tmpbuf, i64 0, i64 4
  store i8 %conv12, i8* %incdec.ptr8, align 1, !tbaa !24
  %shr15 = lshr i64 %4, 40
  %conv17 = trunc i64 %shr15 to i8
  %incdec.ptr18 = getelementptr inbounds [12 x i8], [12 x i8]* %tmpbuf, i64 0, i64 5
  store i8 %conv17, i8* %incdec.ptr13, align 1, !tbaa !24
  %shr20 = lshr i64 %4, 32
  %conv22 = trunc i64 %shr20 to i8
  %incdec.ptr23 = getelementptr inbounds [12 x i8], [12 x i8]* %tmpbuf, i64 0, i64 6
  store i8 %conv22, i8* %incdec.ptr18, align 1, !tbaa !24
  %shr25 = lshr i64 %4, 24
  %conv27 = trunc i64 %shr25 to i8
  %incdec.ptr28 = getelementptr inbounds [12 x i8], [12 x i8]* %tmpbuf, i64 0, i64 7
  store i8 %conv27, i8* %incdec.ptr23, align 1, !tbaa !24
  %shr30 = lshr i64 %4, 16
  %conv32 = trunc i64 %shr30 to i8
  %incdec.ptr33 = getelementptr inbounds [12 x i8], [12 x i8]* %tmpbuf, i64 0, i64 8
  store i8 %conv32, i8* %incdec.ptr28, align 1, !tbaa !24
  %shr35 = lshr i64 %4, 8
  %conv37 = trunc i64 %shr35 to i8
  %incdec.ptr38 = getelementptr inbounds [12 x i8], [12 x i8]* %tmpbuf, i64 0, i64 9
  store i8 %conv37, i8* %incdec.ptr33, align 1, !tbaa !24
  %conv41 = trunc i64 %4 to i8
  %incdec.ptr42 = getelementptr inbounds [12 x i8], [12 x i8]* %tmpbuf, i64 0, i64 10
  store i8 %conv41, i8* %incdec.ptr38, align 1, !tbaa !24
  %5 = lshr i32 %1, 8
  %conv46 = trunc i32 %5 to i8
  store i8 %conv46, i8* %incdec.ptr42, align 1, !tbaa !24
  %conv49 = trunc i32 %1 to i8
  %arrayidx50 = getelementptr inbounds [12 x i8], [12 x i8]* %tmpbuf, i64 0, i64 11
  store i8 %conv49, i8* %arrayidx50, align 1, !tbaa !24
  %call = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef nonnull %0, i64 noundef 12) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end54

if.end54:                                         ; preds = %if.end5
  %6 = load i32, i32* %entry_type, align 8, !tbaa !10
  %cmp56 = icmp eq i32 %6, 0
  br i1 %cmp56, label %if.then58, label %if.else

if.then58:                                        ; preds = %if.end54
  %certder = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 5
  %certderlen = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 6
  br label %if.end64

if.else:                                          ; preds = %if.end54
  %ihash59 = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 3
  %7 = load i8*, i8** %ihash59, align 8, !tbaa !12
  %ihashlen = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 4
  %8 = load i64, i64* %ihashlen, align 8, !tbaa !25
  %call60 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %7, i64 noundef %8) #4
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %cleanup, label %if.end63

if.end63:                                         ; preds = %if.else
  %preder = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 7
  %prederlen = getelementptr inbounds %struct.sct_ctx_st, %struct.sct_ctx_st* %sctx, i64 0, i32 8
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then58
  %der.0.in = phi i8** [ %certder, %if.then58 ], [ %preder, %if.end63 ]
  %derlen.0.in = phi i64* [ %certderlen, %if.then58 ], [ %prederlen, %if.end63 ]
  %derlen.0 = load i64, i64* %derlen.0.in, align 8, !tbaa !26
  %der.0 = load i8*, i8** %der.0.in, align 8, !tbaa !27
  %cmp65 = icmp eq i8* %der.0, null
  br i1 %cmp65, label %cleanup, label %if.end68

if.end68:                                         ; preds = %if.end64
  %shr70 = lshr i64 %derlen.0, 16
  %conv72 = trunc i64 %shr70 to i8
  store i8 %conv72, i8* %0, align 1, !tbaa !24
  %shr74 = lshr i64 %derlen.0, 8
  %conv76 = trunc i64 %shr74 to i8
  store i8 %conv76, i8* %incdec.ptr, align 1, !tbaa !24
  %conv79 = trunc i64 %derlen.0 to i8
  store i8 %conv79, i8* %incdec.ptr6, align 1, !tbaa !24
  %call83 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef nonnull %0, i64 noundef 3) #4
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %cleanup, label %if.end86

if.end86:                                         ; preds = %if.end68
  %call87 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef nonnull %der.0, i64 noundef %derlen.0) #4
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %cleanup, label %if.end90

if.end90:                                         ; preds = %if.end86
  %ext_len = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 7
  %9 = load i64, i64* %ext_len, align 8, !tbaa !28
  %shr92 = lshr i64 %9, 8
  %conv94 = trunc i64 %shr92 to i8
  store i8 %conv94, i8* %0, align 1, !tbaa !24
  %conv98 = trunc i64 %9 to i8
  store i8 %conv98, i8* %incdec.ptr, align 1, !tbaa !24
  %call102 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef nonnull %0, i64 noundef 2) #4
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %cleanup, label %if.end105

if.end105:                                        ; preds = %if.end90
  %10 = load i64, i64* %ext_len, align 8, !tbaa !28
  %tobool107.not = icmp eq i64 %10, 0
  br i1 %tobool107.not, label %if.end113, label %land.lhs.true108

land.lhs.true108:                                 ; preds = %if.end105
  %ext = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 6
  %11 = load i8*, i8** %ext, align 8, !tbaa !29
  %call110 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %11, i64 noundef %10) #4
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %cleanup, label %if.end113

if.end113:                                        ; preds = %land.lhs.true108, %if.end105
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true108, %if.end90, %if.end86, %if.end68, %if.end64, %if.else, %if.end5, %land.lhs.true, %entry, %if.end113
  %retval.0 = phi i32 [ 1, %if.end113 ], [ 0, %entry ], [ 0, %land.lhs.true ], [ 0, %if.end5 ], [ 0, %if.else ], [ 0, %if.end64 ], [ 0, %if.end68 ], [ 0, %if.end86 ], [ 0, %if.end90 ], [ 0, %land.lhs.true108 ]
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare i32 @EVP_DigestVerifyFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"sct_ctx_st", !6, i64 0, !6, i64 8, !9, i64 16, !6, i64 24, !9, i64 32, !6, i64 40, !9, i64 48, !6, i64 56, !9, i64 64, !9, i64 72, !6, i64 80, !6, i64 88}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!11, !7, i64 88}
!11 = !{!"sct_st", !7, i64 0, !6, i64 8, !9, i64 16, !6, i64 24, !9, i64 32, !9, i64 40, !6, i64 48, !9, i64 56, !7, i64 64, !7, i64 65, !6, i64 72, !9, i64 80, !7, i64 88, !7, i64 92, !7, i64 96}
!12 = !{!5, !6, i64 24}
!13 = !{!11, !7, i64 0}
!14 = !{!11, !9, i64 32}
!15 = !{!5, !9, i64 16}
!16 = !{!11, !6, i64 24}
!17 = !{!5, !6, i64 8}
!18 = !{!11, !9, i64 40}
!19 = !{!5, !9, i64 72}
!20 = !{!5, !6, i64 80}
!21 = !{!5, !6, i64 88}
!22 = !{!11, !6, i64 72}
!23 = !{!11, !9, i64 80}
!24 = !{!7, !7, i64 0}
!25 = !{!5, !9, i64 32}
!26 = !{!9, !9, i64 0}
!27 = !{!6, !6, i64 0}
!28 = !{!11, !9, i64 56}
!29 = !{!11, !6, i64 48}
