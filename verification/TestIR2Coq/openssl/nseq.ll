; ModuleID = 'apps/nseq.c'
source_filename = "apps/nseq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.Netscape_certificate_sequence = type { %struct.asn1_object_st*, %struct.stack_st_X509* }
%struct.asn1_object_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.stack_st = type opaque
%struct.x509_st = type opaque

@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Input file\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"toseq\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Output NS Sequence file\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Output file\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.13 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@nseq_options = dso_local constant [12 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 3, i32 60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 2, i32 45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 4, i32 62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.18 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"%s: Error reading certs file %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"%s: Error reading sequence file %s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @nseq_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([12 x %struct.options_st], [12 x %struct.options_st]* @nseq_options, i64 0, i64 0)) #3
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond, %entry
  %tobool24.not = phi i1 [ true, %entry ], [ false, %while.cond ]
  %infile.0.ph = phi i8* [ null, %entry ], [ %infile.0.ph160, %while.cond ]
  %outfile.0.ph = phi i8* [ null, %entry ], [ %outfile.0.ph163, %while.cond ]
  br label %while.cond.outer159

while.cond.outer159:                              ; preds = %while.cond.outer, %sw.bb5
  %infile.0.ph160 = phi i8* [ %infile.0.ph, %while.cond.outer ], [ %call6, %sw.bb5 ]
  %outfile.0.ph161 = phi i8* [ %outfile.0.ph, %while.cond.outer ], [ %outfile.0.ph163, %sw.bb5 ]
  br label %while.cond.outer162

while.cond.outer162:                              ; preds = %while.cond.outer159, %sw.bb7
  %outfile.0.ph163 = phi i8* [ %outfile.0.ph161, %while.cond.outer159 ], [ %call8, %sw.bb7 ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.outer162
  %call1 = tail call i32 @opt_next() #3
  switch i32 %call1, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1601, label %sw.bb10
    i32 -1, label %opthelp
    i32 1, label %sw.bb3
    i32 2, label %while.cond.outer
    i32 3, label %sw.bb5
    i32 4, label %sw.bb7
    i32 1603, label %sw.bb10
    i32 1602, label %sw.bb10
  ], !llvm.loop !3

while.cond.backedge:                              ; preds = %while.cond, %sw.bb10
  br label %while.cond, !llvm.loop !3

opthelp:                                          ; preds = %while.cond, %while.end
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i8* noundef %call) #3
  br label %end

sw.bb3:                                           ; preds = %while.cond
  tail call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([12 x %struct.options_st], [12 x %struct.options_st]* @nseq_options, i64 0, i64 0)) #3
  br label %end

sw.bb5:                                           ; preds = %while.cond
  %call6 = tail call i8* @opt_arg() #3
  br label %while.cond.outer159, !llvm.loop !3

sw.bb7:                                           ; preds = %while.cond
  %call8 = tail call i8* @opt_arg() #3
  br label %while.cond.outer162, !llvm.loop !3

sw.bb10:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call11 = tail call i32 @opt_provider(i32 noundef %call1) #3
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %end, label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call12 = tail call i32 @opt_num_rest() #3
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end15, label %opthelp

if.end15:                                         ; preds = %while.end
  %call16 = tail call %struct.bio_st* @bio_open_default(i8* noundef %infile.0.ph160, i8 noundef signext 114, i32 noundef 32773) #3
  %cmp17 = icmp eq %struct.bio_st* %call16, null
  br i1 %cmp17, label %end, label %if.end19

if.end19:                                         ; preds = %if.end15
  %call20 = tail call %struct.bio_st* @bio_open_default(i8* noundef %outfile.0.ph163, i8 noundef signext 119, i32 noundef 32773) #3
  %cmp21 = icmp eq %struct.bio_st* %call20, null
  br i1 %cmp21, label %end, label %if.end23

if.end23:                                         ; preds = %if.end19
  br i1 %tobool24.not, label %if.end55, label %if.then25

