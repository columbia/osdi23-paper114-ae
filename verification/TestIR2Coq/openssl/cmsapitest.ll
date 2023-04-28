; ModuleID = 'test/cmsapitest.c'
source_filename = "test/cmsapitest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.x509_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.bio_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.CMS_ContentInfo_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.x509_store_st = type opaque
%struct.stack_st = type opaque
%struct.bio_method_st = type opaque

@test_get_options.options = internal constant [9 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [42 x i8] c"Usage: %s [options] certfile privkeyfile\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Valid options are:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Display the list of tests available\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Run a single test by id or name\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Run a single iteration of a test\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"indent\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Number of tabs added to output\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Seed value to randomize tests with\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"test/cmsapitest.c\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"certin = test_get_argument(0)\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"privkeyin = test_get_argument(1)\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"certbio\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"PEM_read_bio_X509(certbio, &cert, NULL, NULL)\00", align 1
@cert = internal global %struct.x509_st* null, align 8
@.str.21 = private unnamed_addr constant [11 x i8] c"privkeybio\00", align 1
@.str.22 = private unnamed_addr constant [58 x i8] c"PEM_read_bio_PrivateKey(privkeybio, &privkey, NULL, NULL)\00", align 1
@privkey = internal global %struct.evp_pkey_st* null, align 8
@.str.23 = private unnamed_addr constant [29 x i8] c"test_encrypt_decrypt_aes_cbc\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"test_encrypt_decrypt_aes_128_gcm\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"test_encrypt_decrypt_aes_192_gcm\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"test_encrypt_decrypt_aes_256_gcm\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"test_d2i_CMS_bio_NULL\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"Hello world\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"certstack\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"msgbio\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"outmsgbio\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"sk_X509_push(certstack, cert)\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.35 = private unnamed_addr constant [63 x i8] c"CMS_decrypt(content, privkey, cert, NULL, outmsgbio, CMS_TEXT)\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"BIO_gets(outmsgbio, buf, sizeof(buf))\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"strlen(msg)\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"strcmp(buf, msg)\00", align 1
@test_d2i_CMS_bio_NULL.cms_data = internal constant [1481 x i8] c"0\82\05\C5\06\09*\86H\86\F7\0D\01\07\02\A0\82\05\B60\82\05\B2\02\01\011\0D0\0B\06\09`\86H\01e\03\04\02\010\1C\06\09*\86H\86\F7\0D\01\07\01\A0\0F\04\0DHello World\0D\0A\A0\82\03\830\82\03\7F0\82\02g\A0\03\02\01\02\02\09\00\88C)\CB\C2\EB\15\9A0\0D\06\09*\86H\86\F7\0D\01\01\0B\05\000V1\0B0\09\06\03U\04\06\13\02AU1\130\11\06\03U\04\08\0C\0ASome-State1!0\1F\06\03U\04\0A\0C\18Internet Widgits Pty Ltd1\0F0\0D\06\03U\04\03\0C\06rootCA0\1E\17\0D150702131511Z\17\0D350702131511Z0V1\0B0\09\06\03U\04\06\13\02AU1\130\11\06\03U\04\08\0C\0ASome-State1!0\1F\06\03U\04\0A\0C\18Internet Widgits Pty Ltd1\0F0\0D\06\03U\04\03\0C\06rootCA0\82\01\220\0D\06\09*\86H\86\F7\0D\01\01\01\05\00\03\82\01\0F\000\82\01\0A\02\82\01\01\00\C0\F1kw\88\AC5\DF\FBsS/\92\80/t\162M\F5\10 ol:\8E\D1\DCk\E1.>\C3\04\0F\BF\9B\C4\C9\12\D1\E4\0BE\97\E5\06\CDf:\E1\E0\E2+\DF\A2\C4\EC{\D3=<\8A\FF^t\A0\AB\A7\03j\16[^\92\C4~[y\8Ai\D4\BC\83^\AEB\92t\A5+\E7\00\C1\A9\DC\D5\B1S\07\0Fs\F7\8E\AD\14>%\9E\E5\1E\E6\CC\91\CD\95\0C\80D \C3\FD\17\CF\91=c\10\1C\14[\FB\C3\A8\C1\88\B2w\FF\9C\DB\FCjDDD\F7\85\EC\08,\D4\DF\81\A3y\C9\FE\1E\9B\93\16S\B7\97\AB\BEO\1A\A5\E2\FAF\05\E4\0D\9C*\A4\CC\B9\1E!\A0l\C4\ABY\B0@9\BB\F9\88\AD\FD\DF\8D\B4\0B\AF~A\E0!<\C83EI\84/\93\06\EE\FDO\EDO\F3\BC\9B\DE\FC%^U\D5u\D4\C5{:@5\06\9F\C4\84\B4l\93\0C\AF7Z\AF\B6AM&#\1C\B8\02\B3\02\03\01\00\01\A3P0N0\0C\06\03U\1D\13\04\050\03\01\01\FF0\1D\06\03U\1D\0E\04\16\04\14\85V\895\E2\9F\00\1A\E1\86\03\0BK\AFv\12k3m\FD0\1F\06\03U\1D#\04\180\16\80\14\85V\895\E2\9F\00\1A\E1\86\03\0BK\AFv\12k3m\FD0\0D\06\09*\86H\86\F7\0D\01\01\0B\05\00\03\82\01\01\002\0A\BF*\0A\E2\BBOC\CE\88\DAZ9\107\80\BB7-^-\88\DD&i\9C\E7\B4\98 \B1%\E6aYm\12\EC\9B\87\BEW\E1\12\05\C5\04\F1\17\CE\14\B8\1C\92\D4\95\95,[(\89\FBr\9C \D32\81\A8\85\EC\C8\08{\A8Y[:l1\ABR\E2f\CD\14I\\\F3\D3>b\BC\91\16\B4\1C\F5\DDT\AA<a\97y\AC\E4\C8C5\C3\0F\FC\F3p\1D\AF\F0\9C\8A*\92\93H\AA\D0\E8G\BE5\C1\C6{m\DA\FA]WE\F3\EAA\8F6\C1<\F4R\7Fn1\DD\BA\9A\BCpVq8\DCIW\0C\FD\91\17\C5\EA\87\E5#t\19\B2\B6\99\0Ck\A2\05\F8Qh\ED\97\E0\DFb\F9~z:Dq\83W(I\88i\B5\14\1E\DAF\E3nx\E1\CB\8F\B5\98\B3-n[\B7\F6\93$\14\1F\A4\F6i\BD\FFLRP\02\C5C\8D\14\E2\D0u\9F\12^\94\89\D1\EFw\89}\89\D9\9Ev\99$1\82\01\F70\82\01\F3\02\01\010c0V1\0B0\09\06\03U\04\06\13\02AU1\130\11\06\03U\04\08\0C\0ASome-State1!0\1F\06\03U\04\0A\0C\18Internet Widgits Pty Ltd1\0F0\0D\06\03U\04\03\0C\06rootCA\02\09\00\88C)\CB\C2\EB\15\9A0\0B\06\09`\86H\01e\03\04\02\01\A0i0\18\06\09*\86H\86\F7\0D\01\09\031\0B\06\09*\86H\86\F7\0D\01\07\010\1C\06\09*\86H\86\F7\0D\01\09\051\0F\17\0D201211090013Z0/\06\09*\86H\86\F7\0D\01\09\041\22\04 \B0\80\22\D3\15\CF\1E\B1-&e\BD\ED\0Ej\F4\06S\C0\A0\BE\97R2\FBI\BC\BD\02\1C\FC60\0D\06\09*\86H\86\F7\0D\01\01\01\05\00\04\82\01\007D9\08\B2\19R5\9C\D0g\87\AE\B8\1C\80\F4\03).\E3vJ\B0\98\10\00\9A0\DB\05(S41\14\BD\87\B9ME\07\97\A3W\0B~\D1g\FBN\0F[\90\B2o\E6\CEI\DDrFq&\A1\1B\98#}is\84\DC\F9\D2\1Cm\F6\F5\17In\9DM\F1\E2C)SU\A5\22\1E\89,\AF\F2CG\D5\FA\AD\E7\89`\BF\965o\C2\99\B7U\C5\E3\04%\1B\F6~\F2+\14\A9W\96\BE\BDn\95D\94\BD\AF\9AmwU^l\F627\EC\EF\E5\81\B0\E35\C7\86\EAGY8\B6\16\FB\1D\10UH\B1D3\DE\F6)\BE\BF\BCq>I\BA\E7\9FMl\FB\EC\D2\E0\12\A9|\C9\9A{\85\83\B8\CA\DD\F6\B7\15u{Ji\CF\0A\C7\80\01\E7\94\16\7F\8D<\FA\1F\05qv\15\B0\F6a0X\16\BE\1B\D1\93\C4\1A\91\0CH\E2\1C\8E\A5\C5\A7\81DH;\10\C2t\07\DF\A8\AEW\EE\7F\E3j", align 16
@.str.39 = private unnamed_addr constant [50 x i8] c"bio = BIO_new_mem_buf(cms_data, sizeof(cms_data))\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"cms = d2i_CMS_bio(bio, NULL)\00", align 1
@.str.41 = private unnamed_addr constant [67 x i8] c"CMS_verify(cms, NULL, NULL, NULL, NULL, CMS_NO_SIGNER_CERT_VERIFY)\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([9 x %struct.options_st], [9 x %struct.options_st]* @test_get_options.options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @test_skip_common_options() #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 noundef 299, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @test_get_argument(i64 noundef 0) #5
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 noundef 303, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call1) #5
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i8* @test_get_argument(i64 noundef 1) #5
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 noundef 304, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i8* noundef %call4) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false
  %call9 = tail call %struct.bio_st* @BIO_new_file(i8* noundef %call1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #5
  %0 = bitcast %struct.bio_st* %call9 to i8*
  %call10 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 noundef 308, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8* noundef %0) #5
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end8
  %call14 = tail call %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef %call9, %struct.x509_st** noundef nonnull @cert, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #5
  %cmp = icmp ne %struct.x509_st* %call14, null
  %conv = zext i1 %cmp to i32
  %call15 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 noundef 310, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv) #5
  %tobool16.not = icmp eq i32 %call15, 0
  %call18 = tail call i32 @BIO_free(%struct.bio_st* noundef %call9) #5
  br i1 %tobool16.not, label %cleanup, label %if.end19

