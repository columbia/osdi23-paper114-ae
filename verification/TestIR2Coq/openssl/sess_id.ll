; ModuleID = 'apps/sess_id.c'
source_filename = "apps/sess_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.ssl_session_st = type opaque
%struct.x509_st = type opaque

@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Set the session ID context\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Input file - default stdin\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"inform\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Input format - default PEM (DER or PEM)\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Output file - default stdout\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"outform\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"Output format - default PEM (PEM, DER or NSS)\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Print ssl session id details\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"cert\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Output certificate \00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"noout\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"Don't output the encoded session info\00", align 1
@sess_id_options = dso_local constant [13 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 9, i32 115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 4, i32 115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 2, i32 70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 5, i32 62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 3, i32 102, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 6, i32 45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 7, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 8, i32 45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.21 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"Context too long\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"Error setting id context\0A\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"No certificate present\0A\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"bad output format specified for outfile\0A\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"unable to write SSL_SESSION\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"unable to write X509\0A\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"unable to load SSL_SESSION\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sess_id_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %informat = alloca i32, align 4
  %outformat = alloca i32, align 4
  %0 = bitcast i32* %informat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  store i32 32773, i32* %informat, align 4, !tbaa !3
  %1 = bitcast i32* %outformat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #4
  store i32 32773, i32* %outformat, align 4, !tbaa !3
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([13 x %struct.options_st], [13 x %struct.options_st]* @sess_id_options, i64 0, i64 0)) #5
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %infile.0 = phi i8* [ null, %entry ], [ %infile.0.be, %while.cond.backedge ]
  %outfile.0 = phi i8* [ null, %entry ], [ %outfile.0.be, %while.cond.backedge ]
  %context.0 = phi i8* [ null, %entry ], [ %context.0.be, %while.cond.backedge ]
  %cert.0 = phi i32 [ 0, %entry ], [ %cert.0.be, %while.cond.backedge ]
  %noout.0 = phi i32 [ 0, %entry ], [ %noout.0.be, %while.cond.backedge ]
  %text.0 = phi i32 [ 0, %entry ], [ %text.0.be, %while.cond.backedge ]
  %num.0 = phi i32 [ 0, %entry ], [ %num.0.be, %while.cond.backedge ]
  %call1 = call i32 @opt_next() #5
  switch i32 %call1, label %while.cond.backedge [
    i32 0, label %while.end
    i32 9, label %sw.bb22
    i32 -1, label %opthelp
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb7
    i32 4, label %sw.bb13
    i32 5, label %sw.bb15
    i32 6, label %sw.bb17
    i32 7, label %sw.bb18
    i32 8, label %sw.bb20
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb7, %sw.bb4, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb17, %sw.bb15, %sw.bb13
  %infile.0.be = phi i8* [ %infile.0, %sw.bb22 ], [ %infile.0, %sw.bb20 ], [ %infile.0, %sw.bb18 ], [ %infile.0, %sw.bb17 ], [ %infile.0, %sw.bb15 ], [ %call14, %sw.bb13 ], [ %infile.0, %sw.bb7 ], [ %infile.0, %sw.bb4 ], [ %infile.0, %while.cond ]
  %outfile.0.be = phi i8* [ %outfile.0, %sw.bb22 ], [ %outfile.0, %sw.bb20 ], [ %outfile.0, %sw.bb18 ], [ %outfile.0, %sw.bb17 ], [ %call16, %sw.bb15 ], [ %outfile.0, %sw.bb13 ], [ %outfile.0, %sw.bb7 ], [ %outfile.0, %sw.bb4 ], [ %outfile.0, %while.cond ]
  %context.0.be = phi i8* [ %call23, %sw.bb22 ], [ %context.0, %sw.bb20 ], [ %context.0, %sw.bb18 ], [ %context.0, %sw.bb17 ], [ %context.0, %sw.bb15 ], [ %context.0, %sw.bb13 ], [ %context.0, %sw.bb7 ], [ %context.0, %sw.bb4 ], [ %context.0, %while.cond ]
  %cert.0.be = phi i32 [ %cert.0, %sw.bb22 ], [ %cert.0, %sw.bb20 ], [ %inc19, %sw.bb18 ], [ %cert.0, %sw.bb17 ], [ %cert.0, %sw.bb15 ], [ %cert.0, %sw.bb13 ], [ %cert.0, %sw.bb7 ], [ %cert.0, %sw.bb4 ], [ %cert.0, %while.cond ]
  %noout.0.be = phi i32 [ %noout.0, %sw.bb22 ], [ %inc21, %sw.bb20 ], [ %noout.0, %sw.bb18 ], [ %noout.0, %sw.bb17 ], [ %noout.0, %sw.bb15 ], [ %noout.0, %sw.bb13 ], [ %noout.0, %sw.bb7 ], [ %noout.0, %sw.bb4 ], [ %noout.0, %while.cond ]
  %text.0.be = phi i32 [ %text.0, %sw.bb22 ], [ %text.0, %sw.bb20 ], [ %text.0, %sw.bb18 ], [ %inc, %sw.bb17 ], [ %text.0, %sw.bb15 ], [ %text.0, %sw.bb13 ], [ %text.0, %sw.bb7 ], [ %text.0, %sw.bb4 ], [ %text.0, %while.cond ]
  %num.0.be = phi i32 [ %num.0, %sw.bb22 ], [ %inc21, %sw.bb20 ], [ %inc19, %sw.bb18 ], [ %inc, %sw.bb17 ], [ %num.0, %sw.bb15 ], [ %num.0, %sw.bb13 ], [ %num.0, %sw.bb7 ], [ %num.0, %sw.bb4 ], [ %num.0, %while.cond ]
  br label %while.cond, !llvm.loop !7

opthelp:                                          ; preds = %while.cond, %sw.bb7, %sw.bb4, %while.end
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call2 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i8* noundef %call) #5
  br label %cleanup119

