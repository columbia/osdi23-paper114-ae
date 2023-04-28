; ModuleID = 'apps/pkeyparam.c'
source_filename = "apps/pkeyparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.engine_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.asn1_pctx_st = type opaque

@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Use engine, possibly a hardware device\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Check key param consistency\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Input file\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Output file\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Print parameters as text\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"noout\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Don't output encoded parameters\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.19 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.21 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@pkeyparam_options = dso_local constant [15 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 6, i32 115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 7, i32 45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 2, i32 60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 3, i32 62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 4, i32 45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 5, i32 45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.23, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.24 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"Error reading parameters\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"Parameters are valid\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"Parameters are invalid\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pkeyparam_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([15 x %struct.options_st], [15 x %struct.options_st]* @pkeyparam_options, i64 0, i64 0)) #2
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %text.0 = phi i32 [ 0, %entry ], [ %text.0.be, %while.cond.backedge ]
  %noout.0 = phi i32 [ 0, %entry ], [ %noout.0.be, %while.cond.backedge ]
  %check.0 = phi i32 [ 0, %entry ], [ %check.0.be, %while.cond.backedge ]
  %e.0 = phi %struct.engine_st* [ null, %entry ], [ %e.0.be, %while.cond.backedge ]
  %infile.0 = phi i8* [ null, %entry ], [ %infile.0.be, %while.cond.backedge ]
  %outfile.0 = phi i8* [ null, %entry ], [ %outfile.0.be, %while.cond.backedge ]
  %call1 = tail call i32 @opt_next() #2
  switch i32 %call1, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1601, label %sw.bb15
    i32 -1, label %opthelp
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
    i32 6, label %sw.bb8
    i32 4, label %sw.bb11
    i32 5, label %sw.bb12
    i32 7, label %sw.bb13
    i32 1603, label %sw.bb15
    i32 1602, label %sw.bb15
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb15, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb8, %sw.bb6, %sw.bb4
  %text.0.be = phi i32 [ %text.0, %sw.bb15 ], [ %text.0, %sw.bb13 ], [ %text.0, %sw.bb12 ], [ 1, %sw.bb11 ], [ %text.0, %sw.bb8 ], [ %text.0, %sw.bb6 ], [ %text.0, %sw.bb4 ], [ %text.0, %while.cond ]
  %noout.0.be = phi i32 [ %noout.0, %sw.bb15 ], [ %noout.0, %sw.bb13 ], [ 1, %sw.bb12 ], [ %noout.0, %sw.bb11 ], [ %noout.0, %sw.bb8 ], [ %noout.0, %sw.bb6 ], [ %noout.0, %sw.bb4 ], [ %noout.0, %while.cond ]
  %check.0.be = phi i32 [ %check.0, %sw.bb15 ], [ 1, %sw.bb13 ], [ %check.0, %sw.bb12 ], [ %check.0, %sw.bb11 ], [ %check.0, %sw.bb8 ], [ %check.0, %sw.bb6 ], [ %check.0, %sw.bb4 ], [ %check.0, %while.cond ]
  %e.0.be = phi %struct.engine_st* [ %e.0, %sw.bb15 ], [ %e.0, %sw.bb13 ], [ %e.0, %sw.bb12 ], [ %e.0, %sw.bb11 ], [ %call10, %sw.bb8 ], [ %e.0, %sw.bb6 ], [ %e.0, %sw.bb4 ], [ %e.0, %while.cond ]
  %infile.0.be = phi i8* [ %infile.0, %sw.bb15 ], [ %infile.0, %sw.bb13 ], [ %infile.0, %sw.bb12 ], [ %infile.0, %sw.bb11 ], [ %infile.0, %sw.bb8 ], [ %infile.0, %sw.bb6 ], [ %call5, %sw.bb4 ], [ %infile.0, %while.cond ]
  %outfile.0.be = phi i8* [ %outfile.0, %sw.bb15 ], [ %outfile.0, %sw.bb13 ], [ %outfile.0, %sw.bb12 ], [ %outfile.0, %sw.bb11 ], [ %outfile.0, %sw.bb8 ], [ %call7, %sw.bb6 ], [ %outfile.0, %sw.bb4 ], [ %outfile.0, %while.cond ]
  br label %while.cond, !llvm.loop !3

opthelp:                                          ; preds = %while.cond, %while.end
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), i8* noundef %call) #2
  br label %end

sw.bb3:                                           ; preds = %while.cond
  tail call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([15 x %struct.options_st], [15 x %struct.options_st]* @pkeyparam_options, i64 0, i64 0)) #2
  br label %end

sw.bb4:                                           ; preds = %while.cond
  %call5 = tail call i8* @opt_arg() #2
  br label %while.cond.backedge

sw.bb6:                                           ; preds = %while.cond
  %call7 = tail call i8* @opt_arg() #2
  br label %while.cond.backedge

sw.bb8:                                           ; preds = %while.cond
  %call9 = tail call i8* @opt_arg() #2
  %call10 = tail call %struct.engine_st* @setup_engine_methods(i8* noundef %call9, i32 noundef -1, i32 noundef 0) #2
  br label %while.cond.backedge

sw.bb11:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb12:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb13:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb15:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call16 = tail call i32 @opt_provider(i32 noundef %call1) #2
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %end, label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call17 = tail call i32 @opt_num_rest() #2
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %if.end20, label %opthelp

if.end20:                                         ; preds = %while.end
  %call21 = tail call %struct.bio_st* @bio_open_default(i8* noundef %infile.0, i8 noundef signext 114, i32 noundef 32773) #2
  %cmp22 = icmp eq %struct.bio_st* %call21, null
  br i1 %cmp22, label %end, label %if.end24