if.end19:                                         ; preds = %if.end13
  %call21 = tail call %struct.bio_st* @BIO_new_file(i8* noundef %call4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #5
  %1 = bitcast %struct.bio_st* %call21 to i8*
  %call22 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 noundef 317, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* noundef %1) #5
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end19
  %2 = load %struct.x509_st*, %struct.x509_st** @cert, align 8, !tbaa !3
  tail call void @X509_free(%struct.x509_st* noundef %2) #5
  store %struct.x509_st* null, %struct.x509_st** @cert, align 8, !tbaa !3
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %call26 = tail call %struct.evp_pkey_st* @PEM_read_bio_PrivateKey(%struct.bio_st* noundef %call21, %struct.evp_pkey_st** noundef nonnull @privkey, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #5
  %cmp27 = icmp ne %struct.evp_pkey_st* %call26, null
  %conv28 = zext i1 %cmp27 to i32
  %call29 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 noundef 322, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv28) #5
  %tobool30.not = icmp eq i32 %call29, 0
  %call32 = tail call i32 @BIO_free(%struct.bio_st* noundef %call21) #5
  br i1 %tobool30.not, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end25
  %3 = load %struct.x509_st*, %struct.x509_st** @cert, align 8, !tbaa !3
  tail call void @X509_free(%struct.x509_st* noundef %3) #5
  store %struct.x509_st* null, %struct.x509_st** @cert, align 8, !tbaa !3
  br label %cleanup

