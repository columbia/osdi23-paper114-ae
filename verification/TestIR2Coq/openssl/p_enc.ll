; ModuleID = 'crypto/evp/p_enc.c'
source_filename = "crypto/evp/p_enc.c"
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

@.str = private unnamed_addr constant [19 x i8] c"crypto/evp/p_enc.c\00", align 1
@__func__.EVP_PKEY_encrypt_old = private unnamed_addr constant [21 x i8] c"EVP_PKEY_encrypt_old\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_encrypt_old(i8* noundef %ek, i8* noundef %key, i32 noundef %key_len, %struct.evp_pkey_st* noundef %pubk) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef %pubk) #2
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 27, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.EVP_PKEY_encrypt_old, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 106, i8* noundef null) #2
  br label %err

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.rsa_st* @evp_pkey_get0_RSA_int(%struct.evp_pkey_st* noundef %pubk) #2
  %call2 = tail call i32 @RSA_public_encrypt(i32 noundef %key_len, i8* noundef %key, i8* noundef %ek, %struct.rsa_st* noundef %call1, i32 noundef 1) #2
  br label %err

err:                                              ; preds = %if.end, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ %call2, %if.end ]
  ret i32 %ret.0
}

declare i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @RSA_public_encrypt(i32 noundef, i8* noundef, i8* noundef, %struct.rsa_st* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.rsa_st* @evp_pkey_get0_RSA_int(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
