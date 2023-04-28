; ModuleID = 'apps/pkcs7.c'
source_filename = "apps/pkcs7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.pkcs7_st = type { i8*, i64, i32, i32, %struct.asn1_object_st*, %union.anon, %struct.PKCS7_CTX_st }
%struct.asn1_object_st = type opaque
%union.anon = type { i8* }
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.engine_st = type opaque
%struct.asn1_pctx_st = type opaque
%struct.pkcs7_signed_st = type { %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509*, %struct.stack_st_X509_CRL*, %struct.stack_st_PKCS7_SIGNER_INFO*, %struct.pkcs7_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509_ALGOR = type opaque
%struct.stack_st_X509 = type opaque
%struct.stack_st_X509_CRL = type opaque
%struct.stack_st_PKCS7_SIGNER_INFO = type opaque
%struct.pkcs7_signedandenveloped_st = type { %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR*, %struct.stack_st_X509*, %struct.stack_st_X509_CRL*, %struct.stack_st_PKCS7_SIGNER_INFO*, %struct.pkcs7_enc_content_st*, %struct.stack_st_PKCS7_RECIP_INFO* }
%struct.pkcs7_enc_content_st = type { %struct.asn1_object_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_cipher_st*, %struct.PKCS7_CTX_st* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.evp_cipher_st = type opaque
%struct.stack_st_PKCS7_RECIP_INFO = type opaque
%struct.stack_st = type opaque
%struct.x509_st = type opaque
%struct.X509_crl_st = type opaque

@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Use engine, possibly a hardware device\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Input file\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"inform\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Input format - DER or PEM\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"outform\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Output format - DER or PEM\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Output file\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"noout\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"Don't output encoded data\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"Print full details of certificates\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"Print out all fields of the PKCS7 structure\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"print_certs\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"Print_certs  print any certs or crl in the input\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.25 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@pkcs7_options = dso_local constant [18 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 10, i32 115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 4, i32 60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 2, i32 70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 3, i32 70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 5, i32 62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 6, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 7, i32 45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 8, i32 45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i32 9, i32 45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.25, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.30 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"unable to allocate PKCS7 object\0A\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"unable to load PKCS7 object\0A\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"unable to write pkcs7 object\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pkcs7_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %p7 = alloca %struct.pkcs7_st*, align 8
  %informat = alloca i32, align 4
  %outformat = alloca i32, align 4
  %0 = bitcast %struct.pkcs7_st** %p7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store %struct.pkcs7_st* null, %struct.pkcs7_st** %p7, align 8, !tbaa !3
  %1 = bitcast i32* %informat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #4
  store i32 32773, i32* %informat, align 4, !tbaa !7
  %2 = bitcast i32* %outformat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #4
  store i32 32773, i32* %outformat, align 4, !tbaa !7
  %call = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #5
  %call1 = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([18 x %struct.options_st], [18 x %struct.options_st]* @pkcs7_options, i64 0, i64 0)) #5
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %infile.0 = phi i8* [ null, %entry ], [ %infile.0.be, %while.cond.backedge ]
  %outfile.0 = phi i8* [ null, %entry ], [ %outfile.0.be, %while.cond.backedge ]
  %print_certs.0 = phi i32 [ 0, %entry ], [ %print_certs.0.be, %while.cond.backedge ]
  %text.0 = phi i32 [ 0, %entry ], [ %text.0.be, %while.cond.backedge ]
  %noout.0 = phi i32 [ 0, %entry ], [ %noout.0.be, %while.cond.backedge ]
  %p7_print.0 = phi i32 [ 0, %entry ], [ %p7_print.0.be, %while.cond.backedge ]
  %e.0 = phi %struct.engine_st* [ null, %entry ], [ %e.0.be, %while.cond.backedge ]
  %call2 = call i32 @opt_next() #5
  switch i32 %call2, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1601, label %sw.bb26
    i32 -1, label %opthelp
    i32 1, label %sw.bb4
    i32 2, label %sw.bb5
    i32 3, label %sw.bb8
    i32 4, label %sw.bb14
    i32 5, label %sw.bb16
    i32 6, label %sw.bb18
    i32 7, label %sw.bb19
    i32 8, label %sw.bb20
    i32 9, label %sw.bb21
    i32 10, label %sw.bb22
    i32 1603, label %sw.bb26
    i32 1602, label %sw.bb26
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb26, %sw.bb8, %sw.bb5, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb16, %sw.bb14
  %infile.0.be = phi i8* [ %infile.0, %sw.bb26 ], [ %infile.0, %sw.bb22 ], [ %infile.0, %sw.bb21 ], [ %infile.0, %sw.bb20 ], [ %infile.0, %sw.bb19 ], [ %infile.0, %sw.bb18 ], [ %infile.0, %sw.bb16 ], [ %call15, %sw.bb14 ], [ %infile.0, %sw.bb8 ], [ %infile.0, %sw.bb5 ], [ %infile.0, %while.cond ]
  %outfile.0.be = phi i8* [ %outfile.0, %sw.bb26 ], [ %outfile.0, %sw.bb22 ], [ %outfile.0, %sw.bb21 ], [ %outfile.0, %sw.bb20 ], [ %outfile.0, %sw.bb19 ], [ %outfile.0, %sw.bb18 ], [ %call17, %sw.bb16 ], [ %outfile.0, %sw.bb14 ], [ %outfile.0, %sw.bb8 ], [ %outfile.0, %sw.bb5 ], [ %outfile.0, %while.cond ]
  %print_certs.0.be = phi i32 [ %print_certs.0, %sw.bb26 ], [ %print_certs.0, %sw.bb22 ], [ 1, %sw.bb21 ], [ %print_certs.0, %sw.bb20 ], [ %print_certs.0, %sw.bb19 ], [ %print_certs.0, %sw.bb18 ], [ %print_certs.0, %sw.bb16 ], [ %print_certs.0, %sw.bb14 ], [ %print_certs.0, %sw.bb8 ], [ %print_certs.0, %sw.bb5 ], [ %print_certs.0, %while.cond ]
  %text.0.be = phi i32 [ %text.0, %sw.bb26 ], [ %text.0, %sw.bb22 ], [ %text.0, %sw.bb21 ], [ %text.0, %sw.bb20 ], [ 1, %sw.bb19 ], [ %text.0, %sw.bb18 ], [ %text.0, %sw.bb16 ], [ %text.0, %sw.bb14 ], [ %text.0, %sw.bb8 ], [ %text.0, %sw.bb5 ], [ %text.0, %while.cond ]
  %noout.0.be = phi i32 [ %noout.0, %sw.bb26 ], [ %noout.0, %sw.bb22 ], [ %noout.0, %sw.bb21 ], [ %noout.0, %sw.bb20 ], [ %noout.0, %sw.bb19 ], [ 1, %sw.bb18 ], [ %noout.0, %sw.bb16 ], [ %noout.0, %sw.bb14 ], [ %noout.0, %sw.bb8 ], [ %noout.0, %sw.bb5 ], [ %noout.0, %while.cond ]
  %p7_print.0.be = phi i32 [ %p7_print.0, %sw.bb26 ], [ %p7_print.0, %sw.bb22 ], [ %p7_print.0, %sw.bb21 ], [ 1, %sw.bb20 ], [ %p7_print.0, %sw.bb19 ], [ %p7_print.0, %sw.bb18 ], [ %p7_print.0, %sw.bb16 ], [ %p7_print.0, %sw.bb14 ], [ %p7_print.0, %sw.bb8 ], [ %p7_print.0, %sw.bb5 ], [ %p7_print.0, %while.cond ]
  %e.0.be = phi %struct.engine_st* [ %e.0, %sw.bb26 ], [ %call24, %sw.bb22 ], [ %e.0, %sw.bb21 ], [ %e.0, %sw.bb20 ], [ %e.0, %sw.bb19 ], [ %e.0, %sw.bb18 ], [ %e.0, %sw.bb16 ], [ %e.0, %sw.bb14 ], [ %e.0, %sw.bb8 ], [ %e.0, %sw.bb5 ], [ %e.0, %while.cond ]
  br label %while.cond, !llvm.loop !9

opthelp:                                          ; preds = %while.cond, %sw.bb8, %sw.bb5, %while.end
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call3 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0), i8* noundef %call1) #5
  br label %end