if.end33:                                         ; preds = %if.end25
  tail call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i32 ()* noundef nonnull @test_encrypt_decrypt_aes_cbc) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0), i32 ()* noundef nonnull @test_encrypt_decrypt_aes_128_gcm) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i64 0, i64 0), i32 ()* noundef nonnull @test_encrypt_decrypt_aes_192_gcm) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0), i32 ()* noundef nonnull @test_encrypt_decrypt_aes_256_gcm) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i32 ()* noundef nonnull @test_d2i_CMS_bio_NULL) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end8, %if.end, %lor.lhs.false, %if.end33, %if.then31, %if.then24, %if.then
  %retval.0 = phi i32 [ 1, %if.end33 ], [ 0, %if.then31 ], [ 0, %if.then24 ], [ 0, %if.then ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %if.end8 ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #3

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #3

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef, %struct.x509_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @PEM_read_bio_PrivateKey(%struct.bio_st* noundef, %struct.evp_pkey_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_encrypt_decrypt_aes_cbc() #1 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_aes_128_cbc() #5
  %call1 = tail call fastcc i32 @test_encrypt_decrypt(%struct.evp_cipher_st* noundef %call) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_encrypt_decrypt_aes_128_gcm() #1 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_aes_128_gcm() #5
  %call1 = tail call fastcc i32 @test_encrypt_decrypt(%struct.evp_cipher_st* noundef %call) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_encrypt_decrypt_aes_192_gcm() #1 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_aes_192_gcm() #5
  %call1 = tail call fastcc i32 @test_encrypt_decrypt(%struct.evp_cipher_st* noundef %call) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_encrypt_decrypt_aes_256_gcm() #1 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_aes_256_gcm() #5
  %call1 = tail call fastcc i32 @test_encrypt_decrypt(%struct.evp_cipher_st* noundef %call) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_d2i_CMS_bio_NULL() #1 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_mem_buf(i8* noundef getelementptr inbounds ([1481 x i8], [1481 x i8]* @test_d2i_CMS_bio_NULL.cms_data, i64 0, i64 0), i32 noundef 1481) #5
  %0 = bitcast %struct.bio_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 noundef 282, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.39, i64 0, i64 0), i8* noundef %0) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call %struct.CMS_ContentInfo_st* @d2i_CMS_bio(%struct.bio_st* noundef %call, %struct.CMS_ContentInfo_st** noundef null) #5
  %1 = bitcast %struct.CMS_ContentInfo_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 noundef 283, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i64 0, i64 0), i8* noundef %1) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call5 = tail call i32 @CMS_verify(%struct.CMS_ContentInfo_st* noundef %call2, %struct.stack_st_X509* noundef null, %struct.x509_store_st* noundef null, %struct.bio_st* noundef null, %struct.bio_st* noundef null, i32 noundef 32) #5
  %cmp = icmp ne i32 %call5, 0
  %conv = zext i1 %cmp to i32
  %call6 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 noundef 285, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv) #5
  %tobool7 = icmp ne i32 %call6, 0
  %phi.cast = zext i1 %tobool7 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %cms.0 = phi %struct.CMS_ContentInfo_st* [ %call2, %land.rhs ], [ %call2, %land.lhs.true ], [ null, %entry ]
  %2 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true ], [ 0, %entry ]
  tail call void @CMS_ContentInfo_free(%struct.CMS_ContentInfo_st* noundef %cms.0) #5
  %call8 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #5
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #1 {
entry:
  %0 = load %struct.x509_st*, %struct.x509_st** @cert, align 8, !tbaa !3
  tail call void @X509_free(%struct.x509_st* noundef %0) #5
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @privkey, align 8, !tbaa !3
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %1) #5
  ret void
}

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_encrypt_decrypt(%struct.evp_cipher_st* noundef %cipher) unnamed_addr #1 {
entry:
  %buf = alloca [80 x i8], align 16
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_X509*
  %call1 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0)) #7
  %conv = trunc i64 %call1 to i32
  %call2 = tail call %struct.bio_st* @BIO_new_mem_buf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv) #5
  %call3 = tail call %struct.bio_method_st* @BIO_s_mem() #5
  %call4 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call3) #5
  %1 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #8
  %2 = bitcast %struct.stack_st* %call to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i8* noundef %2) #5
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = bitcast %struct.bio_st* %call2 to i8*
  %call6 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* noundef %3) #5
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %end, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %4 = bitcast %struct.bio_st* %call4 to i8*
  %call9 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i8* noundef %4) #5
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %end, label %if.end

