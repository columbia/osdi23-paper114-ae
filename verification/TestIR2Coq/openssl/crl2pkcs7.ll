; ModuleID = 'apps/crl2pkcs7.c'
source_filename = "apps/crl2pkcs7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.stack_st = type opaque
%struct.X509_crl_st = type opaque
%struct.pkcs7_st = type { i8*, i64, i32, i32, %struct.asn1_object_st*, %union.anon, %struct.PKCS7_CTX_st }
%struct.asn1_object_st = type opaque
%union.anon = type { i8* }
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.pkcs7_signed_st = type { %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509*, %struct.stack_st_X509_CRL*, %struct.stack_st_PKCS7_SIGNER_INFO*, %struct.pkcs7_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509_ALGOR = type opaque
%struct.stack_st_X509 = type opaque
%struct.stack_st_X509_CRL = type opaque
%struct.stack_st_PKCS7_SIGNER_INFO = type opaque
%struct.stack_st_X509_INFO = type opaque
%struct.X509_info_st = type { %struct.x509_st*, %struct.X509_crl_st*, %struct.private_key_st*, %struct.evp_cipher_info_st, i32, i8* }
%struct.x509_st = type opaque
%struct.private_key_st = type { i32, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*, i32, i8*, i32, %struct.evp_cipher_info_st }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.evp_pkey_st = type opaque
%struct.evp_cipher_info_st = type { %struct.evp_cipher_st*, [16 x i8] }
%struct.evp_cipher_st = type opaque

@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Input file\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"inform\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Input format - DER or PEM\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"nocrl\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"No crl to load, just certs from '-certfile'\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"certfile\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"File of chain of certs to a trusted CA; can be repeated\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Output file\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"outform\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Output format - DER or PEM\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.19 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.21 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@crl2pkcs7_options = dso_local constant [15 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 4, i32 60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 2, i32 70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 6, i32 45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 7, i32 60, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 5, i32 62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 3, i32 70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.23, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.24 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"unable to load CRL\0A\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"error loading certificates\0A\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"unable to write pkcs7 object\0A\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"error opening the file, %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"error reading the file, %s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crl2pkcs7_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %informat = alloca i32, align 4
  %outformat = alloca i32, align 4
  %0 = bitcast i32* %informat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  store i32 32773, i32* %informat, align 4, !tbaa !3
  %1 = bitcast i32* %outformat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #4
  store i32 32773, i32* %outformat, align 4, !tbaa !3
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([15 x %struct.options_st], [15 x %struct.options_st]* @crl2pkcs7_options, i64 0, i64 0)) #5
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %certflst.0 = phi %struct.stack_st_OPENSSL_STRING* [ null, %entry ], [ %certflst.0.be, %while.cond.backedge ]
  %infile.0 = phi i8* [ null, %entry ], [ %infile.0.be, %while.cond.backedge ]
  %outfile.0 = phi i8* [ null, %entry ], [ %outfile.0.be, %while.cond.backedge ]
  %nocrl.0 = phi i32 [ 0, %entry ], [ %nocrl.0.be, %while.cond.backedge ]
  %call1 = call i32 @opt_next() #5
  switch i32 %call1, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1601, label %sw.bb32
    i32 -1, label %opthelp
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb7
    i32 4, label %sw.bb13
    i32 5, label %sw.bb15
    i32 6, label %sw.bb17
    i32 7, label %sw.bb18
    i32 1603, label %sw.bb32
    i32 1602, label %sw.bb32
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb32, %if.end23, %sw.bb7, %sw.bb4, %sw.bb17, %sw.bb15, %sw.bb13
  %certflst.0.be = phi %struct.stack_st_OPENSSL_STRING* [ %certflst.0, %sw.bb32 ], [ %certflst.1, %if.end23 ], [ %certflst.0, %sw.bb17 ], [ %certflst.0, %sw.bb15 ], [ %certflst.0, %sw.bb13 ], [ %certflst.0, %sw.bb7 ], [ %certflst.0, %sw.bb4 ], [ %certflst.0, %while.cond ]
  %infile.0.be = phi i8* [ %infile.0, %sw.bb32 ], [ %infile.0, %if.end23 ], [ %infile.0, %sw.bb17 ], [ %infile.0, %sw.bb15 ], [ %call14, %sw.bb13 ], [ %infile.0, %sw.bb7 ], [ %infile.0, %sw.bb4 ], [ %infile.0, %while.cond ]
  %outfile.0.be = phi i8* [ %outfile.0, %sw.bb32 ], [ %outfile.0, %if.end23 ], [ %outfile.0, %sw.bb17 ], [ %call16, %sw.bb15 ], [ %outfile.0, %sw.bb13 ], [ %outfile.0, %sw.bb7 ], [ %outfile.0, %sw.bb4 ], [ %outfile.0, %while.cond ]
  %nocrl.0.be = phi i32 [ %nocrl.0, %sw.bb32 ], [ %nocrl.0, %if.end23 ], [ 1, %sw.bb17 ], [ %nocrl.0, %sw.bb15 ], [ %nocrl.0, %sw.bb13 ], [ %nocrl.0, %sw.bb7 ], [ %nocrl.0, %sw.bb4 ], [ %nocrl.0, %while.cond ]
  br label %while.cond, !llvm.loop !7

opthelp:                                          ; preds = %while.cond, %sw.bb7, %sw.bb4, %while.end
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call2 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), i8* noundef %call) #5
  br label %end

