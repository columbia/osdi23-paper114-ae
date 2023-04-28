; ModuleID = 'test/pkcs7_test.c'
source_filename = "test/pkcs7_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.x509_st = type opaque
%struct.x509_store_st = type opaque
%struct.pkcs7_st = type { i8*, i64, i32, i32, %struct.asn1_object_st*, %union.anon, %struct.PKCS7_CTX_st }
%struct.asn1_object_st = type opaque
%union.anon = type { i8* }
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_X509 = type opaque

@.str = private unnamed_addr constant [18 x i8] c"pkcs7_verify_test\00", align 1
@.str.1 = private unnamed_addr constant [160 x i8] c"MIME-Version: 1.0\0AContent-Type: multipart/signed; protocol=\22application/x-pkcs7-signature\22; micalg=\22sha-256\22; boundary=\22----9B5319FF2E4428B17CD26B69294E7F31\22\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"This is an S/MIME signed message\0A\0A------9B5319FF2E4428B17CD26B69294E7F31\0A\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"Content-Type: text/plain\0D\0A\0D\0Ahello world\0A------9B5319FF2E4428B17CD26B69294E7F31\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"Content-Type: application/x-pkcs7-signature; name=\22smime.p7s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [90 x i8] c"Content-Transfer-Encoding: base64\0AContent-Disposition: attachment; filename=\22smime.p7s\22\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [391 x i8] c"MIIDEgYJKoZIhvcNAQcCoIIDAzCCAv8CAQExDzANBglghkgBZQMEAgEFADALBgkq\0AhkiG9w0BBwGgggFVMIIBUTCB96ADAgECAgIDCTAKBggqhkjOPQQDAjAnMQswCQYD\0AVQQGEwJVUzEYMBYGA1UEAwwPY3J5cHRvZ3JhcGh5IENBMB4XDTE3MDEwMTEyMDEw\0AMFoXDTM4MTIzMTA4MzAwMFowJzELMAkGA1UEBhMCVVMxGDAWBgNVBAMMD2NyeXB0\0Ab2dyYXBoeSBDQTBZMBMGByqGSM49AgEGCCqGSM49AwEHA0IABBj/z7v5Obj13cPu\0AwECLBnUGq0/N2CxSJE4f4BBGZ7VfFblivTvPDG++Gve0oQ+0uctuhrNQ+WxRv8GC\0A\00", align 1
@.str.7 = private unnamed_addr constant [391 x i8] c"177F+QWjEzARMA8GA1UdEwEB/wQFMAMBAf8wCgYIKoZIzj0EAwIDSQAwRgIhANES\0A742XWm64tkGnz8DnpG6u2lHkZFQr3oaVvPcemvlbAiEA0WGGzmYx5C9UvfXIK7NE\0AziT4pQtyESE0uRVKXw4nMqkxggGBMIIBfQIBATAtMCcxCzAJBgNVBAYTAlVTMRgw\0AFgYDVQQDDA9jcnlwdG9ncmFwaHkgQ0ECAgMJMA0GCWCGSAFlAwQCAQUAoIHkMBgG\0ACSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDUyMDE4\0ANTA0OVowLwYJKoZIhvcNAQkEMSIEIOdwMRgQrqcnmMYvag+BVvErcc6bwUXI94Ds\0A\00", align 1
@.str.8 = private unnamed_addr constant [337 x i8] c"QkiyIU9pMHkGCSqGSIb3DQEJDzFsMGowCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQB\0AFjALBglghkgBZQMEAQIwCgYIKoZIhvcNAwcwDgYIKoZIhvcNAwICAgCAMA0GCCqG\0ASIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMCAgEoMAoGCCqGSM49BAMCBEcw\0ARQIhANYMJku1fW9T1MIEcAyREArz9kXCY4tWck5Pt0xzrYhaAiBDSP6e43zj4YtI\0AuvQW+Lzv+dNF8EPuhgoPNe17RuUSLw==\0A\0A------9B5319FF2E4428B17CD26B69294E7F31--\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Content-Type: text/plain\0D\0A\0D\0Ahello world\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"test/pkcs7_test.c\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"bio = BIO_new(BIO_s_mem())\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"msg_bio = BIO_new_mem_buf(signed_data, strlen(signed_data))\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"x509_bio = BIO_new_mem_buf(cert_der, sizeof(cert_der))\00", align 1
@cert_der = internal constant [341 x i8] c"0\82\01Q0\81\F7\A0\03\02\01\02\02\02\03\090\0A\06\08*\86H\CE=\04\03\020'1\0B0\09\06\03U\04\06\13\02US1\180\16\06\03U\04\03\0C\0Fcryptography CA0\1E\17\0D170101120100Z\17\0D381231083000Z0'1\0B0\09\06\03U\04\06\13\02US1\180\16\06\03U\04\03\0C\0Fcryptography CA0Y0\13\06\07*\86H\CE=\02\01\06\08*\86H\CE=\03\01\07\03B\00\04\18\FF\CF\BB\F99\B8\F5\DD\C3\EE\C0@\8B\06u\06\ABO\CD\D8,R$N\1F\E0\10Fg\B5_\15\B9b\BD;\CF\0Co\BE\1A\F7\B4\A1\0F\B4\B9\CBn\86\B3P\F9lQ\BF\C1\82\D7\BE\C5\F9\05\A3\130\110\0F\06\03U\1D\13\01\01\FF\04\050\03\01\01\FF0\0A\06\08*\86H\CE=\04\03\02\03I\000F\02!\00\D1\12\EF\8D\97Zn\B8\B6A\A7\CF\C0\E7\A4n\AE\DAQ\E4dT+\DE\86\95\BC\F7\1E\9A\F9[\02!\00\D1a\86\CEf1\E4/T\BD\F5\C8+\B3D\CE$\F8\A5\0Br\11!4\B9\15J_\0E'2\A9", align 16
@.str.14 = private unnamed_addr constant [36 x i8] c"cert = d2i_X509_bio(x509_bio, NULL)\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"ERR_peek_error()\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"store = X509_STORE_new()\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"X509_STORE_add_cert(store, cert)\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"p7 = SMIME_read_PKCS7(bio, NULL)\00", align 1
@.str.20 = private unnamed_addr constant [57 x i8] c"PKCS7_verify(p7, NULL, store, msg_bio, NULL, PKCS7_TEXT)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @pkcs7_verify_test) #3
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkcs7_verify_test() #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #3
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #3
  %0 = bitcast %struct.bio_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i8* noundef %0) #3
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %call3 = tail call i32 @BIO_puts(%struct.bio_st* noundef %call1, i8* noundef getelementptr inbounds ([160 x i8], [160 x i8]* @.str.1, i64 0, i64 0)) #3
  %call3.1 = tail call i32 @BIO_puts(%struct.bio_st* noundef %call1, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0)) #3
  %call3.2 = tail call i32 @BIO_puts(%struct.bio_st* noundef %call1, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0)) #3
  %call3.3 = tail call i32 @BIO_puts(%struct.bio_st* noundef %call1, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0)) #3
  %call3.4 = tail call i32 @BIO_puts(%struct.bio_st* noundef %call1, i8* noundef getelementptr inbounds ([90 x i8], [90 x i8]* @.str.5, i64 0, i64 0)) #3
  %call3.5 = tail call i32 @BIO_puts(%struct.bio_st* noundef %call1, i8* noundef getelementptr inbounds ([391 x i8], [391 x i8]* @.str.6, i64 0, i64 0)) #3
  %call3.6 = tail call i32 @BIO_puts(%struct.bio_st* noundef %call1, i8* noundef getelementptr inbounds ([391 x i8], [391 x i8]* @.str.7, i64 0, i64 0)) #3
  %call3.7 = tail call i32 @BIO_puts(%struct.bio_st* noundef %call1, i8* noundef getelementptr inbounds ([337 x i8], [337 x i8]* @.str.8, i64 0, i64 0)) #3
  %call4 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0)) #4
  %conv = trunc i64 %call4 to i32
  %call5 = tail call %struct.bio_st* @BIO_new_mem_buf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv) #3
  %1 = bitcast %struct.bio_st* %call5 to i8*
  %call6 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i64 0, i64 0), i8* noundef %1) #3
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.preheader
  %call8 = tail call %struct.bio_st* @BIO_new_mem_buf(i8* noundef getelementptr inbounds ([341 x i8], [341 x i8]* @cert_der, i64 0, i64 0), i32 noundef 341) #3
  %2 = bitcast %struct.bio_st* %call8 to i8*
  %call9 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i64 0, i64 0), i8* noundef %2) #3
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %end, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %land.lhs.true
  %call12 = tail call %struct.x509_st* @d2i_X509_bio(%struct.bio_st* noundef %call8, %struct.x509_st** noundef null) #3
  %3 = bitcast %struct.x509_st* %call12 to i8*
  %call13 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i8* noundef %3) #3
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %end, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %land.lhs.true11
  %call16 = tail call i64 @ERR_peek_error() #3
  %conv17 = trunc i64 %call16 to i32
  %call18 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv17, i32 noundef 0) #3
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %end, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %land.lhs.true15
  %call21 = tail call %struct.x509_store_st* @X509_STORE_new() #3
  %4 = bitcast %struct.x509_store_st* %call21 to i8*
  %call22 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i8* noundef %4) #3
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %end, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %land.lhs.true20
  %call25 = tail call i32 @X509_STORE_add_cert(%struct.x509_store_st* noundef %call21, %struct.x509_st* noundef %call12) #3
  %cmp26 = icmp ne i32 %call25, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv27) #3
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %end, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %land.lhs.true24
  %call31 = tail call %struct.pkcs7_st* @SMIME_read_PKCS7(%struct.bio_st* noundef %call1, %struct.bio_st** noundef null) #3
  %5 = bitcast %struct.pkcs7_st* %call31 to i8*
  %call32 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i8* noundef %5) #3
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %end, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %land.lhs.true30
  %call35 = tail call i64 @ERR_peek_error() #3
  %conv36 = trunc i64 %call35 to i32
  %call37 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv36, i32 noundef 0) #3
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %end, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %land.lhs.true34
  %call40 = tail call i32 @PKCS7_verify(%struct.pkcs7_st* noundef %call31, %struct.stack_st_X509* noundef null, %struct.x509_store_st* noundef %call21, %struct.bio_st* noundef %call5, %struct.bio_st* noundef null, i32 noundef 1) #3
  %cmp41 = icmp ne i32 %call40, 0
  %conv42 = zext i1 %cmp41 to i32
  %call43 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv42) #3
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true39
  %call45 = tail call i64 @ERR_peek_error() #3
  %conv46 = trunc i64 %call45 to i32
  %call47 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv46, i32 noundef 0) #3
  %tobool48 = icmp ne i32 %call47, 0
  %phi.cast = zext i1 %tobool48 to i32
  br label %end