sw.bb4:                                           ; preds = %while.cond
  call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([18 x %struct.options_st], [18 x %struct.options_st]* @pkcs7_options, i64 0, i64 0)) #5
  br label %end

sw.bb5:                                           ; preds = %while.cond
  %call6 = call i8* @opt_arg() #5
  %call7 = call i32 @opt_format(i8* noundef %call6, i64 noundef 2, i32* noundef nonnull %informat) #5
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %opthelp, label %while.cond.backedge

sw.bb8:                                           ; preds = %while.cond
  %call9 = call i8* @opt_arg() #5
  %call10 = call i32 @opt_format(i8* noundef %call9, i64 noundef 2, i32* noundef nonnull %outformat) #5
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %opthelp, label %while.cond.backedge

sw.bb14:                                          ; preds = %while.cond
  %call15 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb16:                                          ; preds = %while.cond
  %call17 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb18:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb19:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb20:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb21:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb22:                                          ; preds = %while.cond
  %call23 = call i8* @opt_arg() #5
  %call24 = call %struct.engine_st* @setup_engine_methods(i8* noundef %call23, i32 noundef -1, i32 noundef 0) #5
  br label %while.cond.backedge

sw.bb26:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call27 = call i32 @opt_provider(i32 noundef %call2) #5
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %end, label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call31 = call i32 @opt_num_rest() #5
  %cmp32.not = icmp eq i32 %call31, 0
  br i1 %cmp32.not, label %if.end34, label %opthelp