sw.bb3:                                           ; preds = %while.cond
  call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([15 x %struct.options_st], [15 x %struct.options_st]* @crl2pkcs7_options, i64 0, i64 0)) #5
  br label %end

sw.bb4:                                           ; preds = %while.cond
  %call5 = call i8* @opt_arg() #5
  %call6 = call i32 @opt_format(i8* noundef %call5, i64 noundef 2, i32* noundef nonnull %informat) #5
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %opthelp, label %while.cond.backedge

sw.bb7:                                           ; preds = %while.cond
  %call8 = call i8* @opt_arg() #5
  %call9 = call i32 @opt_format(i8* noundef %call8, i64 noundef 2, i32* noundef nonnull %outformat) #5
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %opthelp, label %while.cond.backedge

sw.bb13:                                          ; preds = %while.cond
  %call14 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb15:                                          ; preds = %while.cond
  %call16 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb17:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb18:                                          ; preds = %while.cond
  %cmp19 = icmp eq %struct.stack_st_OPENSSL_STRING* %certflst.0, null
  br i1 %cmp19, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %sw.bb18
  %call20 = call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %3 = bitcast %struct.stack_st* %call20 to %struct.stack_st_OPENSSL_STRING*
  %cmp21 = icmp eq %struct.stack_st* %call20, null
  br i1 %cmp21, label %end, label %if.end23

if.end23:                                         ; preds = %land.lhs.true, %sw.bb18
  %certflst.1 = phi %struct.stack_st_OPENSSL_STRING* [ %3, %land.lhs.true ], [ %certflst.0, %sw.bb18 ]
  %call24 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %certflst.1) #6
  %call25 = call i8* @opt_arg() #5
  %call27 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call24, i8* noundef %call25) #5
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %end, label %while.cond.backedge

sw.bb32:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call33 = call i32 @opt_provider(i32 noundef %call1) #5
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %end, label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call37 = call i32 @opt_num_rest() #5
  %cmp38.not = icmp eq i32 %call37, 0
  br i1 %cmp38.not, label %if.end40, label %opthelp

if.end40:                                         ; preds = %while.end
  %tobool41.not = icmp eq i32 %nocrl.0, 0
  br i1 %tobool41.not, label %if.then42, label %if.end59

if.then42:                                        ; preds = %if.end40
  %4 = load i32, i32* %informat, align 4, !tbaa !3
  %call43 = call %struct.bio_st* @bio_open_default(i8* noundef %infile.0, i8 noundef signext 114, i32 noundef %4) #5
  %cmp44 = icmp eq %struct.bio_st* %call43, null
  br i1 %cmp44, label %end, label %if.end46

if.end46:                                         ; preds = %if.then42
  %5 = load i32, i32* %informat, align 4, !tbaa !3
  switch i32 %5, label %if.then56 [
    i32 4, label %if.then48
    i32 32773, label %if.then51
  ]

