; ModuleID = 'crypto/asn1/d2i_pu.c'
source_filename = "crypto/asn1/d2i_pu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon }
%struct.evp_pkey_asn1_method_st = type opaque
%struct.engine_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque
%struct.evp_keymgmt_st = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon = type { i32, i32, i32 }
%struct.rsa_st = type opaque
%struct.dsa_st = type opaque
%struct.ec_key_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/asn1/d2i_pu.c\00", align 1
@__func__.d2i_PublicKey = private unnamed_addr constant [14 x i8] c"d2i_PublicKey\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @d2i_PublicKey(i32 noundef %type, %struct.evp_pkey_st** noundef %a, i8** noundef %pp, i64 noundef %length) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_st** %a, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %a, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.evp_pkey_st* %0, null
  br i1 %cmp1, label %if.then, label %if.end4

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #2
  %cmp2 = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.then
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.d2i_PublicKey, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524294, i8* noundef null) #2
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false, %if.then
  %ret.0 = phi %struct.evp_pkey_st* [ %call, %if.then ], [ %0, %lor.lhs.false ]
  %call5 = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef nonnull %ret.0) #2
  %cmp6.not = icmp eq i32 %call5, %type
  br i1 %cmp6.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end4
  %call7 = tail call i32 @EVP_PKEY_set_type(%struct.evp_pkey_st* noundef nonnull %ret.0, i32 noundef %type) #2
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %err, label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %if.end4
  %call10 = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef nonnull %ret.0) #2
  switch i32 %call10, label %err [
    i32 6, label %sw.bb
    i32 116, label %sw.bb15
    i32 408, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.end9
  %call11 = tail call %struct.rsa_st* @d2i_RSAPublicKey(%struct.rsa_st** noundef null, i8** noundef %pp, i64 noundef %length) #2
  %pkey = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %ret.0, i64 0, i32 5
  %rsa = bitcast %union.legacy_pkey_st* %pkey to %struct.rsa_st**
  store %struct.rsa_st* %call11, %struct.rsa_st** %rsa, align 8, !tbaa !8
  %cmp12 = icmp eq %struct.rsa_st* %call11, null
  br i1 %cmp12, label %err, label %sw.epilog

sw.bb15:                                          ; preds = %if.end9
  %pkey16 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %ret.0, i64 0, i32 5
  %dsa = bitcast %union.legacy_pkey_st* %pkey16 to %struct.dsa_st**
  %call17 = tail call %struct.dsa_st* @d2i_DSAPublicKey(%struct.dsa_st** noundef nonnull %dsa, i8** noundef %pp, i64 noundef %length) #2
  %tobool18.not = icmp eq %struct.dsa_st* %call17, null
  br i1 %tobool18.not, label %err, label %sw.epilog

sw.bb21:                                          ; preds = %if.end9
  %pkey22 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %ret.0, i64 0, i32 5
  %ec = bitcast %union.legacy_pkey_st* %pkey22 to %struct.ec_key_st**
  %call23 = tail call %struct.ec_key_st* @o2i_ECPublicKey(%struct.ec_key_st** noundef nonnull %ec, i8** noundef %pp, i64 noundef %length) #2
  %tobool24.not = icmp eq %struct.ec_key_st* %call23, null
  br i1 %tobool24.not, label %err, label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb15, %sw.bb
  br i1 %cmp, label %cleanup, label %if.then28

if.then28:                                        ; preds = %sw.epilog
  store %struct.evp_pkey_st* %ret.0, %struct.evp_pkey_st** %a, align 8, !tbaa !4
  br label %cleanup

err:                                              ; preds = %if.end9, %sw.bb21, %sw.bb15, %sw.bb, %land.lhs.true
  %.sink56 = phi i32 [ 42, %land.lhs.true ], [ 49, %sw.bb ], [ 57, %sw.bb15 ], [ 65, %sw.bb21 ], [ 71, %if.end9 ]
  %.sink = phi i32 [ 524294, %land.lhs.true ], [ 524301, %sw.bb ], [ 524301, %sw.bb15 ], [ 524301, %sw.bb21 ], [ 163, %if.end9 ]
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink56, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.d2i_PublicKey, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef %.sink, i8* noundef null) #2
  br i1 %cmp, label %if.then33, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %err
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %a, align 8, !tbaa !4
  %cmp32.not = icmp eq %struct.evp_pkey_st* %1, %ret.0
  br i1 %cmp32.not, label %cleanup, label %if.then33

if.then33:                                        ; preds = %lor.lhs.false31, %err
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %ret.0) #2
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false31, %if.then33, %sw.epilog, %if.then28, %if.then3
  %retval.0 = phi %struct.evp_pkey_st* [ null, %if.then3 ], [ %ret.0, %if.then28 ], [ %ret.0, %sw.epilog ], [ null, %if.then33 ], [ null, %lor.lhs.false31 ]
  ret %struct.evp_pkey_st* %retval.0
}

declare %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_set_type(%struct.evp_pkey_st* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.rsa_st* @d2i_RSAPublicKey(%struct.rsa_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare %struct.dsa_st* @d2i_DSAPublicKey(%struct.dsa_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare %struct.ec_key_st* @o2i_ECPublicKey(%struct.ec_key_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