if.end:                                           ; preds = %lor.lhs.false8
  %call11 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %0) #6
  %5 = load i8*, i8** bitcast (%struct.x509_st** @cert to i8**), align 8, !tbaa !3
  %call13 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call11, i8* noundef %5) #5
  %call14 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i32 noundef %call13, i32 noundef 0) #5
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %end, label %if.end17

if.end17:                                         ; preds = %if.end
  %call18 = tail call %struct.CMS_ContentInfo_st* @CMS_encrypt(%struct.stack_st_X509* noundef %0, %struct.bio_st* noundef %call2, %struct.evp_cipher_st* noundef %cipher, i32 noundef 1) #5
  %6 = bitcast %struct.CMS_ContentInfo_st* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0), i8* noundef %6) #5
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %end, label %if.end22

if.end22:                                         ; preds = %if.end17
  %7 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @privkey, align 8, !tbaa !3
  %8 = load %struct.x509_st*, %struct.x509_st** @cert, align 8, !tbaa !3
  %call23 = tail call i32 @CMS_decrypt(%struct.CMS_ContentInfo_st* noundef %call18, %struct.evp_pkey_st* noundef %7, %struct.x509_st* noundef %8, %struct.bio_st* noundef null, %struct.bio_st* noundef %call4, i32 noundef 1) #5
  %cmp = icmp ne i32 %call23, 0
  %conv24 = zext i1 %cmp to i32
  %call25 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv24) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %end, label %if.end28