if.then48:                                        ; preds = %if.end46
  %call49 = call %struct.X509_crl_st* @d2i_X509_CRL_bio(%struct.bio_st* noundef nonnull %call43, %struct.X509_crl_st** noundef null) #5
  br label %if.end54

if.then51:                                        ; preds = %if.end46
  %call52 = call %struct.X509_crl_st* @PEM_read_bio_X509_CRL(%struct.bio_st* noundef nonnull %call43, %struct.X509_crl_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.then48
  %crl.0 = phi %struct.X509_crl_st* [ %call49, %if.then48 ], [ %call52, %if.then51 ]
  %cmp55 = icmp eq %struct.X509_crl_st* %crl.0, null
  br i1 %cmp55, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.end46, %if.end54
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call57 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #5
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  call void @ERR_print_errors(%struct.bio_st* noundef %7) #5
  br label %end

if.end59:                                         ; preds = %if.end54, %if.end40
  %crl.1 = phi %struct.X509_crl_st* [ null, %if.end40 ], [ %crl.0, %if.end54 ]
  %in.0 = phi %struct.bio_st* [ null, %if.end40 ], [ %call43, %if.end54 ]
  %call60 = call %struct.pkcs7_st* @PKCS7_new() #5
  %cmp61 = icmp eq %struct.pkcs7_st* %call60, null
  br i1 %cmp61, label %end, label %if.end63

if.end63:                                         ; preds = %if.end59
  %call64 = call %struct.pkcs7_signed_st* @PKCS7_SIGNED_new() #5
  %cmp65 = icmp eq %struct.pkcs7_signed_st* %call64, null
  br i1 %cmp65, label %end, label %if.end67

if.end67:                                         ; preds = %if.end63
  %call68 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 22) #5
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %call60, i64 0, i32 4
  store %struct.asn1_object_st* %call68, %struct.asn1_object_st** %type, align 8, !tbaa !11
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %call60, i64 0, i32 5
  %sign = bitcast %union.anon* %d to %struct.pkcs7_signed_st**
  store %struct.pkcs7_signed_st* %call64, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !15
  %call69 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 21) #5
  %contents = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %call64, i64 0, i32 5
  %8 = load %struct.pkcs7_st*, %struct.pkcs7_st** %contents, align 8, !tbaa !16
  %type70 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %8, i64 0, i32 4
  store %struct.asn1_object_st* %call69, %struct.asn1_object_st** %type70, align 8, !tbaa !11
  %version = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %call64, i64 0, i32 0
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version, align 8, !tbaa !18
  %call71 = call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %9, i64 noundef 1) #5
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %end, label %if.end74

if.end74:                                         ; preds = %if.end67
  %cmp75.not = icmp eq %struct.X509_crl_st* %crl.1, null
  br i1 %cmp75.not, label %if.end85, label %if.then76

if.then76:                                        ; preds = %if.end74
  %call77 = call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %cmp78 = icmp eq %struct.stack_st* %call77, null
  br i1 %cmp78, label %end, label %if.end80

if.end80:                                         ; preds = %if.then76
  %10 = bitcast %struct.stack_st* %call77 to %struct.stack_st_X509_CRL*
  %crl81 = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %call64, i64 0, i32 3
  %11 = bitcast %struct.stack_st_X509_CRL** %crl81 to %struct.stack_st**
  store %struct.stack_st* %call77, %struct.stack_st** %11, align 8, !tbaa !19
  %call82 = call fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef nonnull %10) #6
  %12 = bitcast %struct.X509_crl_st* %crl.1 to i8*
  %call84 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call82, i8* noundef nonnull %12) #5
  br label %if.end85

if.end85:                                         ; preds = %if.end80, %if.end74
  %cmp86.not = icmp eq %struct.stack_st_OPENSSL_STRING* %certflst.0, null
  br i1 %cmp86.not, label %if.end102, label %if.then87

if.then87:                                        ; preds = %if.end85
  %call88 = call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %13 = bitcast %struct.stack_st* %call88 to %struct.stack_st_X509*
  %cmp89 = icmp eq %struct.stack_st* %call88, null
  br i1 %cmp89, label %end, label %if.end91

