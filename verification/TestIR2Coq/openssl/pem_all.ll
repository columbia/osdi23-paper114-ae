; ModuleID = 'crypto/pem/pem_all.c'
source_filename = "crypto/pem/pem_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X509_req_st = type opaque
%struct.bio_st = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.evp_cipher_st = type opaque
%struct.X509_crl_st = type opaque
%struct.X509_pubkey_st = type opaque
%struct.pkcs7_st = type { i8*, i64, i32, i32, %struct.asn1_object_st*, %union.anon, %struct.PKCS7_CTX_st }
%struct.asn1_object_st = type opaque
%union.anon = type { i8* }
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.Netscape_certificate_sequence = type { %struct.asn1_object_st*, %struct.stack_st_X509* }
%struct.stack_st_X509 = type opaque
%struct.rsa_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.dsa_st = type opaque
%struct.ec_key_st = type opaque
%struct.ec_group_st = type opaque
%struct.dh_st = type opaque
%struct.bio_method_st = type opaque
%struct.ossl_encoder_ctx_st = type opaque

@.str = private unnamed_addr constant [20 x i8] c"CERTIFICATE REQUEST\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"NEW CERTIFICATE REQUEST\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"X509 CRL\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"PUBLIC KEY\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"PKCS7\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"CERTIFICATE\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"RSA PRIVATE KEY\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"RSA PUBLIC KEY\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"DSA PRIVATE KEY\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"DSA PARAMETERS\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"EC PARAMETERS\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"EC PRIVATE KEY\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"DH PARAMETERS\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"X9.42 DH PARAMETERS\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"crypto/pem/pem_all.c\00", align 1
@__func__.PEM_read_bio_DHparams = private unnamed_addr constant [22 x i8] c"PEM_read_bio_DHparams\00", align 1
@__func__.PEM_read_DHparams = private unnamed_addr constant [18 x i8] c"PEM_read_DHparams\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"PEM\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"SubjectPublicKeyInfo\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_req_st* @PEM_read_bio_X509_REQ(%struct.bio_st* noundef %bp, %struct.X509_req_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_req_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read_bio(i8* (i8**, i8**, i64)* noundef bitcast (%struct.X509_req_st* (%struct.X509_req_st**, i8**, i64)* @d2i_X509_REQ to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.bio_st* noundef %bp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %1 = bitcast i8* %call to %struct.X509_req_st*
  ret %struct.X509_req_st* %1
}