sw.bb3:                                           ; preds = %while.cond
  call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([13 x %struct.options_st], [13 x %struct.options_st]* @sess_id_options, i64 0, i64 0)) #5
  br label %cleanup119

sw.bb4:                                           ; preds = %while.cond
  %call5 = call i8* @opt_arg() #5
  %call6 = call i32 @opt_format(i8* noundef %call5, i64 noundef 2, i32* noundef nonnull %informat) #5
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %opthelp, label %while.cond.backedge

sw.bb7:                                           ; preds = %while.cond
  %call8 = call i8* @opt_arg() #5
  %call9 = call i32 @opt_format(i8* noundef %call8, i64 noundef 130, i32* noundef nonnull %outformat) #5
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %opthelp, label %while.cond.backedge

sw.bb13:                                          ; preds = %while.cond
  %call14 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb15:                                          ; preds = %while.cond
  %call16 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb17:                                          ; preds = %while.cond
  %inc = add nsw i32 %num.0, 1
  br label %while.cond.backedge

sw.bb18:                                          ; preds = %while.cond
  %inc19 = add nsw i32 %num.0, 1
  br label %while.cond.backedge

sw.bb20:                                          ; preds = %while.cond
  %inc21 = add nsw i32 %num.0, 1
  br label %while.cond.backedge

sw.bb22:                                          ; preds = %while.cond
  %call23 = call i8* @opt_arg() #5
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call24 = call i32 @opt_num_rest() #5
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %if.end27, label %opthelp

if.end27:                                         ; preds = %while.end
  %3 = load i32, i32* %informat, align 4, !tbaa !3
  %call28 = call fastcc %struct.ssl_session_st* @load_sess_id(i8* noundef %infile.0, i32 noundef %3) #6
  %cmp29 = icmp eq %struct.ssl_session_st* %call28, null
  br i1 %cmp29, label %cleanup119, label %if.end31

if.end31:                                         ; preds = %if.end27
  %call32 = call %struct.x509_st* @SSL_SESSION_get0_peer(%struct.ssl_session_st* noundef nonnull %call28) #5
  %cmp33.not = icmp eq i8* %context.0, null
  br i1 %cmp33.not, label %if.end45, label %if.then34

if.then34:                                        ; preds = %if.end31
  %call35 = call i64 @strlen(i8* noundef nonnull %context.0) #7
  %cmp36 = icmp ugt i64 %call35, 32
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.then34
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call38 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0)) #5
  br label %cleanup119

if.end39:                                         ; preds = %if.then34
  %conv = trunc i64 %call35 to i32
  %call40 = call i32 @SSL_SESSION_set1_id_context(%struct.ssl_session_st* noundef nonnull %call28, i8* noundef nonnull %context.0, i32 noundef %conv) #5
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end39
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call43 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0)) #5
  br label %cleanup119

if.end45:                                         ; preds = %if.end39, %if.end31
  %tobool46 = icmp eq i32 %noout.0, 0
  %tobool47 = icmp ne i32 %text.0, 0
  %or.cond = select i1 %tobool46, i1 true, i1 %tobool47
  br i1 %or.cond, label %if.then48, label %if.end54

if.then48:                                        ; preds = %if.end45
  %6 = load i32, i32* %outformat, align 4, !tbaa !3
  %call49 = call %struct.bio_st* @bio_open_default(i8* noundef %outfile.0, i8 noundef signext 119, i32 noundef %6) #5
  %cmp50 = icmp eq %struct.bio_st* %call49, null
  br i1 %cmp50, label %cleanup119, label %if.end54

if.end54:                                         ; preds = %if.then48, %if.end45
  %out.0 = phi %struct.bio_st* [ %call49, %if.then48 ], [ null, %if.end45 ]
  br i1 %tobool47, label %if.then56, label %if.end67

