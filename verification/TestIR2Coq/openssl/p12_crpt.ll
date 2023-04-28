; ModuleID = 'crypto/pkcs12/p12_crpt.c'
source_filename = "crypto/pkcs12/p12_crpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_cipher_ctx_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_md_ctx_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.PBEPARAM_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.engine_st = type opaque

@.str = private unnamed_addr constant [25 x i8] c"crypto/pkcs12/p12_crpt.c\00", align 1
@__func__.PKCS12_PBE_keyivgen_ex = private unnamed_addr constant [23 x i8] c"PKCS12_PBE_keyivgen_ex\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define void @PKCS12_PBE_add() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_PBE_keyivgen_ex(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %pass, i32 noundef %passlen, %struct.asn1_type_st* noundef %param, %struct.evp_cipher_st* noundef %cipher, %struct.evp_md_st* noundef %md, i32 noundef %en_de, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #1 {
entry:
  %key = alloca [64 x i8], align 16
  %iv = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #4
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #4
  %cmp = icmp eq %struct.evp_cipher_st* %cipher, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ASN1_ITEM_st* @PBEPARAM_it() #5
  %call1 = tail call i8* @ASN1_TYPE_unpack_sequence(%struct.ASN1_ITEM_st* noundef %call, %struct.asn1_type_st* noundef %param) #5
  %2 = bitcast i8* %call1 to %struct.PBEPARAM_st*
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.PKCS12_PBE_keyivgen_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 101, i8* noundef null) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %iter5 = getelementptr inbounds i8, i8* %call1, i64 8
  %3 = bitcast i8* %iter5 to %struct.asn1_string_st**
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %3, align 8, !tbaa !4
  %cmp6 = icmp eq %struct.asn1_string_st* %4, null
  br i1 %cmp6, label %if.end10, label %if.else

if.else:                                          ; preds = %if.end4
  %call9 = tail call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef nonnull %4) #5
  %conv = trunc i64 %call9 to i32
  br label %if.end10

if.end10:                                         ; preds = %if.end4, %if.else
  %iter.0 = phi i32 [ %conv, %if.else ], [ 1, %if.end4 ]
  %salt11 = bitcast i8* %call1 to %struct.asn1_string_st**
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %salt11, align 8, !tbaa !9
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %5, i64 0, i32 2
  %6 = load i8*, i8** %data, align 8, !tbaa !10
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %5, i64 0, i32 0
  %7 = load i32, i32* %length, align 8, !tbaa !14
  %call13 = tail call i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef nonnull %cipher) #5
  %call15 = call i32 @PKCS12_key_gen_utf8_ex(i8* noundef %pass, i32 noundef %passlen, i8* noundef %6, i32 noundef %7, i32 noundef 1, i32 noundef %iter.0, i32 noundef %call13, i8* noundef nonnull %0, %struct.evp_md_st* noundef %md, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end10
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.PKCS12_PBE_keyivgen_ex, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 107, i8* noundef null) #5
  call void @PBEPARAM_free(%struct.PBEPARAM_st* noundef nonnull %2) #5
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %call18 = call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef nonnull %cipher) #5
  %cmp19 = icmp sgt i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end29

if.then21:                                        ; preds = %if.end17
  %call22 = call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef nonnull %cipher) #5
  %call24 = call i32 @PKCS12_key_gen_utf8_ex(i8* noundef %pass, i32 noundef %passlen, i8* noundef %6, i32 noundef %7, i32 noundef 2, i32 noundef %iter.0, i32 noundef %call22, i8* noundef nonnull %1, %struct.evp_md_st* noundef %md, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.then21
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.PKCS12_PBE_keyivgen_ex, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 106, i8* noundef null) #5
  call void @PBEPARAM_free(%struct.PBEPARAM_st* noundef nonnull %2) #5
  br label %cleanup

if.end29:                                         ; preds = %if.end17, %if.then21
  %piv.0 = phi i8* [ %1, %if.then21 ], [ null, %if.end17 ]
  call void @PBEPARAM_free(%struct.PBEPARAM_st* noundef nonnull %2) #5
  %call31 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef nonnull %cipher, %struct.engine_st* noundef null, i8* noundef nonnull %0, i8* noundef %piv.0, i32 noundef %en_de) #5
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 64) #5
  call void @OPENSSL_cleanse(i8* noundef nonnull %1, i64 noundef 16) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end29, %if.then26, %if.then16, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %call31, %if.end29 ], [ 0, %if.then26 ], [ 0, %if.then16 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @ASN1_TYPE_unpack_sequence(%struct.ASN1_ITEM_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #3

declare %struct.ASN1_ITEM_st* @PBEPARAM_it() local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #3

declare i32 @PKCS12_key_gen_utf8_ex(i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef, %struct.evp_md_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare void @PBEPARAM_free(%struct.PBEPARAM_st* noundef) local_unnamed_addr #3

declare i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_PBE_keyivgen(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %pass, i32 noundef %passlen, %struct.asn1_type_st* noundef %param, %struct.evp_cipher_st* noundef %cipher, %struct.evp_md_st* noundef %md, i32 noundef %en_de) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @PKCS12_PBE_keyivgen_ex(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %pass, i32 noundef %passlen, %struct.asn1_type_st* noundef %param, %struct.evp_cipher_st* noundef %cipher, %struct.evp_md_st* noundef %md, i32 noundef %en_de, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret i32 %call
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 8}
!5 = !{!"PBEPARAM_st", !6, i64 0, !6, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 0}
!10 = !{!11, !6, i64 8}
!11 = !{!"asn1_string_st", !12, i64 0, !12, i64 4, !6, i64 8, !13, i64 16}
!12 = !{!"int", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!11, !12, i64 0}