declare i8* @PEM_ASN1_read_bio(i8* (i8**, i8**, i64)* noundef, i8* noundef, %struct.bio_st* noundef, i8** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.X509_req_st* @d2i_X509_REQ(%struct.X509_req_st** noundef, i8** noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_req_st* @PEM_read_X509_REQ(%struct._IO_FILE* noundef %fp, %struct.X509_req_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_req_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read(i8* (i8**, i8**, i64)* noundef bitcast (%struct.X509_req_st* (%struct.X509_req_st**, i8**, i64)* @d2i_X509_REQ to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct._IO_FILE* noundef %fp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %1 = bitcast i8* %call to %struct.X509_req_st*
  ret %struct.X509_req_st* %1
}

declare i8* @PEM_ASN1_read(i8* (i8**, i8**, i64)* noundef, i8* noundef, %struct._IO_FILE* noundef, i8** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_X509_REQ(%struct.bio_st* noundef %out, %struct.X509_req_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_req_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.X509_req_st*, i8**)* @i2d_X509_REQ to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.bio_st* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

declare i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef, i8* noundef, %struct.bio_st* noundef, i8* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @i2d_X509_REQ(%struct.X509_req_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_X509_REQ(%struct._IO_FILE* noundef %out, %struct.X509_req_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_req_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.X509_req_st*, i8**)* @i2d_X509_REQ to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct._IO_FILE* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

declare i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef, i8* noundef, %struct._IO_FILE* noundef, i8* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_X509_REQ_NEW(%struct.bio_st* noundef %out, %struct.X509_req_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_req_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.X509_req_st*, i8**)* @i2d_X509_REQ to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.bio_st* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_X509_REQ_NEW(%struct._IO_FILE* noundef %out, %struct.X509_req_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_req_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.X509_req_st*, i8**)* @i2d_X509_REQ to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct._IO_FILE* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_crl_st* @PEM_read_bio_X509_CRL(%struct.bio_st* noundef %bp, %struct.X509_crl_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_crl_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read_bio(i8* (i8**, i8**, i64)* noundef bitcast (%struct.X509_crl_st* (%struct.X509_crl_st**, i8**, i64)* @d2i_X509_CRL to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.bio_st* noundef %bp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %1 = bitcast i8* %call to %struct.X509_crl_st*
  ret %struct.X509_crl_st* %1
}

declare %struct.X509_crl_st* @d2i_X509_CRL(%struct.X509_crl_st** noundef, i8** noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_crl_st* @PEM_read_X509_CRL(%struct._IO_FILE* noundef %fp, %struct.X509_crl_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_crl_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read(i8* (i8**, i8**, i64)* noundef bitcast (%struct.X509_crl_st* (%struct.X509_crl_st**, i8**, i64)* @d2i_X509_CRL to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* noundef %fp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %1 = bitcast i8* %call to %struct.X509_crl_st*
  ret %struct.X509_crl_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_X509_CRL(%struct.bio_st* noundef %out, %struct.X509_crl_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_crl_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.X509_crl_st*, i8**)* @i2d_X509_CRL to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.bio_st* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

declare i32 @i2d_X509_CRL(%struct.X509_crl_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_X509_CRL(%struct._IO_FILE* noundef %out, %struct.X509_crl_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_crl_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.X509_crl_st*, i8**)* @i2d_X509_CRL to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_pubkey_st* @PEM_read_bio_X509_PUBKEY(%struct.bio_st* noundef %bp, %struct.X509_pubkey_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_pubkey_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read_bio(i8* (i8**, i8**, i64)* noundef bitcast (%struct.X509_pubkey_st* (%struct.X509_pubkey_st**, i8**, i64)* @d2i_X509_PUBKEY to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct.bio_st* noundef %bp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %1 = bitcast i8* %call to %struct.X509_pubkey_st*
  ret %struct.X509_pubkey_st* %1
}

declare %struct.X509_pubkey_st* @d2i_X509_PUBKEY(%struct.X509_pubkey_st** noundef, i8** noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_pubkey_st* @PEM_read_X509_PUBKEY(%struct._IO_FILE* noundef %fp, %struct.X509_pubkey_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_pubkey_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read(i8* (i8**, i8**, i64)* noundef bitcast (%struct.X509_pubkey_st* (%struct.X509_pubkey_st**, i8**, i64)* @d2i_X509_PUBKEY to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* noundef %fp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %1 = bitcast i8* %call to %struct.X509_pubkey_st*
  ret %struct.X509_pubkey_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_X509_PUBKEY(%struct.bio_st* noundef %out, %struct.X509_pubkey_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_pubkey_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.X509_pubkey_st*, i8**)* @i2d_X509_PUBKEY to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct.bio_st* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

declare i32 @i2d_X509_PUBKEY(%struct.X509_pubkey_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_X509_PUBKEY(%struct._IO_FILE* noundef %out, %struct.X509_pubkey_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_pubkey_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.X509_pubkey_st*, i8**)* @i2d_X509_PUBKEY to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_st* @PEM_read_bio_PKCS7(%struct.bio_st* noundef %bp, %struct.pkcs7_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.pkcs7_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read_bio(i8* (i8**, i8**, i64)* noundef bitcast (%struct.pkcs7_st* (%struct.pkcs7_st**, i8**, i64)* @d2i_PKCS7 to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %struct.bio_st* noundef %bp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %1 = bitcast i8* %call to %struct.pkcs7_st*
  ret %struct.pkcs7_st* %1
}

declare %struct.pkcs7_st* @d2i_PKCS7(%struct.pkcs7_st** noundef, i8** noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs7_st* @PEM_read_PKCS7(%struct._IO_FILE* noundef %fp, %struct.pkcs7_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.pkcs7_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read(i8* (i8**, i8**, i64)* noundef bitcast (%struct.pkcs7_st* (%struct.pkcs7_st**, i8**, i64)* @d2i_PKCS7 to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* noundef %fp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %1 = bitcast i8* %call to %struct.pkcs7_st*
  ret %struct.pkcs7_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_PKCS7(%struct.bio_st* noundef %out, %struct.pkcs7_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.pkcs7_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.pkcs7_st*, i8**)* @i2d_PKCS7 to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %struct.bio_st* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

declare i32 @i2d_PKCS7(%struct.pkcs7_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_PKCS7(%struct._IO_FILE* noundef %out, %struct.pkcs7_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.pkcs7_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.pkcs7_st*, i8**)* @i2d_PKCS7 to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.Netscape_certificate_sequence* @PEM_read_bio_NETSCAPE_CERT_SEQUENCE(%struct.bio_st* noundef %bp, %struct.Netscape_certificate_sequence** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.Netscape_certificate_sequence** %x to i8**
  %call = tail call i8* @PEM_ASN1_read_bio(i8* (i8**, i8**, i64)* noundef bitcast (%struct.Netscape_certificate_sequence* (%struct.Netscape_certificate_sequence**, i8**, i64)* @d2i_NETSCAPE_CERT_SEQUENCE to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), %struct.bio_st* noundef %bp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %1 = bitcast i8* %call to %struct.Netscape_certificate_sequence*
  ret %struct.Netscape_certificate_sequence* %1
}

declare %struct.Netscape_certificate_sequence* @d2i_NETSCAPE_CERT_SEQUENCE(%struct.Netscape_certificate_sequence** noundef, i8** noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.Netscape_certificate_sequence* @PEM_read_NETSCAPE_CERT_SEQUENCE(%struct._IO_FILE* noundef %fp, %struct.Netscape_certificate_sequence** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.Netscape_certificate_sequence** %x to i8**
  %call = tail call i8* @PEM_ASN1_read(i8* (i8**, i8**, i64)* noundef bitcast (%struct.Netscape_certificate_sequence* (%struct.Netscape_certificate_sequence**, i8**, i64)* @d2i_NETSCAPE_CERT_SEQUENCE to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), %struct._IO_FILE* noundef %fp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %1 = bitcast i8* %call to %struct.Netscape_certificate_sequence*
  ret %struct.Netscape_certificate_sequence* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_NETSCAPE_CERT_SEQUENCE(%struct.bio_st* noundef %out, %struct.Netscape_certificate_sequence* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.Netscape_certificate_sequence* %x to i8*
  %call = tail call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.Netscape_certificate_sequence*, i8**)* @i2d_NETSCAPE_CERT_SEQUENCE to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), %struct.bio_st* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

declare i32 @i2d_NETSCAPE_CERT_SEQUENCE(%struct.Netscape_certificate_sequence* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_NETSCAPE_CERT_SEQUENCE(%struct._IO_FILE* noundef %out, %struct.Netscape_certificate_sequence* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.Netscape_certificate_sequence* %x to i8*
  %call = tail call i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.Netscape_certificate_sequence*, i8**)* @i2d_NETSCAPE_CERT_SEQUENCE to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), %struct._IO_FILE* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @PEM_read_bio_RSAPrivateKey(%struct.bio_st* noundef %bp, %struct.rsa_st** noundef %rsa, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_pkey_st* @PEM_read_bio_PrivateKey(%struct.bio_st* noundef %bp, %struct.evp_pkey_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %call1 = tail call fastcc %struct.rsa_st* @pkey_get_rsa(%struct.evp_pkey_st* noundef %call, %struct.rsa_st** noundef %rsa) #5
  ret %struct.rsa_st* %call1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.evp_pkey_st* @PEM_read_bio_PrivateKey(%struct.bio_st* noundef, %struct.evp_pkey_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.rsa_st* @pkey_get_rsa(%struct.evp_pkey_st* noundef %key, %struct.rsa_st** noundef %rsa) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.evp_pkey_st* %key, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.rsa_st* @EVP_PKEY_get1_RSA(%struct.evp_pkey_st* noundef nonnull %key) #4
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %key) #4
  %tobool1.not = icmp eq %struct.rsa_st* %call, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp eq %struct.rsa_st** %rsa, null
  br i1 %tobool4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.end3
  %0 = load %struct.rsa_st*, %struct.rsa_st** %rsa, align 8, !tbaa !4
  tail call void @RSA_free(%struct.rsa_st* noundef %0) #4
  store %struct.rsa_st* %call, %struct.rsa_st** %rsa, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then5, %if.end, %entry
  %retval.0 = phi %struct.rsa_st* [ null, %entry ], [ null, %if.end ], [ %call, %if.then5 ], [ %call, %if.end3 ]
  ret %struct.rsa_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @PEM_read_RSAPrivateKey(%struct._IO_FILE* noundef %fp, %struct.rsa_st** noundef %rsa, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_pkey_st* @PEM_read_PrivateKey(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %call1 = tail call fastcc %struct.rsa_st* @pkey_get_rsa(%struct.evp_pkey_st* noundef %call, %struct.rsa_st** noundef %rsa) #5
  ret %struct.rsa_st* %call1
}

declare %struct.evp_pkey_st* @PEM_read_PrivateKey(%struct._IO_FILE* noundef, %struct.evp_pkey_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_RSAPrivateKey(%struct.bio_st* noundef %out, %struct.rsa_st* noundef %x, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.rsa_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.rsa_st*, i8**)* @i2d_RSAPrivateKey to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), %struct.bio_st* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  ret i32 %call
}

declare i32 @i2d_RSAPrivateKey(%struct.rsa_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_RSAPrivateKey(%struct._IO_FILE* noundef %out, %struct.rsa_st* noundef %x, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.rsa_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.rsa_st*, i8**)* @i2d_RSAPrivateKey to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), %struct._IO_FILE* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @PEM_read_bio_RSAPublicKey(%struct.bio_st* noundef %bp, %struct.rsa_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.rsa_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read_bio(i8* (i8**, i8**, i64)* noundef bitcast (%struct.rsa_st* (%struct.rsa_st**, i8**, i64)* @d2i_RSAPublicKey to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), %struct.bio_st* noundef %bp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %1 = bitcast i8* %call to %struct.rsa_st*
  ret %struct.rsa_st* %1
}

declare %struct.rsa_st* @d2i_RSAPublicKey(%struct.rsa_st** noundef, i8** noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @PEM_read_RSAPublicKey(%struct._IO_FILE* noundef %fp, %struct.rsa_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.rsa_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read(i8* (i8**, i8**, i64)* noundef bitcast (%struct.rsa_st* (%struct.rsa_st**, i8**, i64)* @d2i_RSAPublicKey to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), %struct._IO_FILE* noundef %fp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %1 = bitcast i8* %call to %struct.rsa_st*
  ret %struct.rsa_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_RSAPublicKey(%struct.bio_st* noundef %out, %struct.rsa_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.rsa_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.rsa_st*, i8**)* @i2d_RSAPublicKey to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), %struct.bio_st* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

declare i32 @i2d_RSAPublicKey(%struct.rsa_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_RSAPublicKey(%struct._IO_FILE* noundef %out, %struct.rsa_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.rsa_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.rsa_st*, i8**)* @i2d_RSAPublicKey to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), %struct._IO_FILE* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @PEM_read_bio_RSA_PUBKEY(%struct.bio_st* noundef %bp, %struct.rsa_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.rsa_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read_bio(i8* (i8**, i8**, i64)* noundef bitcast (%struct.rsa_st* (%struct.rsa_st**, i8**, i64)* @d2i_RSA_PUBKEY to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct.bio_st* noundef %bp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %1 = bitcast i8* %call to %struct.rsa_st*
  ret %struct.rsa_st* %1
}

declare %struct.rsa_st* @d2i_RSA_PUBKEY(%struct.rsa_st** noundef, i8** noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.rsa_st* @PEM_read_RSA_PUBKEY(%struct._IO_FILE* noundef %fp, %struct.rsa_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.rsa_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read(i8* (i8**, i8**, i64)* noundef bitcast (%struct.rsa_st* (%struct.rsa_st**, i8**, i64)* @d2i_RSA_PUBKEY to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* noundef %fp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %1 = bitcast i8* %call to %struct.rsa_st*
  ret %struct.rsa_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_RSA_PUBKEY(%struct.bio_st* noundef %out, %struct.rsa_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.rsa_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.rsa_st*, i8**)* @i2d_RSA_PUBKEY to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct.bio_st* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

declare i32 @i2d_RSA_PUBKEY(%struct.rsa_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_RSA_PUBKEY(%struct._IO_FILE* noundef %out, %struct.rsa_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.rsa_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.rsa_st*, i8**)* @i2d_RSA_PUBKEY to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.dsa_st* @PEM_read_bio_DSAPrivateKey(%struct.bio_st* noundef %bp, %struct.dsa_st** noundef %dsa, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_pkey_st* @PEM_read_bio_PrivateKey(%struct.bio_st* noundef %bp, %struct.evp_pkey_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %call1 = tail call fastcc %struct.dsa_st* @pkey_get_dsa(%struct.evp_pkey_st* noundef %call, %struct.dsa_st** noundef %dsa) #5
  ret %struct.dsa_st* %call1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.dsa_st* @pkey_get_dsa(%struct.evp_pkey_st* noundef %key, %struct.dsa_st** noundef %dsa) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.evp_pkey_st* %key, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.dsa_st* @EVP_PKEY_get1_DSA(%struct.evp_pkey_st* noundef nonnull %key) #4
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %key) #4
  %tobool1.not = icmp eq %struct.dsa_st* %call, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp eq %struct.dsa_st** %dsa, null
  br i1 %tobool4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.end3
  %0 = load %struct.dsa_st*, %struct.dsa_st** %dsa, align 8, !tbaa !4
  tail call void @DSA_free(%struct.dsa_st* noundef %0) #4
  store %struct.dsa_st* %call, %struct.dsa_st** %dsa, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then5, %if.end, %entry
  %retval.0 = phi %struct.dsa_st* [ null, %entry ], [ null, %if.end ], [ %call, %if.then5 ], [ %call, %if.end3 ]
  ret %struct.dsa_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_DSAPrivateKey(%struct.bio_st* noundef %out, %struct.dsa_st* noundef %x, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dsa_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.dsa_st*, i8**)* @i2d_DSAPrivateKey to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), %struct.bio_st* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  ret i32 %call
}

declare i32 @i2d_DSAPrivateKey(%struct.dsa_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_DSAPrivateKey(%struct._IO_FILE* noundef %out, %struct.dsa_st* noundef %x, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dsa_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.dsa_st*, i8**)* @i2d_DSAPrivateKey to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), %struct._IO_FILE* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.dsa_st* @PEM_read_bio_DSA_PUBKEY(%struct.bio_st* noundef %bp, %struct.dsa_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dsa_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read_bio(i8* (i8**, i8**, i64)* noundef bitcast (%struct.dsa_st* (%struct.dsa_st**, i8**, i64)* @d2i_DSA_PUBKEY to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct.bio_st* noundef %bp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %1 = bitcast i8* %call to %struct.dsa_st*
  ret %struct.dsa_st* %1
}

declare %struct.dsa_st* @d2i_DSA_PUBKEY(%struct.dsa_st** noundef, i8** noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.dsa_st* @PEM_read_DSA_PUBKEY(%struct._IO_FILE* noundef %fp, %struct.dsa_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dsa_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read(i8* (i8**, i8**, i64)* noundef bitcast (%struct.dsa_st* (%struct.dsa_st**, i8**, i64)* @d2i_DSA_PUBKEY to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* noundef %fp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %1 = bitcast i8* %call to %struct.dsa_st*
  ret %struct.dsa_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_DSA_PUBKEY(%struct.bio_st* noundef %out, %struct.dsa_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dsa_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.dsa_st*, i8**)* @i2d_DSA_PUBKEY to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct.bio_st* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

declare i32 @i2d_DSA_PUBKEY(%struct.dsa_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_DSA_PUBKEY(%struct._IO_FILE* noundef %out, %struct.dsa_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dsa_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.dsa_st*, i8**)* @i2d_DSA_PUBKEY to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.dsa_st* @PEM_read_DSAPrivateKey(%struct._IO_FILE* noundef %fp, %struct.dsa_st** noundef %dsa, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_pkey_st* @PEM_read_PrivateKey(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %call1 = tail call fastcc %struct.dsa_st* @pkey_get_dsa(%struct.evp_pkey_st* noundef %call, %struct.dsa_st** noundef %dsa) #5
  ret %struct.dsa_st* %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.dsa_st* @PEM_read_bio_DSAparams(%struct.bio_st* noundef %bp, %struct.dsa_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dsa_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read_bio(i8* (i8**, i8**, i64)* noundef bitcast (%struct.dsa_st* (%struct.dsa_st**, i8**, i64)* @d2i_DSAparams to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), %struct.bio_st* noundef %bp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %1 = bitcast i8* %call to %struct.dsa_st*
  ret %struct.dsa_st* %1
}

declare %struct.dsa_st* @d2i_DSAparams(%struct.dsa_st** noundef, i8** noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.dsa_st* @PEM_read_DSAparams(%struct._IO_FILE* noundef %fp, %struct.dsa_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dsa_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read(i8* (i8**, i8**, i64)* noundef bitcast (%struct.dsa_st* (%struct.dsa_st**, i8**, i64)* @d2i_DSAparams to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), %struct._IO_FILE* noundef %fp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %1 = bitcast i8* %call to %struct.dsa_st*
  ret %struct.dsa_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_DSAparams(%struct.bio_st* noundef %out, %struct.dsa_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dsa_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.dsa_st*, i8**)* @i2d_DSAparams to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), %struct.bio_st* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

declare i32 @i2d_DSAparams(%struct.dsa_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_DSAparams(%struct._IO_FILE* noundef %out, %struct.dsa_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dsa_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.dsa_st*, i8**)* @i2d_DSAparams to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), %struct._IO_FILE* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @PEM_read_bio_ECPrivateKey(%struct.bio_st* noundef %bp, %struct.ec_key_st** noundef %key, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_pkey_st* @PEM_read_bio_PrivateKey(%struct.bio_st* noundef %bp, %struct.evp_pkey_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %call1 = tail call fastcc %struct.ec_key_st* @pkey_get_eckey(%struct.evp_pkey_st* noundef %call, %struct.ec_key_st** noundef %key) #5
  ret %struct.ec_key_st* %call1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ec_key_st* @pkey_get_eckey(%struct.evp_pkey_st* noundef %key, %struct.ec_key_st** noundef %eckey) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.evp_pkey_st* %key, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ec_key_st* @EVP_PKEY_get1_EC_KEY(%struct.evp_pkey_st* noundef nonnull %key) #4
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %key) #4
  %tobool1.not = icmp eq %struct.ec_key_st* %call, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp eq %struct.ec_key_st** %eckey, null
  br i1 %tobool4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.end3
  %0 = load %struct.ec_key_st*, %struct.ec_key_st** %eckey, align 8, !tbaa !4
  tail call void @EC_KEY_free(%struct.ec_key_st* noundef %0) #4
  store %struct.ec_key_st* %call, %struct.ec_key_st** %eckey, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then5, %if.end, %entry
  %retval.0 = phi %struct.ec_key_st* [ null, %entry ], [ null, %if.end ], [ %call, %if.then5 ], [ %call, %if.end3 ]
  ret %struct.ec_key_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ec_group_st* @PEM_read_bio_ECPKParameters(%struct.bio_st* noundef %bp, %struct.ec_group_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ec_group_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read_bio(i8* (i8**, i8**, i64)* noundef bitcast (%struct.ec_group_st* (%struct.ec_group_st**, i8**, i64)* @d2i_ECPKParameters to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), %struct.bio_st* noundef %bp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %1 = bitcast i8* %call to %struct.ec_group_st*
  ret %struct.ec_group_st* %1
}

declare %struct.ec_group_st* @d2i_ECPKParameters(%struct.ec_group_st** noundef, i8** noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.ec_group_st* @PEM_read_ECPKParameters(%struct._IO_FILE* noundef %fp, %struct.ec_group_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ec_group_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read(i8* (i8**, i8**, i64)* noundef bitcast (%struct.ec_group_st* (%struct.ec_group_st**, i8**, i64)* @d2i_ECPKParameters to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), %struct._IO_FILE* noundef %fp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %1 = bitcast i8* %call to %struct.ec_group_st*
  ret %struct.ec_group_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_ECPKParameters(%struct.bio_st* noundef %out, %struct.ec_group_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ec_group_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.ec_group_st*, i8**)* @i2d_ECPKParameters to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), %struct.bio_st* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

declare i32 @i2d_ECPKParameters(%struct.ec_group_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_ECPKParameters(%struct._IO_FILE* noundef %out, %struct.ec_group_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ec_group_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.ec_group_st*, i8**)* @i2d_ECPKParameters to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), %struct._IO_FILE* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_ECPrivateKey(%struct.bio_st* noundef %out, %struct.ec_key_st* noundef %x, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ec_key_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.ec_key_st*, i8**)* @i2d_ECPrivateKey to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), %struct.bio_st* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  ret i32 %call
}

declare i32 @i2d_ECPrivateKey(%struct.ec_key_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_ECPrivateKey(%struct._IO_FILE* noundef %out, %struct.ec_key_st* noundef %x, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ec_key_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.ec_key_st*, i8**)* @i2d_ECPrivateKey to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), %struct._IO_FILE* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @PEM_read_bio_EC_PUBKEY(%struct.bio_st* noundef %bp, %struct.ec_key_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ec_key_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read_bio(i8* (i8**, i8**, i64)* noundef bitcast (%struct.ec_key_st* (%struct.ec_key_st**, i8**, i64)* @d2i_EC_PUBKEY to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct.bio_st* noundef %bp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %1 = bitcast i8* %call to %struct.ec_key_st*
  ret %struct.ec_key_st* %1
}

declare %struct.ec_key_st* @d2i_EC_PUBKEY(%struct.ec_key_st** noundef, i8** noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @PEM_read_EC_PUBKEY(%struct._IO_FILE* noundef %fp, %struct.ec_key_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ec_key_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read(i8* (i8**, i8**, i64)* noundef bitcast (%struct.ec_key_st* (%struct.ec_key_st**, i8**, i64)* @d2i_EC_PUBKEY to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* noundef %fp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %1 = bitcast i8* %call to %struct.ec_key_st*
  ret %struct.ec_key_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_EC_PUBKEY(%struct.bio_st* noundef %out, %struct.ec_key_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ec_key_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.ec_key_st*, i8**)* @i2d_EC_PUBKEY to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct.bio_st* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

declare i32 @i2d_EC_PUBKEY(%struct.ec_key_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_EC_PUBKEY(%struct._IO_FILE* noundef %out, %struct.ec_key_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ec_key_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.ec_key_st*, i8**)* @i2d_EC_PUBKEY to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @PEM_read_ECPrivateKey(%struct._IO_FILE* noundef %fp, %struct.ec_key_st** noundef %eckey, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_pkey_st* @PEM_read_PrivateKey(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %call1 = tail call fastcc %struct.ec_key_st* @pkey_get_eckey(%struct.evp_pkey_st* noundef %call, %struct.ec_key_st** noundef %eckey) #5
  ret %struct.ec_key_st* %call1
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_DHparams(%struct.bio_st* noundef %out, %struct.dh_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dh_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.dh_st*, i8**)* @i2d_DHparams to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), %struct.bio_st* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

declare i32 @i2d_DHparams(%struct.dh_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_DHparams(%struct._IO_FILE* noundef %out, %struct.dh_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dh_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.dh_st*, i8**)* @i2d_DHparams to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), %struct._IO_FILE* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_DHxparams(%struct.bio_st* noundef %out, %struct.dh_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dh_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.dh_st*, i8**)* @i2d_DHxparams to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), %struct.bio_st* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

declare i32 @i2d_DHxparams(%struct.dh_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_DHxparams(%struct._IO_FILE* noundef %out, %struct.dh_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dh_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.dh_st*, i8**)* @i2d_DHxparams to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), %struct._IO_FILE* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.dh_st* @PEM_read_bio_DHparams(%struct.bio_st* noundef %bp, %struct.dh_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %nm = alloca i8*, align 8
  %p = alloca i8*, align 8
  %data = alloca i8*, align 8
  %len = alloca i64, align 8
  %0 = bitcast i8** %nm to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store i8* null, i8** %nm, align 8, !tbaa !4
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %2 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  store i8* null, i8** %data, align 8, !tbaa !4
  %3 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  %call = call i32 @PEM_bytes_read_bio(i8** noundef nonnull %data, i64* noundef nonnull %len, i8** noundef nonnull %nm, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), %struct.bio_st* noundef %bp, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %data, align 8, !tbaa !4
  store i8* %4, i8** %p, align 8, !tbaa !4
  %5 = load i8*, i8** %nm, align 8, !tbaa !4
  %call1 = call i32 @strcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0)) #7
  %cmp = icmp eq i32 %call1, 0
  %6 = load i64, i64* %len, align 8, !tbaa !8
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call3 = call %struct.dh_st* @d2i_DHxparams(%struct.dh_st** noundef %x, i8** noundef nonnull %p, i64 noundef %6) #4
  br label %if.end5

if.else:                                          ; preds = %if.end
  %call4 = call %struct.dh_st* @d2i_DHparams(%struct.dh_st** noundef %x, i8** noundef nonnull %p, i64 noundef %6) #4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %ret.0 = phi %struct.dh_st* [ %call3, %if.then2 ], [ %call4, %if.else ]
  %cmp6 = icmp eq %struct.dh_st* %ret.0, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PEM_read_bio_DHparams, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 524301, i8* noundef null) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5
  %7 = load i8*, i8** %nm, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 203) #4
  %8 = load i8*, i8** %data, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 204) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi %struct.dh_st* [ %ret.0, %if.end8 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret %struct.dh_st* %retval.0
}

declare i32 @PEM_bytes_read_bio(i8** noundef, i64* noundef, i8** noundef, i8* noundef, %struct.bio_st* noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

declare %struct.dh_st* @d2i_DHxparams(%struct.dh_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare %struct.dh_st* @d2i_DHparams(%struct.dh_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.dh_st* @PEM_read_DHparams(%struct._IO_FILE* noundef %fp, %struct.dh_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #4
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #4
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef 215, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.PEM_read_DHparams, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 524295, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #4
  %call3 = tail call %struct.dh_st* @PEM_read_bio_DHparams(%struct.bio_st* noundef nonnull %call1, %struct.dh_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #5
  %call4 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.dh_st* [ null, %if.then ], [ %call3, %if.end ]
  ret %struct.dh_st* %retval.0
}

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare %struct.bio_method_st* @BIO_s_file() local_unnamed_addr #1

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_PUBKEY(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef %x, i32 noundef 134, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* noundef null) #4
  %call1 = tail call i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef %call) #4
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %call) #4
  %0 = bitcast %struct.evp_pkey_st* %x to i8*
  %call3 = tail call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.evp_pkey_st*, i8**)* @i2d_PUBKEY to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct.bio_st* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef %call, %struct.bio_st* noundef %out) #4
  tail call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

declare %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #1

declare void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #1

declare i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #1

declare i32 @i2d_PUBKEY(%struct.evp_pkey_st* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_PUBKEY_ex(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef %x, %struct.ossl_lib_ctx_st* nocapture noundef readnone %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef %x, i32 noundef 134, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* noundef %propq) #4
  %call1 = tail call i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef %call) #4
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %call) #4
  %0 = bitcast %struct.evp_pkey_st* %x to i8*
  %call3 = tail call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.evp_pkey_st*, i8**)* @i2d_PUBKEY to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct.bio_st* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef %call, %struct.bio_st* noundef %out) #4
  tail call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_PUBKEY(%struct._IO_FILE* noundef %out, %struct.evp_pkey_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef %x, i32 noundef 134, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* noundef null) #4
  %call1 = tail call i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef %call) #4
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %call) #4
  %0 = bitcast %struct.evp_pkey_st* %x to i8*
  %call3 = tail call i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.evp_pkey_st*, i8**)* @i2d_PUBKEY to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @OSSL_ENCODER_to_fp(%struct.ossl_encoder_ctx_st* noundef %call, %struct._IO_FILE* noundef %out) #4
  tail call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

declare i32 @OSSL_ENCODER_to_fp(%struct.ossl_encoder_ctx_st* noundef, %struct._IO_FILE* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_PUBKEY_ex(%struct._IO_FILE* noundef %out, %struct.evp_pkey_st* noundef %x, %struct.ossl_lib_ctx_st* nocapture noundef readnone %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef %x, i32 noundef 134, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* noundef %propq) #4
  %call1 = tail call i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef %call) #4
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %call) #4
  %0 = bitcast %struct.evp_pkey_st* %x to i8*
  %call3 = tail call i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.evp_pkey_st*, i8**)* @i2d_PUBKEY to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @OSSL_ENCODER_to_fp(%struct.ossl_encoder_ctx_st* noundef %call, %struct._IO_FILE* noundef %out) #4
  tail call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

declare %struct.rsa_st* @EVP_PKEY_get1_RSA(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare void @RSA_free(%struct.rsa_st* noundef) local_unnamed_addr #1

declare %struct.dsa_st* @EVP_PKEY_get1_DSA(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare void @DSA_free(%struct.dsa_st* noundef) local_unnamed_addr #1

declare %struct.ec_key_st* @EVP_PKEY_get1_EC_KEY(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare void @EC_KEY_free(%struct.ec_key_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
