; ModuleID = 'crypto/asn1/x_info.c'
source_filename = "crypto/asn1/x_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X509_info_st = type { %struct.x509_st*, %struct.X509_crl_st*, %struct.private_key_st*, %struct.evp_cipher_info_st, i32, i8* }
%struct.x509_st = type opaque
%struct.X509_crl_st = type opaque
%struct.private_key_st = type { i32, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*, i32, i8*, i32, %struct.evp_cipher_info_st }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_pkey_st = type opaque
%struct.evp_cipher_info_st = type { %struct.evp_cipher_st*, [16 x i8] }
%struct.evp_cipher_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/asn1/x_info.c\00", align 1
@__func__.X509_INFO_new = private unnamed_addr constant [14 x i8] c"X509_INFO_new\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_info_st* @X509_INFO_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 64, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 20) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 22, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.X509_INFO_new, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #2
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.X509_info_st*
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.X509_info_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.X509_info_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @X509_INFO_free(%struct.X509_info_st* noundef %x) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_info_st* %x, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %x509 = getelementptr inbounds %struct.X509_info_st, %struct.X509_info_st* %x, i64 0, i32 0
  %0 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !4
  tail call void @X509_free(%struct.x509_st* noundef %0) #2
  %crl = getelementptr inbounds %struct.X509_info_st, %struct.X509_info_st* %x, i64 0, i32 1
  %1 = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl, align 8, !tbaa !11
  tail call void @X509_CRL_free(%struct.X509_crl_st* noundef %1) #2
  %x_pkey = getelementptr inbounds %struct.X509_info_st, %struct.X509_info_st* %x, i64 0, i32 2
  %2 = load %struct.private_key_st*, %struct.private_key_st** %x_pkey, align 8, !tbaa !12
  tail call void @X509_PKEY_free(%struct.private_key_st* noundef %2) #2
  %enc_data = getelementptr inbounds %struct.X509_info_st, %struct.X509_info_st* %x, i64 0, i32 5
  %3 = load i8*, i8** %enc_data, align 8, !tbaa !13
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 37) #2
  %4 = bitcast %struct.X509_info_st* %x to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 38) #2
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #1

declare void @X509_CRL_free(%struct.X509_crl_st* noundef) local_unnamed_addr #1

declare void @X509_PKEY_free(%struct.private_key_st* noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"X509_info_st", !6, i64 0, !6, i64 8, !6, i64 16, !9, i64 24, !10, i64 48, !6, i64 56}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"evp_cipher_info_st", !6, i64 0, !7, i64 8}
!10 = !{!"int", !7, i64 0}
!11 = !{!5, !6, i64 8}
!12 = !{!5, !6, i64 16}
!13 = !{!5, !6, i64 56}