if.end91:                                         ; preds = %if.then87
  %cert = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %call64, i64 0, i32 2
  %14 = bitcast %struct.stack_st_X509** %cert to %struct.stack_st**
  store %struct.stack_st* %call88, %struct.stack_st** %14, align 8, !tbaa !20
  %call92 = call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %certflst.0) #6
  %call93188 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call92) #5
  %cmp94189 = icmp sgt i32 %call93188, 0
  br i1 %cmp94189, label %for.body, label %if.end102

for.body:                                         ; preds = %if.end91, %for.inc
  %i.0190 = phi i32 [ %inc, %for.inc ], [ 0, %if.end91 ]
  %call96 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call92, i32 noundef %i.0190) #5
  %call97 = call fastcc i32 @add_certs_from_file(%struct.stack_st_X509* noundef nonnull %13, i8* noundef %call96) #6
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %if.then99, label %for.inc

if.then99:                                        ; preds = %for.body
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call100 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %15, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0)) #5
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  call void @ERR_print_errors(%struct.bio_st* noundef %16) #5
  br label %end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0190, 1
  %call93 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call92) #5
  %cmp94 = icmp slt i32 %inc, %call93
  br i1 %cmp94, label %for.body, label %if.end102, !llvm.loop !21

if.end102:                                        ; preds = %for.inc, %if.end91, %if.end85
  %i.1 = phi i32 [ 0, %if.end85 ], [ 0, %if.end91 ], [ %inc, %for.inc ]
  %17 = load i32, i32* %outformat, align 4, !tbaa !3
  %call103 = call %struct.bio_st* @bio_open_default(i8* noundef %outfile.0, i8 noundef signext 119, i32 noundef %17) #5
  %cmp104 = icmp eq %struct.bio_st* %call103, null
  br i1 %cmp104, label %end, label %if.end106

if.end106:                                        ; preds = %if.end102
  %18 = load i32, i32* %outformat, align 4, !tbaa !3
  switch i32 %18, label %if.end115 [
    i32 4, label %if.then108
    i32 32773, label %if.then112
  ]

if.then108:                                       ; preds = %if.end106
  %call109 = call i32 @i2d_PKCS7_bio(%struct.bio_st* noundef nonnull %call103, %struct.pkcs7_st* noundef nonnull %call60) #5
  br label %if.end115

if.then112:                                       ; preds = %if.end106
  %call113 = call i32 @PEM_write_bio_PKCS7(%struct.bio_st* noundef nonnull %call103, %struct.pkcs7_st* noundef nonnull %call60) #5
  br label %if.end115

if.end115:                                        ; preds = %if.end106, %if.then112, %if.then108
  %i.2 = phi i32 [ %call109, %if.then108 ], [ %call113, %if.then112 ], [ %i.1, %if.end106 ]
  %tobool116.not = icmp eq i32 %i.2, 0
  br i1 %tobool116.not, label %if.then117, label %end

if.then117:                                       ; preds = %if.end115
  %19 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call118 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %19, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0)) #5
  %20 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  call void @ERR_print_errors(%struct.bio_st* noundef %20) #5
  br label %end