if.then25:                                        ; preds = %if.end23
  %call26 = tail call %struct.Netscape_certificate_sequence* @NETSCAPE_CERT_SEQUENCE_new() #3
  %cmp27 = icmp eq %struct.Netscape_certificate_sequence* %call26, null
  br i1 %cmp27, label %end, label %if.end29

if.end29:                                         ; preds = %if.then25
  %call30 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #3
  %certs = getelementptr inbounds %struct.Netscape_certificate_sequence, %struct.Netscape_certificate_sequence* %call26, i64 0, i32 1
  %1 = bitcast %struct.stack_st_X509** %certs to %struct.stack_st**
  store %struct.stack_st* %call30, %struct.stack_st** %1, align 8, !tbaa !9
  %cmp32 = icmp eq %struct.stack_st* %call30, null
  br i1 %cmp32, label %end, label %while.cond35

while.cond35:                                     ; preds = %if.end29, %while.body38
  %call36 = tail call %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef nonnull %call16, %struct.x509_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #3
  %tobool37.not = icmp eq %struct.x509_st* %call36, null
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !9
  br i1 %tobool37.not, label %while.end46, label %while.body38

while.body38:                                     ; preds = %while.cond35
  %call40 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %2) #4
  %3 = bitcast %struct.x509_st* %call36 to i8*
  %call42 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call40, i8* noundef nonnull %3) #3
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %end, label %while.cond35, !llvm.loop !11

while.end46:                                      ; preds = %while.cond35
  %call48 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %2) #4
  %call49 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call48) #3
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then51, label %if.end53

if.then51:                                        ; preds = %while.end46
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call52 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i8* noundef %call, i8* noundef %infile.0.ph160) #3
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  tail call void @ERR_print_errors(%struct.bio_st* noundef %5) #3
  br label %end

if.end53:                                         ; preds = %while.end46
  %call54 = tail call i32 @PEM_write_bio_NETSCAPE_CERT_SEQUENCE(%struct.bio_st* noundef nonnull %call20, %struct.Netscape_certificate_sequence* noundef nonnull %call26) #3
  br label %end

if.end55:                                         ; preds = %if.end23
  %call56 = tail call %struct.Netscape_certificate_sequence* @PEM_read_bio_NETSCAPE_CERT_SEQUENCE(%struct.bio_st* noundef nonnull %call16, %struct.Netscape_certificate_sequence** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #3
  %cmp57 = icmp eq %struct.Netscape_certificate_sequence* %call56, null
  br i1 %cmp57, label %if.then58, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end55
  %certs61 = getelementptr inbounds %struct.Netscape_certificate_sequence, %struct.Netscape_certificate_sequence* %call56, i64 0, i32 1
  %6 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs61, align 8, !tbaa !9
  %call62118 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %6) #4
  %call63119 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call62118) #3
  %cmp64120 = icmp sgt i32 %call63119, 0
  br i1 %cmp64120, label %for.body, label %end

if.then58:                                        ; preds = %if.end55
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call59 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i8* noundef %call, i8* noundef %infile.0.ph160) #3
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  tail call void @ERR_print_errors(%struct.bio_st* noundef %8) #3
  br label %end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.0121 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %9 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs61, align 8, !tbaa !9
  %call66 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %9) #4
  %call67 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call66, i32 noundef %i.0121) #3
  %10 = bitcast i8* %call67 to %struct.x509_st*
  tail call void @dump_cert_text(%struct.bio_st* noundef nonnull %call20, %struct.x509_st* noundef %10) #3
  %call68 = tail call i32 @PEM_write_bio_X509(%struct.bio_st* noundef nonnull %call20, %struct.x509_st* noundef %10) #3
  %inc = add nuw nsw i32 %i.0121, 1
  %11 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs61, align 8, !tbaa !9
  %call62 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %11) #4
  %call63 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call62) #3
  %cmp64 = icmp slt i32 %inc, %call63
  br i1 %cmp64, label %for.body, label %end, !llvm.loop !12

