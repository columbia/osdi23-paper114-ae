; ModuleID = 'crypto/pkcs12/p12_p8e.c'
source_filename = "crypto/pkcs12/p12_p8e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X509_sig_st = type { %struct.X509_algor_st*, %struct.asn1_string_st* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_cipher_st = type opaque
%struct.pkcs8_priv_key_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_cipher_ctx_st = type opaque
%struct.evp_md_st = type opaque
%struct.ASN1_ITEM_st = type opaque

@.str = private unnamed_addr constant [24 x i8] c"crypto/pkcs12/p12_p8e.c\00", align 1
@__func__.PKCS8_encrypt_ex = private unnamed_addr constant [17 x i8] c"PKCS8_encrypt_ex\00", align 1
@__func__.PKCS8_set0_pbe_ex = private unnamed_addr constant [18 x i8] c"PKCS8_set0_pbe_ex\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_sig_st* @PKCS8_encrypt_ex(i32 noundef %pbe_nid, %struct.evp_cipher_st* noundef %cipher, i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %iter, %struct.pkcs8_priv_key_info_st* noundef %p8inf, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %pbe_nid, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq %struct.evp_cipher_st* %cipher, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 27, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS8_encrypt_ex, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786690, i8* noundef null) #2
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call = tail call %struct.X509_algor_st* @PKCS5_pbe2_set_iv_ex(%struct.evp_cipher_st* noundef nonnull %cipher, i32 noundef %iter, i8* noundef %salt, i32 noundef %saltlen, i8* noundef null, i32 noundef -1, %struct.ossl_lib_ctx_st* noundef %libctx) #2
  br label %if.end15

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @ERR_set_mark() #2
  %call4 = tail call i32 @EVP_PBE_find(i32 noundef 1, i32 noundef %pbe_nid, i32* noundef null, i32* noundef null, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)** noundef null) #2
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.else11, label %if.then5

if.then5:                                         ; preds = %if.else
  %call6 = tail call i32 @ERR_clear_last_mark() #2
  %cmp7 = icmp eq %struct.evp_cipher_st* %cipher, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then5
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS8_encrypt_ex, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786690, i8* noundef null) #2
  br label %cleanup

if.end9:                                          ; preds = %if.then5
  %call10 = tail call %struct.X509_algor_st* @PKCS5_pbe2_set_iv_ex(%struct.evp_cipher_st* noundef nonnull %cipher, i32 noundef %iter, i8* noundef %salt, i32 noundef %saltlen, i8* noundef null, i32 noundef %pbe_nid, %struct.ossl_lib_ctx_st* noundef %libctx) #2
  br label %if.end15

if.else11:                                        ; preds = %if.else
  %call12 = tail call i32 @ERR_pop_to_mark() #2
  %call13 = tail call %struct.X509_algor_st* @PKCS5_pbe_set_ex(i32 noundef %pbe_nid, i32 noundef %iter, i8* noundef %salt, i32 noundef %saltlen, %struct.ossl_lib_ctx_st* noundef %libctx) #2
  br label %if.end15