end:                                              ; preds = %sw.bb32, %if.end23, %land.lhs.true, %if.end115, %if.end102, %if.then87, %if.then76, %if.end67, %if.end63, %if.end59, %if.then42, %if.then117, %if.then99, %if.then56, %sw.bb3, %opthelp
  %p7.0 = phi %struct.pkcs7_st* [ null, %opthelp ], [ null, %sw.bb3 ], [ null, %if.end59 ], [ %call60, %if.end63 ], [ %call60, %if.then76 ], [ %call60, %if.then87 ], [ %call60, %if.then99 ], [ %call60, %if.end102 ], [ %call60, %if.then117 ], [ %call60, %if.end67 ], [ null, %if.then42 ], [ null, %if.then56 ], [ %call60, %if.end115 ], [ null, %land.lhs.true ], [ null, %if.end23 ], [ null, %sw.bb32 ]
  %certflst.3 = phi %struct.stack_st_OPENSSL_STRING* [ %certflst.0, %opthelp ], [ %certflst.0, %sw.bb3 ], [ %certflst.0, %if.end59 ], [ %certflst.0, %if.end63 ], [ %certflst.0, %if.then76 ], [ %certflst.0, %if.then87 ], [ %certflst.0, %if.then99 ], [ %certflst.0, %if.end102 ], [ %certflst.0, %if.then117 ], [ %certflst.0, %if.end67 ], [ %certflst.0, %if.then42 ], [ %certflst.0, %if.then56 ], [ %certflst.0, %if.end115 ], [ %certflst.0, %sw.bb32 ], [ %certflst.1, %if.end23 ], [ null, %land.lhs.true ]
  %crl.3 = phi %struct.X509_crl_st* [ null, %opthelp ], [ null, %sw.bb3 ], [ %crl.1, %if.end59 ], [ %crl.1, %if.end63 ], [ %crl.1, %if.then76 ], [ null, %if.then87 ], [ null, %if.then99 ], [ null, %if.end102 ], [ null, %if.then117 ], [ %crl.1, %if.end67 ], [ null, %if.then42 ], [ null, %if.then56 ], [ null, %if.end115 ], [ null, %land.lhs.true ], [ null, %if.end23 ], [ null, %sw.bb32 ]
  %out.0 = phi %struct.bio_st* [ null, %opthelp ], [ null, %sw.bb3 ], [ null, %if.end59 ], [ null, %if.end63 ], [ null, %if.then76 ], [ null, %if.then87 ], [ null, %if.then99 ], [ null, %if.end102 ], [ %call103, %if.then117 ], [ null, %if.end67 ], [ null, %if.then42 ], [ null, %if.then56 ], [ %call103, %if.end115 ], [ null, %land.lhs.true ], [ null, %if.end23 ], [ null, %sw.bb32 ]
  %in.1 = phi %struct.bio_st* [ null, %opthelp ], [ null, %sw.bb3 ], [ %in.0, %if.end59 ], [ %in.0, %if.end63 ], [ %in.0, %if.then76 ], [ %in.0, %if.then87 ], [ %in.0, %if.then99 ], [ %in.0, %if.end102 ], [ %in.0, %if.then117 ], [ %in.0, %if.end67 ], [ null, %if.then42 ], [ %call43, %if.then56 ], [ %in.0, %if.end115 ], [ null, %land.lhs.true ], [ null, %if.end23 ], [ null, %sw.bb32 ]
  %ret.0 = phi i32 [ 1, %opthelp ], [ 0, %sw.bb3 ], [ 1, %if.end59 ], [ 1, %if.end63 ], [ 1, %if.then76 ], [ 1, %if.then87 ], [ 1, %if.then99 ], [ 1, %if.end102 ], [ 1, %if.then117 ], [ 1, %if.end67 ], [ 1, %if.then42 ], [ 1, %if.then56 ], [ 0, %if.end115 ], [ 1, %land.lhs.true ], [ 1, %if.end23 ], [ 1, %sw.bb32 ]
  %call120 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %certflst.3) #6
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call120) #5
  %call121 = call i32 @BIO_free(%struct.bio_st* noundef %in.1) #5
  call void @BIO_free_all(%struct.bio_st* noundef %out.0) #5
  call void @PKCS7_free(%struct.pkcs7_st* noundef %p7.0) #5
  call void @X509_CRL_free(%struct.X509_crl_st* noundef %crl.3) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_format(i8* noundef, i64 noundef, i32* noundef) local_unnamed_addr #2

