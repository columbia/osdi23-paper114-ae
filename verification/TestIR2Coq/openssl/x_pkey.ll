; ModuleID = 'crypto/asn1/x_pkey.c'
source_filename = "crypto/asn1/x_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.private_key_st = type { i32, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*, i32, i8*, i32, %struct.evp_cipher_info_st }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_pkey_st = type opaque
%struct.evp_cipher_info_st = type { %struct.evp_cipher_st*, [16 x i8] }
%struct.evp_cipher_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/asn1/x_pkey.c\00", align 1
@__func__.X509_PKEY_new = private unnamed_addr constant [14 x i8] c"X509_PKEY_new\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.private_key_st* @X509_PKEY_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 80, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 20) #2
  %0 = bitcast i8* %call to %struct.private_key_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.X509_algor_st* @X509_ALGOR_new() #2
  %enc_algor = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %enc_algor to %struct.X509_algor_st**
  store %struct.X509_algor_st* %call1, %struct.X509_algor_st** %1, align 8, !tbaa !4
  %call2 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #2
  %enc_pkey = getelementptr inbounds i8, i8* %call, i64 16
  %2 = bitcast i8* %enc_pkey to %struct.asn1_string_st**
  store %struct.asn1_string_st* %call2, %struct.asn1_string_st** %2, align 8, !tbaa !11
  %3 = load %struct.X509_algor_st*, %struct.X509_algor_st** %1, align 8, !tbaa !4
  %cmp4 = icmp eq %struct.X509_algor_st* %3, null
  %cmp6 = icmp eq %struct.asn1_string_st* %call2, null
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp6
  br i1 %or.cond, label %err, label %cleanup

err:                                              ; preds = %if.end, %entry
  tail call void @X509_PKEY_free(%struct.private_key_st* noundef %0) #3
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.X509_PKEY_new, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %err
  %retval.0 = phi %struct.private_key_st* [ null, %err ], [ %0, %if.end ]
  ret %struct.private_key_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.X509_algor_st* @X509_ALGOR_new() local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @X509_PKEY_free(%struct.private_key_st* noundef %x) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.private_key_st* %x, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %enc_algor = getelementptr inbounds %struct.private_key_st, %struct.private_key_st* %x, i64 0, i32 1
  %0 = load %struct.X509_algor_st*, %struct.X509_algor_st** %enc_algor, align 8, !tbaa !4
  tail call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %0) #2
  %enc_pkey = getelementptr inbounds %struct.private_key_st, %struct.private_key_st* %x, i64 0, i32 2
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %enc_pkey, align 8, !tbaa !11
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %1) #2
  %dec_pkey = getelementptr inbounds %struct.private_key_st, %struct.private_key_st* %x, i64 0, i32 3
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %dec_pkey, align 8, !tbaa !12
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %2) #2
  %key_free = getelementptr inbounds %struct.private_key_st, %struct.private_key_st* %x, i64 0, i32 6
  %3 = load i32, i32* %key_free, align 8, !tbaa !13
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %key_data = getelementptr inbounds %struct.private_key_st, %struct.private_key_st* %x, i64 0, i32 5
  %4 = load i8*, i8** %key_data, align 8, !tbaa !14
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 45) #2
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %5 = bitcast %struct.private_key_st* %x to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 46) #2
  br label %return

return:                                           ; preds = %entry, %if.end2
  ret void
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare void @X509_ALGOR_free(%struct.X509_algor_st* noundef) local_unnamed_addr #1

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

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
!4 = !{!5, !9, i64 8}
!5 = !{!"private_key_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !9, i64 40, !6, i64 48, !10, i64 56}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"evp_cipher_info_st", !9, i64 0, !7, i64 8}
!11 = !{!5, !9, i64 16}
!12 = !{!5, !9, i64 24}
!13 = !{!5, !6, i64 48}
!14 = !{!5, !9, i64 40}