end:                                              ; preds = %for.body.preheader, %land.lhs.true, %land.lhs.true11, %land.lhs.true15, %land.lhs.true20, %land.lhs.true24, %land.lhs.true30, %land.lhs.true34, %land.lhs.true39, %land.rhs, %entry
  %msg_bio.0 = phi %struct.bio_st* [ null, %entry ], [ %call5, %land.rhs ], [ %call5, %land.lhs.true39 ], [ %call5, %land.lhs.true34 ], [ %call5, %land.lhs.true30 ], [ %call5, %land.lhs.true24 ], [ %call5, %land.lhs.true20 ], [ %call5, %land.lhs.true15 ], [ %call5, %land.lhs.true11 ], [ %call5, %land.lhs.true ], [ %call5, %for.body.preheader ]
  %x509_bio.1 = phi %struct.bio_st* [ null, %entry ], [ %call8, %land.rhs ], [ %call8, %land.lhs.true39 ], [ %call8, %land.lhs.true34 ], [ %call8, %land.lhs.true30 ], [ %call8, %land.lhs.true24 ], [ %call8, %land.lhs.true20 ], [ %call8, %land.lhs.true15 ], [ %call8, %land.lhs.true11 ], [ %call8, %land.lhs.true ], [ null, %for.body.preheader ]
  %cert.1 = phi %struct.x509_st* [ null, %entry ], [ %call12, %land.rhs ], [ %call12, %land.lhs.true39 ], [ %call12, %land.lhs.true34 ], [ %call12, %land.lhs.true30 ], [ %call12, %land.lhs.true24 ], [ %call12, %land.lhs.true20 ], [ %call12, %land.lhs.true15 ], [ %call12, %land.lhs.true11 ], [ null, %land.lhs.true ], [ null, %for.body.preheader ]
  %store.1 = phi %struct.x509_store_st* [ null, %entry ], [ %call21, %land.rhs ], [ %call21, %land.lhs.true39 ], [ %call21, %land.lhs.true34 ], [ %call21, %land.lhs.true30 ], [ %call21, %land.lhs.true24 ], [ %call21, %land.lhs.true20 ], [ null, %land.lhs.true15 ], [ null, %land.lhs.true11 ], [ null, %land.lhs.true ], [ null, %for.body.preheader ]
  %p7.1 = phi %struct.pkcs7_st* [ null, %entry ], [ %call31, %land.rhs ], [ %call31, %land.lhs.true39 ], [ %call31, %land.lhs.true34 ], [ %call31, %land.lhs.true30 ], [ null, %land.lhs.true24 ], [ null, %land.lhs.true20 ], [ null, %land.lhs.true15 ], [ null, %land.lhs.true11 ], [ null, %land.lhs.true ], [ null, %for.body.preheader ]
  %ret.0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true39 ], [ 0, %land.lhs.true34 ], [ 0, %land.lhs.true30 ], [ 0, %land.lhs.true24 ], [ 0, %land.lhs.true20 ], [ 0, %land.lhs.true15 ], [ 0, %land.lhs.true11 ], [ 0, %land.lhs.true ], [ 0, %for.body.preheader ]
  tail call void @X509_STORE_free(%struct.x509_store_st* noundef %store.1) #3
  tail call void @X509_free(%struct.x509_st* noundef %cert.1) #3
  tail call void @PKCS7_free(%struct.pkcs7_st* noundef %p7.1) #3
  %call49 = tail call i32 @BIO_free(%struct.bio_st* noundef %msg_bio.0) #3
  %call50 = tail call i32 @BIO_free(%struct.bio_st* noundef %x509_bio.1) #3
  %call51 = tail call i32 @BIO_free(%struct.bio_st* noundef %call1) #3
  ret i32 %ret.0
}

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #1

declare dso_local i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_new_mem_buf(i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_st* @d2i_X509_bio(%struct.bio_st* noundef, %struct.x509_st** noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i64 @ERR_peek_error() local_unnamed_addr #1

declare dso_local %struct.x509_store_st* @X509_STORE_new() local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @X509_STORE_add_cert(%struct.x509_store_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

declare dso_local %struct.pkcs7_st* @SMIME_read_PKCS7(%struct.bio_st* noundef, %struct.bio_st** noundef) local_unnamed_addr #1

declare dso_local i32 @PKCS7_verify(%struct.pkcs7_st* noundef, %struct.stack_st_X509* noundef, %struct.x509_store_st* noundef, %struct.bio_st* noundef, %struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @X509_STORE_free(%struct.x509_store_st* noundef) local_unnamed_addr #1

declare dso_local void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #1

declare dso_local void @PKCS7_free(%struct.pkcs7_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