end:                                              ; preds = %sw.bb10, %while.body38, %for.body, %for.cond.preheader, %if.end29, %if.then25, %if.end19, %if.end15, %if.then58, %if.end53, %if.then51, %sw.bb3, %opthelp
  %out.0 = phi %struct.bio_st* [ null, %sw.bb3 ], [ null, %opthelp ], [ null, %if.end15 ], [ null, %if.end19 ], [ %call20, %if.then25 ], [ %call20, %if.end29 ], [ %call20, %if.end53 ], [ %call20, %if.then51 ], [ %call20, %if.then58 ], [ %call20, %for.cond.preheader ], [ %call20, %for.body ], [ %call20, %while.body38 ], [ null, %sw.bb10 ]
  %seq.0 = phi %struct.Netscape_certificate_sequence* [ null, %sw.bb3 ], [ null, %opthelp ], [ null, %if.end15 ], [ null, %if.end19 ], [ null, %if.then25 ], [ %call26, %if.end29 ], [ %call26, %if.end53 ], [ %call26, %if.then51 ], [ null, %if.then58 ], [ %call56, %for.cond.preheader ], [ %call56, %for.body ], [ %call26, %while.body38 ], [ null, %sw.bb10 ]
  %in.0 = phi %struct.bio_st* [ null, %sw.bb3 ], [ null, %opthelp ], [ null, %if.end15 ], [ %call16, %if.end19 ], [ %call16, %if.then25 ], [ %call16, %if.end29 ], [ %call16, %if.end53 ], [ %call16, %if.then51 ], [ %call16, %if.then58 ], [ %call16, %for.cond.preheader ], [ %call16, %for.body ], [ %call16, %while.body38 ], [ null, %sw.bb10 ]
  %ret.0 = phi i32 [ 0, %sw.bb3 ], [ 1, %opthelp ], [ 1, %if.end15 ], [ 1, %if.end19 ], [ 1, %if.then25 ], [ 1, %if.end29 ], [ 0, %if.end53 ], [ 1, %if.then51 ], [ 1, %if.then58 ], [ 0, %for.cond.preheader ], [ 0, %for.body ], [ 1, %while.body38 ], [ 1, %sw.bb10 ]
  %call69 = tail call i32 @BIO_free(%struct.bio_st* noundef %in.0) #3
  tail call void @BIO_free_all(%struct.bio_st* noundef %out.0) #3
  tail call void @NETSCAPE_CERT_SEQUENCE_free(%struct.Netscape_certificate_sequence* noundef %seq.0) #3
  ret i32 %ret.0
}

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #1

declare dso_local i32 @opt_next() local_unnamed_addr #1

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #1

declare dso_local i8* @opt_arg() local_unnamed_addr #1

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #1

declare dso_local i32 @opt_num_rest() local_unnamed_addr #1

declare dso_local %struct.bio_st* @bio_open_default(i8* noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.Netscape_certificate_sequence* @NETSCAPE_CERT_SEQUENCE_new() local_unnamed_addr #1

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare dso_local %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef, %struct.x509_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local i32 @PEM_write_bio_NETSCAPE_CERT_SEQUENCE(%struct.bio_st* noundef, %struct.Netscape_certificate_sequence* noundef) local_unnamed_addr #1

declare dso_local %struct.Netscape_certificate_sequence* @PEM_read_bio_NETSCAPE_CERT_SEQUENCE(%struct.bio_st* noundef, %struct.Netscape_certificate_sequence** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @dump_cert_text(%struct.bio_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

declare dso_local i32 @PEM_write_bio_X509(%struct.bio_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local void @NETSCAPE_CERT_SEQUENCE_free(%struct.Netscape_certificate_sequence* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 8}
!10 = !{!"Netscape_certificate_sequence", !6, i64 0, !6, i64 8}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
