; ModuleID = 'crypto/asn1/a_octet.c'
source_filename = "crypto/asn1/a_octet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_string_st = type { i32, i32, i8*, i64 }

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_OCTET_STRING_dup(%struct.asn1_string_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_dup(%struct.asn1_string_st* noundef %x) #2
  ret %struct.asn1_string_st* %call
}

declare %struct.asn1_string_st* @ASN1_STRING_dup(%struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef %a, %struct.asn1_string_st* noundef %b) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ASN1_STRING_cmp(%struct.asn1_string_st* noundef %a, %struct.asn1_string_st* noundef %b) #2
  ret i32 %call
}

declare i32 @ASN1_STRING_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef %x, i8* noundef %d, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef %x, i8* noundef %d, i32 noundef %len) #2
  ret i32 %call
}

declare i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