if.then56:                                        ; preds = %if.end54
  %call57 = call i32 @SSL_SESSION_print(%struct.bio_st* noundef %out.0, %struct.ssl_session_st* noundef nonnull %call28) #5
  %tobool58.not = icmp eq i32 %cert.0, 0
  br i1 %tobool58.not, label %if.end67, label %if.then59

if.then59:                                        ; preds = %if.then56
  %cmp60 = icmp eq %struct.x509_st* %call32, null
  br i1 %cmp60, label %if.else94.thread, label %if.else

if.else94.thread:                                 ; preds = %if.then59
  %call63 = call i32 @BIO_puts(%struct.bio_st* noundef %out.0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0)) #5
  br label %cleanup119

if.else:                                          ; preds = %if.then59
  %call64 = call i32 @X509_print(%struct.bio_st* noundef %out.0, %struct.x509_st* noundef nonnull %call32) #5
  br label %if.else94

if.end67:                                         ; preds = %if.then56, %if.end54
  %tobool68 = icmp ne i32 %noout.0, 0
  %tobool69 = icmp ne i32 %cert.0, 0
  %or.cond135 = select i1 %tobool68, i1 true, i1 %tobool69
  br i1 %or.cond135, label %if.else94, label %if.then70

if.then70:                                        ; preds = %if.end67
  %7 = load i32, i32* %outformat, align 4, !tbaa !3
  switch i32 %7, label %if.else85 [
    i32 4, label %if.then73
    i32 32773, label %if.then78
    i32 14, label %if.then83
  ]

if.then73:                                        ; preds = %if.then70
  %8 = bitcast %struct.ssl_session_st* %call28 to i8*
  %call74 = call i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.ssl_session_st*, i8**)* @i2d_SSL_SESSION to i32 (i8*, i8**)*), %struct.bio_st* noundef %out.0, i8* noundef nonnull %8) #5
  br label %if.end89

if.then78:                                        ; preds = %if.then70
  %call79 = call i32 @PEM_write_bio_SSL_SESSION(%struct.bio_st* noundef %out.0, %struct.ssl_session_st* noundef nonnull %call28) #5
  br label %if.end89

if.then83:                                        ; preds = %if.then70
  %call84 = call i32 @SSL_SESSION_print_keylog(%struct.bio_st* noundef %out.0, %struct.ssl_session_st* noundef nonnull %call28) #5
  br label %if.end89

if.else85:                                        ; preds = %if.then70
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call86 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i64 0, i64 0)) #5
  br label %cleanup119

if.end89:                                         ; preds = %if.then78, %if.then83, %if.then73
  %i.0 = phi i32 [ %call74, %if.then73 ], [ %call79, %if.then78 ], [ %call84, %if.then83 ]
  %tobool90.not = icmp eq i32 %i.0, 0
  br i1 %tobool90.not, label %if.then91, label %cleanup119

if.then91:                                        ; preds = %if.end89
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call92 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0)) #5
  br label %cleanup119

if.else94:                                        ; preds = %if.else, %if.end67
  %cmp97 = icmp ne %struct.x509_st* %call32, null
  %or.cond136 = select i1 %tobool46, i1 %cmp97, i1 false
  br i1 %or.cond136, label %if.then99, label %cleanup119

if.then99:                                        ; preds = %if.else94
  %11 = load i32, i32* %outformat, align 4, !tbaa !3
  switch i32 %11, label %if.else109 [
    i32 4, label %if.then102
    i32 32773, label %if.then107
  ]

if.then102:                                       ; preds = %if.then99
  %call103 = call i32 @i2d_X509_bio(%struct.bio_st* noundef %out.0, %struct.x509_st* noundef nonnull %call32) #5
  br label %if.end112

if.then107:                                       ; preds = %if.then99
  %call108 = call i32 @PEM_write_bio_X509(%struct.bio_st* noundef %out.0, %struct.x509_st* noundef nonnull %call32) #5
  br label %if.end112

if.else109:                                       ; preds = %if.then99
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call110 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i64 0, i64 0)) #5
  br label %cleanup119

if.end112:                                        ; preds = %if.then107, %if.then102
  %i.1 = phi i32 [ %call103, %if.then102 ], [ %call108, %if.then107 ]
  %tobool113.not = icmp eq i32 %i.1, 0
  br i1 %tobool113.not, label %if.then114, label %cleanup119

if.then114:                                       ; preds = %if.end112
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call115 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %13, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0)) #5
  br label %cleanup119