if.end24:                                         ; preds = %if.end20
  %call25 = tail call %struct.bio_st* @bio_open_default(i8* noundef %outfile.0, i8 noundef signext 119, i32 noundef 32773) #2
  %cmp26 = icmp eq %struct.bio_st* %call25, null
  br i1 %cmp26, label %end, label %if.end28

if.end28:                                         ; preds = %if.end24
  %call29 = tail call %struct.evp_pkey_st* @PEM_read_bio_Parameters(%struct.bio_st* noundef nonnull %call21, %struct.evp_pkey_st** noundef null) #2
  %cmp30 = icmp eq %struct.evp_pkey_st* %call29, null
  br i1 %cmp30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end28
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call32 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0)) #2
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  tail call void @ERR_print_errors(%struct.bio_st* noundef %2) #2
  br label %end

if.end33:                                         ; preds = %if.end28
  %tobool34.not = icmp eq i32 %check.0, 0
  br i1 %tobool34.not, label %if.end46, label %if.then35

if.then35:                                        ; preds = %if.end33
  %call36 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef nonnull %call29, %struct.engine_st* noundef %e.0) #2
  %cmp37 = icmp eq %struct.evp_pkey_ctx_st* %call36, null
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.then35
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  tail call void @ERR_print_errors(%struct.bio_st* noundef %3) #2
  br label %end

if.end39:                                         ; preds = %if.then35
  %call40 = tail call i32 @EVP_PKEY_param_check(%struct.evp_pkey_ctx_st* noundef nonnull %call36) #2
  %cmp41 = icmp eq i32 %call40, 1
  br i1 %cmp41, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end39
  %call43 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %call25, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0)) #2
  br label %if.end46

if.else:                                          ; preds = %if.end39
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call44 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0)) #2
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  tail call void @ERR_print_errors(%struct.bio_st* noundef %5) #2
  br label %end

if.end46:                                         ; preds = %if.then42, %if.end33
  %ctx.0 = phi %struct.evp_pkey_ctx_st* [ %call36, %if.then42 ], [ null, %if.end33 ]
  %tobool47.not = icmp eq i32 %noout.0, 0
  br i1 %tobool47.not, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end46
  %call49 = tail call i32 @PEM_write_bio_Parameters(%struct.bio_st* noundef nonnull %call25, %struct.evp_pkey_st* noundef nonnull %call29) #2
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end46
  %tobool51.not = icmp eq i32 %text.0, 0
  br i1 %tobool51.not, label %end, label %if.then52

if.then52:                                        ; preds = %if.end50
  %call53 = tail call i32 @EVP_PKEY_print_params(%struct.bio_st* noundef nonnull %call25, %struct.evp_pkey_st* noundef nonnull %call29, i32 noundef 0, %struct.asn1_pctx_st* noundef null) #2
  br label %end

end:                                              ; preds = %sw.bb15, %if.end50, %if.then52, %if.end24, %if.end20, %if.else, %if.then38, %if.then31, %sw.bb3, %opthelp
  %out.0 = phi %struct.bio_st* [ null, %sw.bb3 ], [ null, %opthelp ], [ null, %if.end20 ], [ null, %if.end24 ], [ %call25, %if.then31 ], [ %call25, %if.then38 ], [ %call25, %if.else ], [ %call25, %if.then52 ], [ %call25, %if.end50 ], [ null, %sw.bb15 ]
  %pkey.0 = phi %struct.evp_pkey_st* [ null, %sw.bb3 ], [ null, %opthelp ], [ null, %if.end20 ], [ null, %if.end24 ], [ null, %if.then31 ], [ %call29, %if.then38 ], [ %call29, %if.else ], [ %call29, %if.then52 ], [ %call29, %if.end50 ], [ null, %sw.bb15 ]
  %ctx.1 = phi %struct.evp_pkey_ctx_st* [ null, %sw.bb3 ], [ null, %opthelp ], [ null, %if.end20 ], [ null, %if.end24 ], [ null, %if.then31 ], [ null, %if.then38 ], [ %call36, %if.else ], [ %ctx.0, %if.then52 ], [ %ctx.0, %if.end50 ], [ null, %sw.bb15 ]
  %ret.0 = phi i32 [ 0, %sw.bb3 ], [ 1, %opthelp ], [ 1, %if.end20 ], [ 1, %if.end24 ], [ 1, %if.then31 ], [ 1, %if.then38 ], [ 1, %if.else ], [ 0, %if.then52 ], [ 0, %if.end50 ], [ 1, %sw.bb15 ]
  %in.0 = phi %struct.bio_st* [ null, %sw.bb3 ], [ null, %opthelp ], [ null, %if.end20 ], [ %call21, %if.end24 ], [ %call21, %if.then31 ], [ %call21, %if.then38 ], [ %call21, %if.else ], [ %call21, %if.then52 ], [ %call21, %if.end50 ], [ null, %sw.bb15 ]
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.1) #2
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.0) #2
  tail call void @release_engine(%struct.engine_st* noundef %e.0) #2
  tail call void @BIO_free_all(%struct.bio_st* noundef %out.0) #2
  %call55 = tail call i32 @BIO_free(%struct.bio_st* noundef %in.0) #2
  ret i32 %ret.0
}

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #1

declare dso_local i32 @opt_next() local_unnamed_addr #1

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #1

declare dso_local i8* @opt_arg() local_unnamed_addr #1

declare dso_local %struct.engine_st* @setup_engine_methods(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #1

declare dso_local i32 @opt_num_rest() local_unnamed_addr #1

declare dso_local %struct.bio_st* @bio_open_default(i8* noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_st* @PEM_read_bio_Parameters(%struct.bio_st* noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #1

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_param_check(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @PEM_write_bio_Parameters(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_print_params(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #1

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #1

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

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
