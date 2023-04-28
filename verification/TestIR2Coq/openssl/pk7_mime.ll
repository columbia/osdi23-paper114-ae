; ModuleID = 'crypto/pkcs7/pk7_mime.c'
source_filename = "crypto/pkcs7/pk7_mime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs7_st = type { i8*, i64, i32, i32, %struct.asn1_object_st*, %union.anon, %struct.PKCS7_CTX_st }
%struct.asn1_object_st = type opaque
%union.anon = type { i8* }
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.bio_st = type opaque
%struct.ASN1_VALUE_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.pkcs7_signed_st = type { %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509*, %struct.stack_st_X509_CRL*, %struct.stack_st_PKCS7_SIGNER_INFO*, %struct.pkcs7_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509_ALGOR = type opaque
%struct.stack_st_X509 = type opaque
%struct.stack_st_X509_CRL = type opaque
%struct.stack_st_PKCS7_SIGNER_INFO = type opaque

@.str = private unnamed_addr constant [6 x i8] c"PKCS7\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS7_bio_stream(%struct.bio_st* noundef %out, %struct.pkcs7_st* noundef %p7, %struct.bio_st* noundef %in, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.pkcs7_st* %p7 to %struct.ASN1_VALUE_st*
  %call = tail call %struct.ASN1_ITEM_st* @PKCS7_it() #2
  %call1 = tail call i32 @i2d_ASN1_bio_stream(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st* noundef %0, %struct.bio_st* noundef %in, i32 noundef %flags, %struct.ASN1_ITEM_st* noundef %call) #2
  ret i32 %call1
}

