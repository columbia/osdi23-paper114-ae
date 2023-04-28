; ModuleID = 'crypto/pkcs7/bio_pk7.c'
source_filename = "crypto/pkcs7/bio_pk7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.pkcs7_st = type { i8*, i64, i32, i32, %struct.asn1_object_st*, %union.anon, %struct.PKCS7_CTX_st }
%struct.asn1_object_st = type opaque
%union.anon = type { i8* }
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ASN1_VALUE_st = type opaque
%struct.ASN1_ITEM_st = type opaque

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @BIO_new_PKCS7(%struct.bio_st* noundef %out, %struct.pkcs7_st* noundef %p7) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.pkcs7_st* %p7 to %struct.ASN1_VALUE_st*
  %call = tail call %struct.ASN1_ITEM_st* @PKCS7_it() #2
  %call1 = tail call %struct.bio_st* @BIO_new_NDEF(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef %call) #2
  ret %struct.bio_st* %call1
}

declare %struct.bio_st* @BIO_new_NDEF(%struct.bio_st* noundef, %struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @PKCS7_it() local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
