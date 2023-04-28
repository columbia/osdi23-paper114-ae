; ModuleID = 'crypto/pem/pem_x509.c'
source_filename = "crypto/pem/pem_x509.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_st = type opaque
%struct.bio_st = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.evp_cipher_st = type opaque

@.str = private unnamed_addr constant [12 x i8] c"CERTIFICATE\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef %bp, %struct.x509_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.x509_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read_bio(i8* (i8**, i8**, i64)* noundef bitcast (%struct.x509_st* (%struct.x509_st**, i8**, i64)* @d2i_X509 to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.bio_st* noundef %bp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #2
  %1 = bitcast i8* %call to %struct.x509_st*
  ret %struct.x509_st* %1
}

declare i8* @PEM_ASN1_read_bio(i8* (i8**, i8**, i64)* noundef, i8* noundef, %struct.bio_st* noundef, i8** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.x509_st* @d2i_X509(%struct.x509_st** noundef, i8** noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.x509_st* @PEM_read_X509(%struct._IO_FILE* noundef %fp, %struct.x509_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.x509_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read(i8* (i8**, i8**, i64)* noundef bitcast (%struct.x509_st* (%struct.x509_st**, i8**, i64)* @d2i_X509 to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct._IO_FILE* noundef %fp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #2
  %1 = bitcast i8* %call to %struct.x509_st*
  ret %struct.x509_st* %1
}

declare i8* @PEM_ASN1_read(i8* (i8**, i8**, i64)* noundef, i8* noundef, %struct._IO_FILE* noundef, i8** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_X509(%struct.bio_st* noundef %out, %struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.x509_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.x509_st*, i8**)* @i2d_X509 to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.bio_st* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #2
  ret i32 %call
}

declare i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef, i8* noundef, %struct.bio_st* noundef, i8* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @i2d_X509(%struct.x509_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_X509(%struct._IO_FILE* noundef %out, %struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.x509_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.x509_st*, i8**)* @i2d_X509 to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct._IO_FILE* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #2
  ret i32 %call
}

declare i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef, i8* noundef, %struct._IO_FILE* noundef, i8* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