cleanup119:                                       ; preds = %if.else94.thread, %if.then42, %if.then37, %opthelp, %sw.bb3, %if.else85, %if.then91, %if.else109, %if.then114, %if.end27, %if.then48, %if.else94, %if.end112, %if.end89
  %out.1 = phi %struct.bio_st* [ null, %opthelp ], [ null, %sw.bb3 ], [ null, %if.end27 ], [ null, %if.then48 ], [ %out.0, %if.then114 ], [ %out.0, %if.else109 ], [ %out.0, %if.then91 ], [ %out.0, %if.else85 ], [ %out.0, %if.else94 ], [ %out.0, %if.end112 ], [ %out.0, %if.end89 ], [ null, %if.then37 ], [ null, %if.then42 ], [ %out.0, %if.else94.thread ]
  %x.0 = phi %struct.ssl_session_st* [ null, %opthelp ], [ null, %sw.bb3 ], [ null, %if.end27 ], [ %call28, %if.then48 ], [ %call28, %if.then114 ], [ %call28, %if.else109 ], [ %call28, %if.then91 ], [ %call28, %if.else85 ], [ %call28, %if.else94 ], [ %call28, %if.end112 ], [ %call28, %if.end89 ], [ %call28, %if.then37 ], [ %call28, %if.then42 ], [ %call28, %if.else94.thread ]
  %ret.0 = phi i32 [ 1, %opthelp ], [ 0, %sw.bb3 ], [ 1, %if.end27 ], [ 1, %if.then48 ], [ 1, %if.then114 ], [ 1, %if.else109 ], [ 1, %if.then91 ], [ 1, %if.else85 ], [ 0, %if.else94 ], [ 0, %if.end112 ], [ 0, %if.end89 ], [ 1, %if.then37 ], [ 1, %if.then42 ], [ 0, %if.else94.thread ]
  call void @BIO_free_all(%struct.bio_st* noundef %out.1) #5
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %x.0) #5
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

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ssl_session_st* @load_sess_id(i8* noundef %infile, i32 noundef %format) unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @bio_open_default(i8* noundef %infile, i8 noundef signext 114, i32 noundef %format) #5
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %end, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %format, 4
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call3 = tail call i8* @ASN1_d2i_bio(i8* ()* noundef bitcast (%struct.ssl_session_st* ()* @SSL_SESSION_new to i8* ()*), i8* (i8**, i8**, i64)* noundef bitcast (%struct.ssl_session_st* (%struct.ssl_session_st**, i8**, i64)* @d2i_SSL_SESSION to i8* (i8**, i8**, i64)*), %struct.bio_st* noundef nonnull %call, i8** noundef null) #5
  %0 = bitcast i8* %call3 to %struct.ssl_session_st*
  br label %if.end5

if.else:                                          ; preds = %if.end
  %call4 = tail call %struct.ssl_session_st* @PEM_read_bio_SSL_SESSION(%struct.bio_st* noundef nonnull %call, %struct.ssl_session_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #5
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %x.0 = phi %struct.ssl_session_st* [ %0, %if.then2 ], [ %call4, %if.else ]
  %cmp6 = icmp eq %struct.ssl_session_st* %x.0, null
  br i1 %cmp6, label %if.then7, label %end

if.then7:                                         ; preds = %if.end5
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0)) #5
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  tail call void @ERR_print_errors(%struct.bio_st* noundef %2) #5
  br label %end

end:                                              ; preds = %if.end5, %entry, %if.then7
  %x.1 = phi %struct.ssl_session_st* [ null, %entry ], [ null, %if.then7 ], [ %x.0, %if.end5 ]
  %call10 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #5
  ret %struct.ssl_session_st* %x.1
}

declare dso_local %struct.x509_st* @SSL_SESSION_get0_peer(%struct.ssl_session_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_SESSION_set1_id_context(%struct.ssl_session_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.bio_st* @bio_open_default(i8* noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_SESSION_print(%struct.bio_st* noundef, %struct.ssl_session_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_print(%struct.bio_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef, %struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @i2d_SSL_SESSION(%struct.ssl_session_st* noundef, i8** noundef) #2

declare dso_local i32 @PEM_write_bio_SSL_SESSION(%struct.bio_st* noundef, %struct.ssl_session_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_SESSION_print_keylog(%struct.bio_st* noundef, %struct.ssl_session_st* noundef) local_unnamed_addr #2

declare dso_local i32 @i2d_X509_bio(%struct.bio_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_X509(%struct.bio_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_SESSION_free(%struct.ssl_session_st* noundef) local_unnamed_addr #2

declare dso_local i8* @ASN1_d2i_bio(i8* ()* noundef, i8* (i8**, i8**, i64)* noundef, %struct.bio_st* noundef, i8** noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_session_st* @SSL_SESSION_new() #2

declare dso_local %struct.ssl_session_st* @d2i_SSL_SESSION(%struct.ssl_session_st** noundef, i8** noundef, i64 noundef) #2

declare dso_local %struct.ssl_session_st* @PEM_read_bio_SSL_SESSION(%struct.bio_st* noundef, %struct.ssl_session_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
