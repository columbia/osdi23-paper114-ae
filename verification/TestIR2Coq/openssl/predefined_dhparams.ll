; ModuleID = 'test/helpers/predefined_dhparams.c'
source_filename = "test/helpers/predefined_dhparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_pkey_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.bignum_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.ossl_param_bld_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }

@get_dh512.dh512_p = internal global [64 x i8] c"\CB\C8\E1\86\D0\1F\94\17\A6\99\F0\C6\1F\0D\AC\B6%>\069\CAr\04\B0n\DA\C0a\E6zw%\E8;\B9_\9A\B6\B5\FE\99\0B\A1\93N53\B8\E1\F1\13OY\1A\D2W\C0&!3\02\C5\AE#", align 16
@get_dh512.dh512_g = internal global [1 x i8] c"\02", align 1
@.str = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@get_dhx512.dhx512_p = internal global [65 x i8] c"\00\E8\1A\B7\9A\02ed\94{\BA\09\1C\12'\1E\EA\892dx\F8\1Cx\8E\96\C3\C6\9FA\05Ae\AE\E3\05\EAf!\F78\B7+2@Z\14\86Q\94\B1\CF\01\E3'(\F6u\A3\15\BB\12M\99\E7", align 16
@get_dhx512.dhx512_g = internal global [65 x i8] c"\00\91\C1Cm\0D\B0\A4\DEA\B7\93\ADQ\94\1BC\D8B\F1^F\83]\F1\D1\F0A\10\D1\1C^\AD\9Bh\B1o\F5\8E\AAmq\887\DF\05\F7nz\B4%\10l\7F8\B4\C8\FC\CC\0Cj\02\08a\F6", align 16
@get_dhx512.dhx512_q = internal global [21 x i8] c"\00\DD\F65\AD\FAp\C7\E7\A8\F0\E3\DAy4?[\CFs\82\91", align 16
@.str.1 = private unnamed_addr constant [9 x i8] c"X9.42 DH\00", align 1
@get_dh1024dsa.dh1024_p = internal global [128 x i8] c"\C8\00\F7\08\07\89M\90S\F3\D5\00!\1B\F71\A6\A2\DA#\9A\C7\87\19;G\B6\8C\04o\FF\C6\9B\B8e\D2\C2_1\83J\A7_/\888\B6U\CF\D9\87mo\9F\DA\AC\A6H\AF\FC3\847[\82J1]\E7\BDR\97\A1w\BF\10\9E7\EAd\FA\CA(\8D\9D;\D2n\09\\h\C7E\90\FD\BBp\C9:\BB\DF\D4!\0F\C4j<\F6a\CF?\D6\13\F1_\BC\CF\BC&\9E\BC\0B\BD\AB]\C9T9", align 16
@get_dh1024dsa.dh1024_g = internal global [128 x i8] c";@\86\E7\F3l\DEg\1C\CC\80\05Z\DF\FE\BD 'tl$\C9\03\F3\E1\8D\C3}\98'@\08\B8\8Cj\E9\BB\1A:\D6\86\83^rA\CE\85<\D2\B3\FC\13\CE7\81\9EL\1C{e\D3\E6\A6\00\F5Z\95C^\81\CF`\A2#\FC6\A7]zL\06\91n\F6W\EE6\CB\06\EA\F5=\95I\CB\A7\DD\81\DF\80\09J\97M\A8\22r\A1\7F\C4pVp\E8 \10\18\8F.`\07\E7h\1A\82]2\A2", align 16
@.str.2 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"q\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.evp_pkey_st* @get_dh512(%struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.evp_pkey_st* @get_dh_from_pg(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @get_dh512.dh512_p, i64 0, i64 0), i64 noundef 64, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @get_dh512.dh512_g, i64 0, i64 0), i64 noundef 1, i8* noundef null, i64 noundef 0) #3
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @get_dh_from_pg(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %type, i8* noundef %pdata, i64 noundef %plen, i8* noundef %gdata, i64 noundef %glen, i8* noundef %qdata, i64 noundef %qlen) unnamed_addr #0 {
entry:
  %conv = trunc i64 %plen to i32
  %call = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %pdata, i32 noundef %conv, %struct.bignum_st* noundef null) #4
  %conv1 = trunc i64 %glen to i32
  %call2 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %gdata, i32 noundef %conv1, %struct.bignum_st* noundef null) #4
  %cmp = icmp eq %struct.bignum_st* %call, null
  %cmp4 = icmp eq %struct.bignum_st* %call2, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4
  br i1 %or.cond, label %err, label %if.end

if.end:                                           ; preds = %entry
  %cmp6.not = icmp eq i8* %qdata, null
  br i1 %cmp6.not, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %conv8 = trunc i64 %qlen to i32
  %call9 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %qdata, i32 noundef %conv8, %struct.bignum_st* noundef null) #4
  %cmp10 = icmp eq %struct.bignum_st* %call9, null
  br i1 %cmp10, label %err, label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %if.end
  %q.0 = phi %struct.bignum_st* [ %call9, %land.lhs.true ], [ null, %if.end ]
  %call14 = tail call fastcc %struct.evp_pkey_st* @get_dh_from_pg_bn(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %type, %struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef nonnull %call2, %struct.bignum_st* noundef %q.0) #3
  br label %err