declare i32 @i2d_ASN1_bio_stream(%struct.bio_st* noundef, %struct.ASN1_VALUE_st* noundef, %struct.bio_st* noundef, i32 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @PKCS7_it() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_PKCS7_stream(%struct.bio_st* noundef %out, %struct.pkcs7_st* noundef %p7, %struct.bio_st* noundef %in, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.pkcs7_st* %p7 to %struct.ASN1_VALUE_st*
  %call = tail call %struct.ASN1_ITEM_st* @PKCS7_it() #2
  %call1 = tail call i32 @PEM_write_bio_ASN1_stream(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st* noundef %0, %struct.bio_st* noundef %in, i32 noundef %flags, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.ASN1_ITEM_st* noundef %call) #2
  ret i32 %call1
}

declare i32 @PEM_write_bio_ASN1_stream(%struct.bio_st* noundef, %struct.ASN1_VALUE_st* noundef, %struct.bio_st* noundef, i32 noundef, i8* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SMIME_write_PKCS7(%struct.bio_st* noundef %bio, %struct.pkcs7_st* noundef %p7, %struct.bio_st* noundef %data, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 4
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !4
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #2
  %call1 = tail call %struct.PKCS7_CTX_st* @ossl_pkcs7_get0_ctx(%struct.pkcs7_st* noundef %p7) #2
  %cmp = icmp eq i32 %call, 22
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %p7, i64 0, i32 5
  %sign = bitcast %union.anon* %d to %struct.pkcs7_signed_st**
  %1 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !12
  %md_algs = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %1, i64 0, i32 1
  %2 = load %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509_ALGOR** %md_algs, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %mdalgs.0 = phi %struct.stack_st_X509_ALGOR* [ %2, %if.then ], [ null, %entry ]
  %xor = xor i32 %flags, 1024
  %3 = bitcast %struct.pkcs7_st* %p7 to %struct.ASN1_VALUE_st*
  %call2 = tail call %struct.ASN1_ITEM_st* @PKCS7_it() #2
  %call3 = tail call %struct.ossl_lib_ctx_st* @ossl_pkcs7_ctx_get0_libctx(%struct.PKCS7_CTX_st* noundef %call1) #2
  %call4 = tail call i8* @ossl_pkcs7_ctx_get0_propq(%struct.PKCS7_CTX_st* noundef %call1) #2
  %call5 = tail call i32 @SMIME_write_ASN1_ex(%struct.bio_st* noundef %bio, %struct.ASN1_VALUE_st* noundef %3, %struct.bio_st* noundef %data, i32 noundef %xor, i32 noundef %call, i32 noundef 0, %struct.stack_st_X509_ALGOR* noundef %mdalgs.0, %struct.ASN1_ITEM_st* noundef %call2, %struct.ossl_lib_ctx_st* noundef %call3, i8* noundef %call4) #2
  ret i32 %call5
}

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare %struct.PKCS7_CTX_st* @ossl_pkcs7_get0_ctx(%struct.pkcs7_st* noundef) local_unnamed_addr #1

declare i32 @SMIME_write_ASN1_ex(%struct.bio_st* noundef, %struct.ASN1_VALUE_st* noundef, %struct.bio_st* noundef, i32 noundef, i32 noundef, i32 noundef, %struct.stack_st_X509_ALGOR* noundef, %struct.ASN1_ITEM_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.ossl_lib_ctx_st* @ossl_pkcs7_ctx_get0_libctx(%struct.PKCS7_CTX_st* noundef) local_unnamed_addr #1

declare i8* @ossl_pkcs7_ctx_get0_propq(%struct.PKCS7_CTX_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_st* @SMIME_read_PKCS7_ex(%struct.bio_st* noundef %bio, %struct.bio_st** noundef %bcont, %struct.pkcs7_st** noundef %p7) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.pkcs7_st** %p7, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct.pkcs7_st*, %struct.pkcs7_st** %p7, align 8, !tbaa !15
  %cmp1.not = icmp eq %struct.pkcs7_st* %0, null
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %libctx2 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %0, i64 0, i32 6, i32 0
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx2, align 8, !tbaa !16
  %propq4 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %0, i64 0, i32 6, i32 1
  %2 = load i8*, i8** %propq4, align 8, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %libctx.0 = phi %struct.ossl_lib_ctx_st* [ %1, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  %propq.0 = phi i8* [ %2, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  %call = tail call %struct.ASN1_ITEM_st* @PKCS7_it() #2
  %3 = bitcast %struct.pkcs7_st** %p7 to %struct.ASN1_VALUE_st**
  %call5 = tail call %struct.ASN1_VALUE_st* @SMIME_read_ASN1_ex(%struct.bio_st* noundef %bio, i32 noundef 0, %struct.bio_st** noundef %bcont, %struct.ASN1_ITEM_st* noundef %call, %struct.ASN1_VALUE_st** noundef %3, %struct.ossl_lib_ctx_st* noundef %libctx.0, i8* noundef %propq.0) #2
  %4 = bitcast %struct.ASN1_VALUE_st* %call5 to %struct.pkcs7_st*
  %cmp6.not = icmp eq %struct.ASN1_VALUE_st* %call5, null
  br i1 %cmp6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  tail call void @ossl_pkcs7_resolve_libctx(%struct.pkcs7_st* noundef nonnull %4) #2
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  ret %struct.pkcs7_st* %4
}

declare %struct.ASN1_VALUE_st* @SMIME_read_ASN1_ex(%struct.bio_st* noundef, i32 noundef, %struct.bio_st** noundef, %struct.ASN1_ITEM_st* noundef, %struct.ASN1_VALUE_st** noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare void @ossl_pkcs7_resolve_libctx(%struct.pkcs7_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_st* @SMIME_read_PKCS7(%struct.bio_st* noundef %bio, %struct.bio_st** noundef %bcont) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.pkcs7_st* @SMIME_read_PKCS7_ex(%struct.bio_st* noundef %bio, %struct.bio_st** noundef %bcont, %struct.pkcs7_st** noundef null) #3
  ret %struct.pkcs7_st* %call
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
!4 = !{!5, !6, i64 24}
!5 = !{!"pkcs7_st", !6, i64 0, !9, i64 8, !10, i64 16, !10, i64 20, !6, i64 24, !7, i64 32, !11, i64 40}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!"PKCS7_CTX_st", !6, i64 0, !6, i64 8}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !6, i64 8}
!14 = !{!"pkcs7_signed_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!15 = !{!6, !6, i64 0}
!16 = !{!5, !6, i64 40}
!17 = !{!5, !6, i64 48}
