; ModuleID = 'crypto/evp/p_legacy.c'
source_filename = "crypto/evp/p_legacy.c"
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
%struct.evp_keymgmt_st = type { i32, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, void (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i8* (i8*, i32, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, void (i8*)*, i8* (i8*, i64)*, i8* (i32)*, i32 (i8*, i32)*, i32 (i8*, i32, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i32)*, i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, %struct.ossl_param_st* (i32)*, i8* (i8*, i32)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon = type { i32, i32, i32 }
%struct.rsa_st = type opaque
%struct.ec_key_st = type opaque

@.str = private unnamed_addr constant [22 x i8] c"crypto/evp/p_legacy.c\00", align 1
@__func__.evp_pkey_get0_RSA_int = private unnamed_addr constant [22 x i8] c"evp_pkey_get0_RSA_int\00", align 1
@__func__.evp_pkey_get0_EC_KEY_int = private unnamed_addr constant [25 x i8] c"evp_pkey_get0_EC_KEY_int\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_set1_RSA(%struct.evp_pkey_st* noundef %pkey, %struct.rsa_st* noundef %key) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.rsa_st* %key to i8*
  %call = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef 6, i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @RSA_up_ref(%struct.rsa_st* noundef %key) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

declare i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare i32 @RSA_up_ref(%struct.rsa_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @evp_pkey_get0_RSA_int(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !4
  switch i32 %0, label %if.then [
    i32 6, label %if.end
    i32 912, label %if.end
  ]

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.evp_pkey_get0_RSA_int, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 127, i8* noundef null) #2
  br label %return

if.end:                                           ; preds = %entry, %entry
  %call = tail call i8* @evp_pkey_get_legacy(%struct.evp_pkey_st* noundef nonnull %pkey) #2
  %1 = bitcast i8* %call to %struct.rsa_st*
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.rsa_st* [ null, %if.then ], [ %1, %if.end ]
  ret %struct.rsa_st* %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i8* @evp_pkey_get_legacy(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.rsa_st* @evp_pkey_get0_RSA_int(%struct.evp_pkey_st* noundef %pkey) #3
  ret %struct.rsa_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @EVP_PKEY_get1_RSA(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.rsa_st* @evp_pkey_get0_RSA_int(%struct.evp_pkey_st* noundef %pkey) #3
  %cmp.not = icmp eq %struct.rsa_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @RSA_up_ref(%struct.rsa_st* noundef nonnull %call) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.rsa_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_set1_EC_KEY(%struct.evp_pkey_st* noundef %pkey, %struct.ec_key_st* noundef %key) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EC_KEY_up_ref(%struct.ec_key_st* noundef %key) #2
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.ec_key_st* %key to i8*
  %call1 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %pkey, i32 noundef 408, i8* noundef %0) #2
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %return

if.then3:                                         ; preds = %if.end
  tail call void @EC_KEY_free(%struct.ec_key_st* noundef %key) #2
  br label %return

return:                                           ; preds = %if.end, %entry, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @EC_KEY_up_ref(%struct.ec_key_st* noundef) local_unnamed_addr #1

declare void @EC_KEY_free(%struct.ec_key_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @evp_pkey_get0_EC_KEY_int(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %pkey) #2
  %cmp.not = icmp eq i32 %call, 408
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.evp_pkey_get0_EC_KEY_int, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 142, i8* noundef null) #2
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @evp_pkey_get_legacy(%struct.evp_pkey_st* noundef %pkey) #2
  %0 = bitcast i8* %call1 to %struct.ec_key_st*
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ec_key_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.ec_key_st* %retval.0
}

declare i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @EVP_PKEY_get0_EC_KEY(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ec_key_st* @evp_pkey_get0_EC_KEY_int(%struct.evp_pkey_st* noundef %pkey) #3
  ret %struct.ec_key_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @EVP_PKEY_get1_EC_KEY(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ec_key_st* @evp_pkey_get0_EC_KEY_int(%struct.evp_pkey_st* noundef %pkey) #3
  %cmp.not = icmp eq %struct.ec_key_st* %call, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @EC_KEY_up_ref(%struct.ec_key_st* noundef nonnull %call) #2
  %tobool.not = icmp eq i32 %call1, 0
  %spec.select = select i1 %tobool.not, %struct.ec_key_st* null, %struct.ec_key_st* %call
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %ret.0 = phi %struct.ec_key_st* [ null, %entry ], [ %spec.select, %land.lhs.true ]
  ret %struct.ec_key_st* %ret.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"evp_pkey_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !9, i64 56, !9, i64 64, !6, i64 72, !6, i64 76, !10, i64 80, !9, i64 96, !9, i64 104, !11, i64 112, !9, i64 120, !11, i64 128, !12, i64 136}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!11 = !{!"long", !7, i64 0}
!12 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