err:                                              ; preds = %land.lhs.true, %entry, %if.end13
  %dhpkey.0 = phi %struct.evp_pkey_st* [ null, %entry ], [ null, %land.lhs.true ], [ %call14, %if.end13 ]
  %q.1 = phi %struct.bignum_st* [ null, %entry ], [ null, %land.lhs.true ], [ %q.0, %if.end13 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #4
  tail call void @BN_free(%struct.bignum_st* noundef %call2) #4
  tail call void @BN_free(%struct.bignum_st* noundef %q.1) #4
  ret %struct.evp_pkey_st* %dhpkey.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.evp_pkey_st* @get_dhx512(%struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.evp_pkey_st* @get_dh_from_pg(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @get_dhx512.dhx512_p, i64 0, i64 0), i64 noundef 65, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @get_dhx512.dhx512_g, i64 0, i64 0), i64 noundef 65, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @get_dhx512.dhx512_q, i64 0, i64 0), i64 noundef 21) #3
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.evp_pkey_st* @get_dh1024dsa(%struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.evp_pkey_st* @get_dh_from_pg(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([128 x i8], [128 x i8]* @get_dh1024dsa.dh1024_p, i64 0, i64 0), i64 noundef 128, i8* noundef getelementptr inbounds ([128 x i8], [128 x i8]* @get_dh1024dsa.dh1024_g, i64 0, i64 0), i64 noundef 128, i8* noundef null, i64 noundef 0) #3
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.evp_pkey_st* @get_dh2048(%struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #4
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @BN_set_word(%struct.bignum_st* noundef nonnull %call, i64 noundef 2) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call %struct.bignum_st* @BN_get_rfc3526_prime_2048(%struct.bignum_st* noundef null) #4
  %cmp3 = icmp eq %struct.bignum_st* %call2, null
  br i1 %cmp3, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc %struct.evp_pkey_st* @get_dh_from_pg_bn(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call2, %struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef null) #3
  br label %err

err:                                              ; preds = %if.end, %entry, %lor.lhs.false, %if.end5
  %p.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %if.end ], [ %call2, %if.end5 ], [ null, %lor.lhs.false ]
  %dhpkey.0 = phi %struct.evp_pkey_st* [ null, %entry ], [ null, %if.end ], [ %call6, %if.end5 ], [ null, %lor.lhs.false ]
  tail call void @BN_free(%struct.bignum_st* noundef %p.0) #4
  tail call void @BN_free(%struct.bignum_st* noundef %call) #4
  ret %struct.evp_pkey_st* %dhpkey.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare dso_local i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local %struct.bignum_st* @BN_get_rfc3526_prime_2048(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @get_dh_from_pg_bn(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %type, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %g, %struct.bignum_st* noundef %q) unnamed_addr #0 {
entry:
  %dhpkey = alloca %struct.evp_pkey_st*, align 8
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %type, i8* noundef null) #4
  %0 = bitcast %struct.evp_pkey_st** %dhpkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %dhpkey, align 8, !tbaa !3
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %call, null
  br i1 %cmp, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef nonnull %call) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #4
  %cmp3 = icmp eq %struct.ossl_param_bld_st* %call2, null
  br i1 %cmp3, label %err, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.end
  %call5 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.bignum_st* noundef %p) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct.bignum_st* noundef %g) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %cmp11.not = icmp eq %struct.bignum_st* %q, null
  br i1 %cmp11.not, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false10
  %call12 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct.bignum_st* noundef nonnull %q) #4
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %if.end15

if.end15:                                         ; preds = %land.lhs.true, %lor.lhs.false10
  %call16 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef nonnull %call2) #4
  %cmp17 = icmp eq %struct.ossl_param_st* %call16, null
  br i1 %cmp17, label %err, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.end15
  %call19 = call i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef nonnull %call, %struct.evp_pkey_st** noundef nonnull %dhpkey, i32 noundef 132, %struct.ossl_param_st* noundef nonnull %call16) #4
  br label %err

err:                                              ; preds = %lor.lhs.false18, %if.end15, %if.end, %lor.lhs.false4, %lor.lhs.false7, %land.lhs.true, %entry, %lor.lhs.false
  %tmpl.0 = phi %struct.ossl_param_bld_st* [ null, %entry ], [ null, %if.end ], [ %call2, %if.end15 ], [ %call2, %lor.lhs.false18 ], [ %call2, %land.lhs.true ], [ %call2, %lor.lhs.false7 ], [ %call2, %lor.lhs.false4 ], [ null, %lor.lhs.false ]
  %params.0 = phi %struct.ossl_param_st* [ null, %entry ], [ null, %if.end ], [ null, %if.end15 ], [ %call16, %lor.lhs.false18 ], [ null, %land.lhs.true ], [ null, %lor.lhs.false7 ], [ null, %lor.lhs.false4 ], [ null, %lor.lhs.false ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #4
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %params.0) #4
  call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %tmpl.0) #4
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %dhpkey, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret %struct.evp_pkey_st* %1
}

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() local_unnamed_addr #2

declare dso_local i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef, i32 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_PARAM_free(%struct.ossl_param_st* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