if.end34:                                         ; preds = %while.end
  %4 = load i32, i32* %informat, align 4, !tbaa !7
  %call35 = call %struct.bio_st* @bio_open_default(i8* noundef %infile.0, i8 noundef signext 114, i32 noundef %4) #5
  %cmp36 = icmp eq %struct.bio_st* %call35, null
  br i1 %cmp36, label %end, label %if.end38

if.end38:                                         ; preds = %if.end34
  %call39 = call i8* @app_get0_propq() #5
  %call40 = call %struct.pkcs7_st* @PKCS7_new_ex(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef %call39) #5
  store %struct.pkcs7_st* %call40, %struct.pkcs7_st** %p7, align 8, !tbaa !3
  %cmp41 = icmp eq %struct.pkcs7_st* %call40, null
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end38
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call43 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.31, i64 0, i64 0)) #5
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %6) #5
  br label %end

if.end44:                                         ; preds = %if.end38
  %7 = load i32, i32* %informat, align 4, !tbaa !7
  %cmp45 = icmp eq i32 %7, 4
  br i1 %cmp45, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.end44
  %call47 = call %struct.pkcs7_st* @d2i_PKCS7_bio(%struct.bio_st* noundef nonnull %call35, %struct.pkcs7_st** noundef nonnull %p7) #5
  br label %if.end49

if.else:                                          ; preds = %if.end44
  %call48 = call %struct.pkcs7_st* @PEM_read_bio_PKCS7(%struct.bio_st* noundef nonnull %call35, %struct.pkcs7_st** noundef nonnull %p7, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #5
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then46
  %p7i.0 = phi %struct.pkcs7_st* [ %call47, %if.then46 ], [ %call48, %if.else ]
  %cmp50 = icmp eq %struct.pkcs7_st* %p7i.0, null
  br i1 %cmp50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end49
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call52 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i64 0, i64 0)) #5
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %9) #5
  br label %end

if.end53:                                         ; preds = %if.end49
  %10 = load i32, i32* %outformat, align 4, !tbaa !7
  %call54 = call %struct.bio_st* @bio_open_default(i8* noundef %outfile.0, i8 noundef signext 119, i32 noundef %10) #5
  %cmp55 = icmp eq %struct.bio_st* %call54, null
  br i1 %cmp55, label %end, label %if.end57

if.end57:                                         ; preds = %if.end53
  %tobool58.not = icmp eq i32 %p7_print.0, 0
  br i1 %tobool58.not, label %if.end61, label %if.then59

if.then59:                                        ; preds = %if.end57
  %11 = load %struct.pkcs7_st*, %struct.pkcs7_st** %p7, align 8, !tbaa !3
  %call60 = call i32 @PKCS7_print_ctx(%struct.bio_st* noundef nonnull %call54, %struct.pkcs7_st* noundef %11, i32 noundef 0, %struct.asn1_pctx_st* noundef null) #5
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end57
  %tobool62.not = icmp eq i32 %print_certs.0, 0
  br i1 %tobool62.not, label %if.end124, label %if.then63