declare dso_local i8* @opt_arg() local_unnamed_addr #2

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local %struct.bio_st* @bio_open_default(i8* noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.X509_crl_st* @d2i_X509_CRL_bio(%struct.bio_st* noundef, %struct.X509_crl_st** noundef) local_unnamed_addr #2

declare dso_local %struct.X509_crl_st* @PEM_read_bio_X509_CRL(%struct.bio_st* noundef, %struct.X509_crl_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local %struct.pkcs7_st* @PKCS7_new() local_unnamed_addr #2

declare dso_local %struct.pkcs7_signed_st* @PKCS7_SIGNED_new() local_unnamed_addr #2

declare dso_local %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_CRL* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @add_certs_from_file(%struct.stack_st_X509* noundef %stack, i8* noundef %certfile) unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef %certfile, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %end.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.stack_st_X509_INFO* @PEM_X509_INFO_read_bio(%struct.bio_st* noundef nonnull %call, %struct.stack_st_X509_INFO* noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #5
  %cmp3 = icmp eq %struct.stack_st_X509_INFO* %call2, null
  br i1 %cmp3, label %end.sink.split, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef nonnull %call2) #6
  %call837 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call7) #5
  %tobool.not38 = icmp eq i32 %call837, 0
  br i1 %tobool.not38, label %end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef nonnull %call2) #6
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end18
  %count.039 = phi i32 [ 0, %while.body.lr.ph ], [ %count.1, %if.end18 ]
  %call10 = tail call i8* @OPENSSL_sk_shift(%struct.stack_st* noundef %call9) #5
  %0 = bitcast i8* %call10 to %struct.X509_info_st*
  %x509 = bitcast i8* %call10 to %struct.x509_st**
  %1 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !22
  %cmp11.not = icmp eq %struct.x509_st* %1, null
  br i1 %cmp11.not, label %if.end18, label %if.then12

if.then12:                                        ; preds = %while.body
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %stack) #6
  %2 = bitcast %struct.x509_st* %1 to i8*
  %call16 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call13, i8* noundef nonnull %2) #5
  store %struct.x509_st* null, %struct.x509_st** %x509, align 8, !tbaa !22
  %inc = add nsw i32 %count.039, 1
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %while.body
  %count.1 = phi i32 [ %inc, %if.then12 ], [ %count.039, %while.body ]
  tail call void @X509_INFO_free(%struct.X509_info_st* noundef nonnull %0) #5
  %call8 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call7) #5
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %end, label %while.body, !llvm.loop !25

end.sink.split:                                   ; preds = %if.end, %entry
  %.sink40 = phi i8* [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0), %entry ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0), %if.end ]
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef %.sink40, i8* noundef %certfile) #5
  br label %end

end:                                              ; preds = %if.end18, %end.sink.split, %while.cond.preheader
  %ret.0 = phi i32 [ 0, %while.cond.preheader ], [ -1, %end.sink.split ], [ %count.1, %if.end18 ]
  %sk.0 = phi %struct.stack_st_X509_INFO* [ %call2, %while.cond.preheader ], [ null, %end.sink.split ], [ %call2, %if.end18 ]
  %call19 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #5
  %call20 = tail call fastcc %struct.stack_st* @ossl_check_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef %sk.0) #6
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call20) #5
  ret i32 %ret.0
}

declare dso_local i32 @i2d_PKCS7_bio(%struct.bio_st* noundef, %struct.pkcs7_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_PKCS7(%struct.bio_st* noundef, %struct.pkcs7_st* noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @PKCS7_free(%struct.pkcs7_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_CRL_free(%struct.X509_crl_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.stack_st_X509_INFO* @PEM_X509_INFO_read_bio(%struct.bio_st* noundef, %struct.stack_st_X509_INFO* noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_INFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i8* @OPENSSL_sk_shift(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_INFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local void @X509_INFO_free(%struct.X509_info_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !10, i64 24}
!12 = !{!"pkcs7_st", !10, i64 0, !13, i64 8, !4, i64 16, !4, i64 20, !10, i64 24, !5, i64 32, !14, i64 40}
!13 = !{!"long", !5, i64 0}
!14 = !{!"PKCS7_CTX_st", !10, i64 0, !10, i64 8}
!15 = !{!5, !5, i64 0}
!16 = !{!17, !10, i64 40}
!17 = !{!"pkcs7_signed_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40}
!18 = !{!17, !10, i64 0}
!19 = !{!17, !10, i64 24}
!20 = !{!17, !10, i64 16}
!21 = distinct !{!21, !8}
!22 = !{!23, !10, i64 0}
!23 = !{!"X509_info_st", !10, i64 0, !10, i64 8, !10, i64 16, !24, i64 24, !4, i64 48, !10, i64 56}
!24 = !{!"evp_cipher_info_st", !10, i64 0, !5, i64 8}
!25 = distinct !{!25, !8}