if.end15:                                         ; preds = %if.end9, %if.else11, %if.end
  %pbe.0 = phi %struct.X509_algor_st* [ %call, %if.end ], [ %call10, %if.end9 ], [ %call13, %if.else11 ]
  %cmp16 = icmp eq %struct.X509_algor_st* %pbe.0, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS8_encrypt_ex, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 524301, i8* noundef null) #2
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  %call19 = tail call %struct.X509_sig_st* @PKCS8_set0_pbe_ex(i8* noundef %pass, i32 noundef %passlen, %struct.pkcs8_priv_key_info_st* noundef %p8inf, %struct.X509_algor_st* noundef nonnull %pbe.0, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #3
  %cmp20 = icmp eq %struct.X509_sig_st* %call19, null
  br i1 %cmp20, label %if.then21, label %cleanup

if.then21:                                        ; preds = %if.end18
  tail call void @X509_ALGOR_free(%struct.X509_algor_st* noundef nonnull %pbe.0) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then21, %if.then17, %if.then8, %if.then2
  %retval.0 = phi %struct.X509_sig_st* [ null, %if.then2 ], [ null, %if.then17 ], [ null, %if.then21 ], [ null, %if.then8 ], [ %call19, %if.end18 ]
  ret %struct.X509_sig_st* %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare %struct.X509_algor_st* @PKCS5_pbe2_set_iv_ex(%struct.evp_cipher_st* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare i32 @ERR_set_mark() local_unnamed_addr #1

declare i32 @EVP_PBE_find(i32 noundef, i32 noundef, i32* noundef, i32* noundef, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)** noundef) local_unnamed_addr #1

declare i32 @ERR_clear_last_mark() local_unnamed_addr #1

declare i32 @ERR_pop_to_mark() local_unnamed_addr #1

declare %struct.X509_algor_st* @PKCS5_pbe_set_ex(i32 noundef, i32 noundef, i8* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_sig_st* @PKCS8_set0_pbe_ex(i8* noundef %pass, i32 noundef %passlen, %struct.pkcs8_priv_key_info_st* noundef %p8inf, %struct.X509_algor_st* noundef %pbe, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @PKCS8_PRIV_KEY_INFO_it() #2
  %0 = bitcast %struct.pkcs8_priv_key_info_st* %p8inf to i8*
  %call1 = tail call %struct.asn1_string_st* @PKCS12_item_i2d_encrypt_ex(%struct.X509_algor_st* noundef %pbe, %struct.ASN1_ITEM_st* noundef %call, i8* noundef %pass, i32 noundef %passlen, i8* noundef %0, i32 noundef 1, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) #2
  %tobool.not = icmp eq %struct.asn1_string_st* %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.PKCS8_set0_pbe_ex, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 103, i8* noundef null) #2
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @CRYPTO_zalloc(i64 noundef 16, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 84) #2
  %cmp = icmp eq i8* %call2, null
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.PKCS8_set0_pbe_ex, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786688, i8* noundef null) #2
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef nonnull %call1) #2
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = bitcast i8* %call2 to %struct.X509_sig_st*
  %algor = bitcast i8* %call2 to %struct.X509_algor_st**
  store %struct.X509_algor_st* %pbe, %struct.X509_algor_st** %algor, align 8, !tbaa !4
  %digest = getelementptr inbounds i8, i8* %call2, i64 8
  %2 = bitcast i8* %digest to %struct.asn1_string_st**
  store %struct.asn1_string_st* %call1, %struct.asn1_string_st** %2, align 8, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  %retval.0 = phi %struct.X509_sig_st* [ null, %if.then3 ], [ %1, %if.end4 ], [ null, %if.then ]
  ret %struct.X509_sig_st* %retval.0
}

declare void @X509_ALGOR_free(%struct.X509_algor_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_sig_st* @PKCS8_encrypt(i32 noundef %pbe_nid, %struct.evp_cipher_st* noundef %cipher, i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %iter, %struct.pkcs8_priv_key_info_st* noundef %p8inf) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.X509_sig_st* @PKCS8_encrypt_ex(i32 noundef %pbe_nid, %struct.evp_cipher_st* noundef %cipher, i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %iter, %struct.pkcs8_priv_key_info_st* noundef %p8inf, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #3
  ret %struct.X509_sig_st* %call
}

declare %struct.asn1_string_st* @PKCS12_item_i2d_encrypt_ex(%struct.X509_algor_st* noundef, %struct.ASN1_ITEM_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @PKCS8_PRIV_KEY_INFO_it() local_unnamed_addr #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_sig_st* @PKCS8_set0_pbe(i8* noundef %pass, i32 noundef %passlen, %struct.pkcs8_priv_key_info_st* noundef %p8inf, %struct.X509_algor_st* noundef %pbe) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.X509_sig_st* @PKCS8_set0_pbe_ex(i8* noundef %pass, i32 noundef %passlen, %struct.pkcs8_priv_key_info_st* noundef %p8inf, %struct.X509_algor_st* noundef %pbe, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #3
  ret %struct.X509_sig_st* %call
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
!5 = !{!"X509_sig_st", !6, i64 0, !6, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 8}