if.then63:                                        ; preds = %if.end61
  %12 = load %struct.pkcs7_st*, %struct.pkcs7_st** %p7, align 8, !tbaa !3
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %12, i64 0, i32 4
  %13 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !11
  %call64 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %13) #5
  switch i32 %call64, label %end [
    i32 22, label %sw.bb65
    i32 24, label %sw.bb73
  ]

sw.bb65:                                          ; preds = %if.then63
  %14 = load %struct.pkcs7_st*, %struct.pkcs7_st** %p7, align 8, !tbaa !3
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %14, i64 0, i32 5
  %sign = bitcast %union.anon* %d to %struct.pkcs7_signed_st**
  %15 = load %struct.pkcs7_signed_st*, %struct.pkcs7_signed_st** %sign, align 8, !tbaa !15
  %cmp66.not = icmp eq %struct.pkcs7_signed_st* %15, null
  br i1 %cmp66.not, label %end, label %if.then67

if.then67:                                        ; preds = %sw.bb65
  %cert = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %15, i64 0, i32 2
  %crl = getelementptr inbounds %struct.pkcs7_signed_st, %struct.pkcs7_signed_st* %15, i64 0, i32 3
  br label %sw.epilog84

sw.bb73:                                          ; preds = %if.then63
  %16 = load %struct.pkcs7_st*, %struct.pkcs7_st** %p7, align 8, !tbaa !3
  %d74 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %16, i64 0, i32 5
  %signed_and_enveloped = bitcast %union.anon* %d74 to %struct.pkcs7_signedandenveloped_st**
  %17 = load %struct.pkcs7_signedandenveloped_st*, %struct.pkcs7_signedandenveloped_st** %signed_and_enveloped, align 8, !tbaa !15
  %cmp75.not = icmp eq %struct.pkcs7_signedandenveloped_st* %17, null
  br i1 %cmp75.not, label %end, label %if.then76

if.then76:                                        ; preds = %sw.bb73
  %cert79 = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %17, i64 0, i32 2
  %crl82 = getelementptr inbounds %struct.pkcs7_signedandenveloped_st, %struct.pkcs7_signedandenveloped_st* %17, i64 0, i32 3
  br label %sw.epilog84

sw.epilog84:                                      ; preds = %if.then76, %if.then67
  %certs.0.in = phi %struct.stack_st_X509** [ %cert79, %if.then76 ], [ %cert, %if.then67 ]
  %crls.0.in = phi %struct.stack_st_X509_CRL** [ %crl82, %if.then76 ], [ %crl, %if.then67 ]
  %crls.0 = load %struct.stack_st_X509_CRL*, %struct.stack_st_X509_CRL** %crls.0.in, align 8, !tbaa !3
  %certs.0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs.0.in, align 8, !tbaa !3
  %cmp85.not = icmp eq %struct.stack_st_X509* %certs.0, null
  br i1 %cmp85.not, label %if.end102, label %for.cond.preheader

for.cond.preheader:                               ; preds = %sw.epilog84
  %call87 = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %certs.0) #6
  %call88238 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call87) #5
  %cmp89239 = icmp sgt i32 %call88238, 0
  br i1 %cmp89239, label %for.body.lr.ph, label %if.end102

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool92.not = icmp eq i32 %text.0, 0
  %tobool97.not = icmp eq i32 %noout.0, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end100
  %i.0240 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end100 ]
  %call91 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call87, i32 noundef %i.0240) #5
  %18 = bitcast i8* %call91 to %struct.x509_st*
  br i1 %tobool92.not, label %if.else95, label %if.then93

if.then93:                                        ; preds = %for.body
  %call94 = call i32 @X509_print(%struct.bio_st* noundef nonnull %call54, %struct.x509_st* noundef %18) #5
  br label %if.end96

if.else95:                                        ; preds = %for.body
  call void @dump_cert_text(%struct.bio_st* noundef nonnull %call54, %struct.x509_st* noundef %18) #5
  br label %if.end96

if.end96:                                         ; preds = %if.else95, %if.then93
  br i1 %tobool97.not, label %if.then98, label %if.end100