if.end28:                                         ; preds = %if.end22
  %call29 = call i32 @BIO_gets(%struct.bio_st* noundef %call4, i8* noundef nonnull %1, i32 noundef 80) #5
  %call30 = call i64 @strlen(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0)) #7
  %conv31 = trunc i64 %call30 to i32
  %call32 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 noundef %call29, i32 noundef %conv31) #5
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %end, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.end28
  %call36 = call i32 @strcmp(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0)) #7
  %call37 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i32 noundef %call36, i32 noundef 0) #5
  %tobool38.not = icmp ne i32 %call37, 0
  %spec.select = zext i1 %tobool38.not to i32
  br label %end

end:                                              ; preds = %lor.lhs.false34, %if.end28, %if.end22, %if.end17, %if.end, %entry, %lor.lhs.false, %lor.lhs.false8
  %testresult.0 = phi i32 [ 0, %if.end28 ], [ 0, %if.end22 ], [ 0, %if.end17 ], [ 0, %if.end ], [ 0, %lor.lhs.false8 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false34 ]
  %content.0 = phi %struct.CMS_ContentInfo_st* [ %call18, %if.end28 ], [ %call18, %if.end22 ], [ %call18, %if.end17 ], [ null, %if.end ], [ null, %lor.lhs.false8 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call18, %lor.lhs.false34 ]
  %call41 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %0) #6
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call41) #5
  %call42 = call i32 @BIO_free(%struct.bio_st* noundef %call2) #5
  %call43 = call i32 @BIO_free(%struct.bio_st* noundef %call4) #5
  call void @CMS_ContentInfo_free(%struct.CMS_ContentInfo_st* noundef %content.0) #5
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #8
  ret i32 %testresult.0
}

declare dso_local %struct.evp_cipher_st* @EVP_aes_128_cbc() local_unnamed_addr #3

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #3

declare dso_local %struct.bio_st* @BIO_new_mem_buf(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #4

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #3

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #3

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local %struct.CMS_ContentInfo_st* @CMS_encrypt(%struct.stack_st_X509* noundef, %struct.bio_st* noundef, %struct.evp_cipher_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @CMS_decrypt(%struct.CMS_ContentInfo_st* noundef, %struct.evp_pkey_st* noundef, %struct.x509_st* noundef, %struct.bio_st* noundef, %struct.bio_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_gets(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #3

declare dso_local void @CMS_ContentInfo_free(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_cipher_st* @EVP_aes_128_gcm() local_unnamed_addr #3

declare dso_local %struct.evp_cipher_st* @EVP_aes_192_gcm() local_unnamed_addr #3

declare dso_local %struct.evp_cipher_st* @EVP_aes_256_gcm() local_unnamed_addr #3

declare dso_local %struct.CMS_ContentInfo_st* @d2i_CMS_bio(%struct.bio_st* noundef, %struct.CMS_ContentInfo_st** noundef) local_unnamed_addr #3

declare dso_local i32 @CMS_verify(%struct.CMS_ContentInfo_st* noundef, %struct.stack_st_X509* noundef, %struct.x509_store_st* noundef, %struct.bio_st* noundef, %struct.bio_st* noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