if.then98:                                        ; preds = %if.end96
  %call99 = call i32 @PEM_write_bio_X509(%struct.bio_st* noundef nonnull %call54, %struct.x509_st* noundef %18) #5
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %if.end96
  %call101 = call i32 @BIO_puts(%struct.bio_st* noundef nonnull %call54, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #5
  %inc = add nuw nsw i32 %i.0240, 1
  %call88 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call87) #5
  %cmp89 = icmp slt i32 %inc, %call88
  br i1 %cmp89, label %for.body, label %if.end102, !llvm.loop !16

if.end102:                                        ; preds = %if.end100, %for.cond.preheader, %sw.epilog84
  %cmp103.not = icmp eq %struct.stack_st_X509_CRL* %crls.0, null
  br i1 %cmp103.not, label %end, label %for.cond106.preheader

for.cond106.preheader:                            ; preds = %if.end102
  %call107 = call fastcc %struct.stack_st* @ossl_check_const_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef nonnull %crls.0) #6
  %call108241 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call107) #5
  %cmp109242 = icmp sgt i32 %call108241, 0
  br i1 %cmp109242, label %for.body110.lr.ph, label %end

for.body110.lr.ph:                                ; preds = %for.cond106.preheader
  %tobool115.not = icmp eq i32 %noout.0, 0
  br label %for.body110

for.body110:                                      ; preds = %for.body110.lr.ph, %if.end118
  %i.1243 = phi i32 [ 0, %for.body110.lr.ph ], [ %inc121, %if.end118 ]
  %call112 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call107, i32 noundef %i.1243) #5
  %19 = bitcast i8* %call112 to %struct.X509_crl_st*
  %call113 = call i64 @get_nameopt() #5
  %call114 = call i32 @X509_CRL_print_ex(%struct.bio_st* noundef nonnull %call54, %struct.X509_crl_st* noundef %19, i64 noundef %call113) #5
  br i1 %tobool115.not, label %if.then116, label %if.end118

if.then116:                                       ; preds = %for.body110
  %call117 = call i32 @PEM_write_bio_X509_CRL(%struct.bio_st* noundef nonnull %call54, %struct.X509_crl_st* noundef %19) #5
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %for.body110
  %call119 = call i32 @BIO_puts(%struct.bio_st* noundef nonnull %call54, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #5
  %inc121 = add nuw nsw i32 %i.1243, 1
  %call108 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call107) #5
  %cmp109 = icmp slt i32 %inc121, %call108
  br i1 %cmp109, label %for.body110, label %end, !llvm.loop !17

if.end124:                                        ; preds = %if.end61
  %tobool125.not = icmp eq i32 %noout.0, 0
  br i1 %tobool125.not, label %if.then126, label %end

if.then126:                                       ; preds = %if.end124
  %20 = load i32, i32* %outformat, align 4, !tbaa !7
  %cmp127 = icmp eq i32 %20, 4
  %21 = load %struct.pkcs7_st*, %struct.pkcs7_st** %p7, align 8, !tbaa !3
  br i1 %cmp127, label %if.then128, label %if.else130

if.then128:                                       ; preds = %if.then126
  %call129 = call i32 @i2d_PKCS7_bio(%struct.bio_st* noundef nonnull %call54, %struct.pkcs7_st* noundef %21) #5
  br label %if.end132

if.else130:                                       ; preds = %if.then126
  %call131 = call i32 @PEM_write_bio_PKCS7(%struct.bio_st* noundef nonnull %call54, %struct.pkcs7_st* noundef %21) #5
  br label %if.end132

if.end132:                                        ; preds = %if.else130, %if.then128
  %i.2 = phi i32 [ %call129, %if.then128 ], [ %call131, %if.else130 ]
  %tobool133.not = icmp eq i32 %i.2, 0
  br i1 %tobool133.not, label %if.then134, label %end

if.then134:                                       ; preds = %if.end132
  %22 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call135 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %22, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i64 0, i64 0)) #5
  %23 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %23) #5
  br label %end

end:                                              ; preds = %sw.bb26, %if.end118, %for.cond106.preheader, %if.then63, %sw.bb73, %sw.bb65, %if.end124, %if.end132, %if.end102, %if.end53, %if.end34, %if.then134, %if.then51, %if.then42, %sw.bb4, %opthelp
  %out.0 = phi %struct.bio_st* [ null, %opthelp ], [ null, %sw.bb4 ], [ null, %if.end34 ], [ null, %if.then42 ], [ null, %if.then51 ], [ null, %if.end53 ], [ %call54, %if.then134 ], [ %call54, %if.end102 ], [ %call54, %if.end132 ], [ %call54, %if.end124 ], [ %call54, %sw.bb65 ], [ %call54, %sw.bb73 ], [ %call54, %if.then63 ], [ %call54, %for.cond106.preheader ], [ %call54, %if.end118 ], [ null, %sw.bb26 ]
  %in.0 = phi %struct.bio_st* [ null, %opthelp ], [ null, %sw.bb4 ], [ null, %if.end34 ], [ %call35, %if.then42 ], [ %call35, %if.then51 ], [ %call35, %if.end53 ], [ %call35, %if.then134 ], [ %call35, %if.end102 ], [ %call35, %if.end132 ], [ %call35, %if.end124 ], [ %call35, %sw.bb65 ], [ %call35, %sw.bb73 ], [ %call35, %if.then63 ], [ %call35, %for.cond106.preheader ], [ %call35, %if.end118 ], [ null, %sw.bb26 ]
  %ret.0 = phi i32 [ 1, %opthelp ], [ 0, %sw.bb4 ], [ 1, %if.end34 ], [ 1, %if.then42 ], [ 1, %if.then51 ], [ 1, %if.end53 ], [ 1, %if.then134 ], [ 0, %if.end102 ], [ 0, %if.end132 ], [ 0, %if.end124 ], [ 0, %sw.bb65 ], [ 0, %sw.bb73 ], [ 0, %if.then63 ], [ 0, %for.cond106.preheader ], [ 0, %if.end118 ], [ 1, %sw.bb26 ]
  %24 = load %struct.pkcs7_st*, %struct.pkcs7_st** %p7, align 8, !tbaa !3
  call void @PKCS7_free(%struct.pkcs7_st* noundef %24) #5
  call void @release_engine(%struct.engine_st* noundef %e.0) #5
  %call138 = call i32 @BIO_free(%struct.bio_st* noundef %in.0) #5
  call void @BIO_free_all(%struct.bio_st* noundef %out.0) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.ossl_lib_ctx_st* @app_get0_libctx() local_unnamed_addr #2

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_format(i8* noundef, i64 noundef, i32* noundef) local_unnamed_addr #2

declare dso_local i8* @opt_arg() local_unnamed_addr #2

declare dso_local %struct.engine_st* @setup_engine_methods(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local %struct.bio_st* @bio_open_default(i8* noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.pkcs7_st* @PKCS7_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @app_get0_propq() local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local %struct.pkcs7_st* @d2i_PKCS7_bio(%struct.bio_st* noundef, %struct.pkcs7_st** noundef) local_unnamed_addr #2

declare dso_local %struct.pkcs7_st* @PEM_read_bio_PKCS7(%struct.bio_st* noundef, %struct.pkcs7_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @PKCS7_print_ctx(%struct.bio_st* noundef, %struct.pkcs7_st* noundef, i32 noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @X509_print(%struct.bio_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local void @dump_cert_text(%struct.bio_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_X509(%struct.bio_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_CRL* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i32 @X509_CRL_print_ex(%struct.bio_st* noundef, %struct.X509_crl_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i64 @get_nameopt() local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_X509_CRL(%struct.bio_st* noundef, %struct.X509_crl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @i2d_PKCS7_bio(%struct.bio_st* noundef, %struct.pkcs7_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_PKCS7(%struct.bio_st* noundef, %struct.pkcs7_st* noundef) local_unnamed_addr #2

declare dso_local void @PKCS7_free(%struct.pkcs7_st* noundef) local_unnamed_addr #2

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !4, i64 24}
!12 = !{!"pkcs7_st", !4, i64 0, !13, i64 8, !8, i64 16, !8, i64 20, !4, i64 24, !5, i64 32, !14, i64 40}
!13 = !{!"long", !5, i64 0}
!14 = !{!"PKCS7_CTX_st", !4, i64 0, !4, i64 8}
!15 = !{!5, !5, i64 0}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
