; ModuleID = 'apps/lib/opt.c'
source_filename = "apps/lib/opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.evp_cipher_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_md_st = type opaque
%struct.string_int_pair_st = type { i8*, i32 }
%struct.strstr_pair_st = type { i8*, i8* }
%struct.X509_VERIFY_PARAM_st = type opaque
%struct.asn1_object_st = type opaque
%struct.x509_purpose_st = type { i32, i32, i32, i32 (%struct.x509_purpose_st*, %struct.x509_st*, i32)*, i8*, i8*, i8* }
%struct.x509_st = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@OPT_HELP_STR = constant [3 x i8] c"-H\00", align 1
@OPT_MORE_STR = constant [3 x i8] c"-M\00", align 1
@OPT_SECTION_STR = constant [3 x i8] c"-S\00", align 1
@OPT_PARAM_STR = constant [3 x i8] c"-P\00", align 1
@prog = internal global [40 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@argv = internal unnamed_addr global i8** null, align 8
@opts = internal unnamed_addr global %struct.options_st* null, align 8
@unknown = internal unnamed_addr global %struct.options_st* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"assertion failed: unknown == NULL\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"apps/lib/opt.c\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"assertion failed: unknown->valtype == 0 || unknown->valtype == '-'\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"%s: Bad format \22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"NSS\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"nss\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"PEM\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"pem\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"PVK\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"pvk\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"P12\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"p12\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"PKCS12\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"pkcs12\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"%s: Unknown cipher: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"%s XTS ciphers not supported\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"%s: AEAD ciphers not supported\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"%s: Unknown option or message digest: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"%s: Value must be one of:\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"%s: Value \22%s\22 outside integer range\0A\00", align 1
@arg = internal unnamed_addr global i8* null, align 8
@.str.23 = private unnamed_addr constant [30 x i8] c"assertion failed: vpm != NULL\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"assertion failed: opt > OPT_V__FIRST\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"assertion failed: opt < OPT_V__LAST\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"%s: Invalid Policy %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"%s: Invalid purpose %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"%s: Internal error setting purpose %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"%s: Invalid verify name %s\0A\00", align 1
@opt_index = internal unnamed_addr global i32 0, align 4
@flag = internal unnamed_addr global i8* null, align 8
@.str.31 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"%s: Option -%s does not take a value\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"%s: Option -%s needs a value\0A\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"%s: Not a directory: %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [45 x i8] c"%s: Non-positive number \22%s\22 for option -%s\0A\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"%s: Negative number \22%s\22 for option -%s\0A\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"%s: Invalid format \22%s\22 for option -%s\0A\00", align 1
@dunno = internal unnamed_addr global i8* null, align 8
@.str.40 = private unnamed_addr constant [25 x i8] c"%s: Unknown option: -%s\0A\00", align 1
@.str.41 = private unnamed_addr constant [41 x i8] c"assertion failed: i < (int)sizeof(start)\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"Usage: %s [options]\0A\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"Valid options are:\0A\00", align 1
@.str.44 = private unnamed_addr constant [41 x i8] c"%s: Bad format \22%s\22; must be pem or der\0A\00", align 1
@.str.45 = private unnamed_addr constant [38 x i8] c"%s: Bad format \22%s\22; must be one of:\0A\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"   %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"PEM/DER\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"smime\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"msblob\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"(undefined)\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"DER\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"TEXT\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"SMIME\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"MSBLOB\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"ENGINE\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"HTTP\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"a hexadecimal\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"0X\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"an octal\00", align 1
@.str.65 = private unnamed_addr constant [35 x i8] c"%s: Can't parse \22%s\22 as %s number\0A\00", align 1
@.str.66 = private unnamed_addr constant [34 x i8] c"%s: Can't parse \22%s\22 as a number\0A\00", align 1
@.str.67 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"uri\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"infile\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"outfile\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"+int\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"ulong\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c"PEM|DER|ENGINE\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"PEM|DER\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"intmax\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"nonneg\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"uintmax\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"parm\00", align 1
@.str.84 = private unnamed_addr constant [21 x i8] c"(No additional info)\00", align 1
@.str.85 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"\0AParameters:\0A\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"%s  %s\0A\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nofree noinline nounwind readonly uwtable
define i8* @opt_path_end(i8* noundef readonly %filename) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(i8* noundef %filename) #13
  %add.ptr = getelementptr inbounds i8, i8* %filename, i64 %call
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %p.0 = phi i8* [ %add.ptr, %entry ], [ %incdec.ptr, %for.body ]
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 -1
  %cmp = icmp ugt i8* %incdec.ptr, %filename
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i8, i8* %incdec.ptr, align 1, !tbaa !4
  %cmp1 = icmp eq i8 %0, 47
  br i1 %cmp1, label %for.end, label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.body, %for.cond
  %p.1 = phi i8* [ %incdec.ptr, %for.cond ], [ %p.0, %for.body ]
  ret i8* %p.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i8* @opt_progname(i8* noundef %argv0) local_unnamed_addr #3 {
entry:
  %call = tail call i8* @opt_path_end(i8* noundef %argv0) #14
  %cmp.not = icmp eq i8* %call, getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0)
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @strncpy(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0), i8* noundef %call, i64 noundef 39) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i8 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 39), align 1, !tbaa !4
  ret i8* getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0)
}

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i8* @opt_appname(i8* noundef %argv0) local_unnamed_addr #3 {
entry:
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0)) #13
  %cmp.not = icmp eq i8* %argv0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds [40 x i8], [40 x i8]* @prog, i64 0, i64 %call
  %sub1 = sub i64 39, %call
  %call2 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %add.ptr, i64 noundef %sub1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %argv0) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i8* getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0)
}

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i8* @opt_getprog() local_unnamed_addr #6 {
entry:
  ret i8* getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define i8* @opt_init(i32 noundef %ac, i8** noundef %av, %struct.options_st* noundef %o) local_unnamed_addr #3 {
entry:
  store i8** %av, i8*** @argv, align 8, !tbaa !9
  tail call void @opt_begin() #14
  store %struct.options_st* %o, %struct.options_st** @opts, align 8, !tbaa !9
  store %struct.options_st* null, %struct.options_st** @unknown, align 8, !tbaa !9
  %0 = load i8*, i8** %av, align 8, !tbaa !9
  %call = tail call i8* @opt_progname(i8* noundef %0) #14
  %name41 = getelementptr inbounds %struct.options_st, %struct.options_st* %o, i64 0, i32 0
  %1 = load i8*, i8** %name41, align 8, !tbaa !11
  %cmp.not42 = icmp eq i8* %1, null
  %cmp2.not43 = icmp eq i8* %1, getelementptr inbounds ([3 x i8], [3 x i8]* @OPT_PARAM_STR, i64 0, i64 0)
  %or.cond44 = or i1 %cmp.not42, %cmp2.not43
  br i1 %or.cond44, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %unknown.promoted = load %struct.options_st*, %struct.options_st** @unknown, align 8, !tbaa !9
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %2 = phi i8* [ %5, %for.inc ], [ %1, %for.body.preheader ]
  %o.addr.046 = phi %struct.options_st* [ %incdec.ptr, %for.inc ], [ %o, %for.body.preheader ]
  %o.addr.04045 = phi %struct.options_st* [ %o.addr.039, %for.inc ], [ %unknown.promoted, %for.body.preheader ]
  %cmp4 = icmp eq i8* %2, getelementptr inbounds ([3 x i8], [3 x i8]* @OPT_HELP_STR, i64 0, i64 0)
  %cmp6 = icmp eq i8* %2, getelementptr inbounds ([3 x i8], [3 x i8]* @OPT_MORE_STR, i64 0, i64 0)
  %or.cond37 = or i1 %cmp4, %cmp6
  %cmp9 = icmp eq i8* %2, getelementptr inbounds ([3 x i8], [3 x i8]* @OPT_SECTION_STR, i64 0, i64 0)
  %or.cond38 = or i1 %cmp9, %or.cond37
  br i1 %or.cond38, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %3 = load i8, i8* %2, align 1, !tbaa !4
  %cmp12 = icmp eq i8 %3, 0
  br i1 %cmp12, label %if.then14, label %for.inc

if.then14:                                        ; preds = %if.end
  %cmp15 = icmp eq %struct.options_st* %o.addr.04045, null
  br i1 %cmp15, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then14
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 218) #16
  unreachable

cond.end:                                         ; preds = %if.then14
  store %struct.options_st* %o.addr.046, %struct.options_st** @unknown, align 8, !tbaa !9
  %valtype = getelementptr inbounds %struct.options_st, %struct.options_st* %o.addr.046, i64 0, i32 2
  %4 = load i32, i32* %valtype, align 4, !tbaa !14
  switch i32 %4, label %cond.false24 [
    i32 0, label %for.inc
    i32 45, label %for.inc
  ]

cond.false24:                                     ; preds = %cond.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 220) #16
  unreachable

for.inc:                                          ; preds = %cond.end, %cond.end, %if.end, %for.body
  %o.addr.039 = phi %struct.options_st* [ %o.addr.046, %cond.end ], [ %o.addr.046, %cond.end ], [ %o.addr.04045, %if.end ], [ %o.addr.04045, %for.body ]
  %incdec.ptr = getelementptr inbounds %struct.options_st, %struct.options_st* %o.addr.046, i64 1
  %name = getelementptr inbounds %struct.options_st, %struct.options_st* %incdec.ptr, i64 0, i32 0
  %5 = load i8*, i8** %name, align 8, !tbaa !11
  %cmp.not = icmp eq i8* %5, null
  %cmp2.not = icmp eq i8* %5, getelementptr inbounds ([3 x i8], [3 x i8]* @OPT_PARAM_STR, i64 0, i64 0)
  %or.cond = or i1 %cmp.not, %cmp2.not
  br i1 %or.cond, label %for.end, label %for.body, !llvm.loop !15

for.end:                                          ; preds = %for.inc, %entry
  ret i8* getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0)
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @opt_begin() local_unnamed_addr #7 {
entry:
  store i32 1, i32* @opt_index, align 4, !tbaa !16
  store i8* null, i8** @arg, align 8, !tbaa !9
  store i8* null, i8** @flag, align 8, !tbaa !9
  ret void
}

; Function Attrs: noreturn
declare void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind uwtable
define i32 @opt_format(i8* noundef %s, i64 noundef %flags, i32* nocapture noundef writeonly %result) local_unnamed_addr #3 {
entry:
  %0 = load i8, i8* %s, align 1, !tbaa !4
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 68, label %sw.bb
    i32 100, label %sw.bb
    i32 84, label %sw.bb3
    i32 116, label %sw.bb3
    i32 78, label %sw.bb10
    i32 110, label %sw.bb10
    i32 83, label %sw.bb26
    i32 115, label %sw.bb26
    i32 77, label %sw.bb33
    i32 109, label %sw.bb33
    i32 69, label %sw.bb40
    i32 101, label %sw.bb40
    i32 72, label %sw.bb47
    i32 104, label %sw.bb47
    i32 49, label %sw.bb54
    i32 80, label %sw.bb61
    i32 112, label %sw.bb61
  ]

sw.default:                                       ; preds = %entry
  %call = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0), i8* noundef nonnull %s) #15
  br label %return

sw.bb:                                            ; preds = %entry, %entry
  %and = and i64 %flags, 2
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  tail call fastcc void @opt_format_error(i8* noundef nonnull %s, i64 noundef %flags) #14
  br label %return

if.end:                                           ; preds = %sw.bb
  store i32 4, i32* %result, align 4, !tbaa !16
  br label %return

sw.bb3:                                           ; preds = %entry, %entry
  %and4 = and i64 %flags, 256
  %cmp5 = icmp eq i64 %and4, 0
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %sw.bb3
  tail call fastcc void @opt_format_error(i8* noundef nonnull %s, i64 noundef %flags) #14
  br label %return

if.end9:                                          ; preds = %sw.bb3
  store i32 32769, i32* %result, align 4, !tbaa !16
  br label %return

sw.bb10:                                          ; preds = %entry, %entry
  %and11 = and i64 %flags, 128
  %cmp12 = icmp eq i64 %and11, 0
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %sw.bb10
  tail call fastcc void @opt_format_error(i8* noundef nonnull %s, i64 noundef %flags) #14
  br label %return

if.end16:                                         ; preds = %sw.bb10
  %call17 = tail call i32 @strcmp(i8* noundef nonnull %s, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #13
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %if.end25, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end16
  %call20 = tail call i32 @strcmp(i8* noundef nonnull %s, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #13
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %land.lhs.true
  tail call fastcc void @opt_format_error(i8* noundef nonnull %s, i64 noundef %flags) #14
  br label %return

if.end25:                                         ; preds = %land.lhs.true, %if.end16
  store i32 14, i32* %result, align 4, !tbaa !16
  br label %return

sw.bb26:                                          ; preds = %entry, %entry
  %and27 = and i64 %flags, 8
  %cmp28 = icmp eq i64 %and27, 0
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %sw.bb26
  tail call fastcc void @opt_format_error(i8* noundef nonnull %s, i64 noundef %flags) #14
  br label %return

if.end32:                                         ; preds = %sw.bb26
  store i32 32775, i32* %result, align 4, !tbaa !16
  br label %return

sw.bb33:                                          ; preds = %entry, %entry
  %and34 = and i64 %flags, 32
  %cmp35 = icmp eq i64 %and34, 0
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %sw.bb33
  tail call fastcc void @opt_format_error(i8* noundef nonnull %s, i64 noundef %flags) #14
  br label %return

if.end39:                                         ; preds = %sw.bb33
  store i32 11, i32* %result, align 4, !tbaa !16
  br label %return

sw.bb40:                                          ; preds = %entry, %entry
  %and41 = and i64 %flags, 16
  %cmp42 = icmp eq i64 %and41, 0
  br i1 %cmp42, label %if.then44, label %if.end46

if.then44:                                        ; preds = %sw.bb40
  tail call fastcc void @opt_format_error(i8* noundef nonnull %s, i64 noundef %flags) #14
  br label %return

if.end46:                                         ; preds = %sw.bb40
  store i32 8, i32* %result, align 4, !tbaa !16
  br label %return

sw.bb47:                                          ; preds = %entry, %entry
  %and48 = and i64 %flags, 512
  %cmp49 = icmp eq i64 %and48, 0
  br i1 %cmp49, label %if.then51, label %if.end53

if.then51:                                        ; preds = %sw.bb47
  tail call fastcc void @opt_format_error(i8* noundef nonnull %s, i64 noundef %flags) #14
  br label %return

if.end53:                                         ; preds = %sw.bb47
  store i32 13, i32* %result, align 4, !tbaa !16
  br label %return

sw.bb54:                                          ; preds = %entry
  %and55 = and i64 %flags, 4
  %cmp56 = icmp eq i64 %and55, 0
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %sw.bb54
  tail call fastcc void @opt_format_error(i8* noundef nonnull %s, i64 noundef %flags) #14
  br label %return

if.end60:                                         ; preds = %sw.bb54
  store i32 6, i32* %result, align 4, !tbaa !16
  br label %return

sw.bb61:                                          ; preds = %entry, %entry
  %arrayidx = getelementptr inbounds i8, i8* %s, i64 1
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %cmp63 = icmp eq i8 %1, 0
  br i1 %cmp63, label %if.then72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb61
  %call65 = tail call i32 @strcmp(i8* noundef nonnull %s, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #13
  %cmp66 = icmp eq i32 %call65, 0
  br i1 %cmp66, label %if.then72, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false
  %call69 = tail call i32 @strcmp(i8* noundef nonnull %s, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #13
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %if.then72, label %if.else

if.then72:                                        ; preds = %lor.lhs.false68, %lor.lhs.false, %sw.bb61
  %and73 = and i64 %flags, 2
  %cmp74 = icmp eq i64 %and73, 0
  br i1 %cmp74, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.then72
  tail call fastcc void @opt_format_error(i8* noundef nonnull %s, i64 noundef %flags) #14
  br label %return

if.end78:                                         ; preds = %if.then72
  store i32 32773, i32* %result, align 4, !tbaa !16
  br label %return

if.else:                                          ; preds = %lor.lhs.false68
  %call79 = tail call i32 @strcmp(i8* noundef nonnull %s, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #13
  %cmp80 = icmp eq i32 %call79, 0
  br i1 %cmp80, label %if.then86, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %if.else
  %call83 = tail call i32 @strcmp(i8* noundef nonnull %s, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #13
  %cmp84 = icmp eq i32 %call83, 0
  br i1 %cmp84, label %if.then86, label %if.else93

if.then86:                                        ; preds = %lor.lhs.false82, %if.else
  %and87 = and i64 %flags, 1024
  %cmp88 = icmp eq i64 %and87, 0
  br i1 %cmp88, label %if.then90, label %if.end92

if.then90:                                        ; preds = %if.then86
  tail call fastcc void @opt_format_error(i8* noundef nonnull %s, i64 noundef %flags) #14
  br label %return

if.end92:                                         ; preds = %if.then86
  store i32 12, i32* %result, align 4, !tbaa !16
  br label %return

if.else93:                                        ; preds = %lor.lhs.false82
  %call94 = tail call i32 @strcmp(i8* noundef nonnull %s, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)) #13
  %cmp95 = icmp eq i32 %call94, 0
  br i1 %cmp95, label %if.then109, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %if.else93
  %call98 = tail call i32 @strcmp(i8* noundef nonnull %s, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #13
  %cmp99 = icmp eq i32 %call98, 0
  br i1 %cmp99, label %if.then109, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %lor.lhs.false97
  %call102 = tail call i32 @strcmp(i8* noundef nonnull %s, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)) #13
  %cmp103 = icmp eq i32 %call102, 0
  br i1 %cmp103, label %if.then109, label %lor.lhs.false105

lor.lhs.false105:                                 ; preds = %lor.lhs.false101
  %call106 = tail call i32 @strcmp(i8* noundef nonnull %s, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0)) #13
  %cmp107 = icmp eq i32 %call106, 0
  br i1 %cmp107, label %if.then109, label %if.else116

if.then109:                                       ; preds = %lor.lhs.false105, %lor.lhs.false101, %lor.lhs.false97, %if.else93
  %and110 = and i64 %flags, 4
  %cmp111 = icmp eq i64 %and110, 0
  br i1 %cmp111, label %if.then113, label %if.end115

if.then113:                                       ; preds = %if.then109
  tail call fastcc void @opt_format_error(i8* noundef nonnull %s, i64 noundef %flags) #14
  br label %return

if.end115:                                        ; preds = %if.then109
  store i32 6, i32* %result, align 4, !tbaa !16
  br label %return

if.else116:                                       ; preds = %lor.lhs.false105
  %call117 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0), i8* noundef nonnull %s) #15
  br label %return

return:                                           ; preds = %if.end, %if.end9, %if.end25, %if.end32, %if.end39, %if.end46, %if.end53, %if.end60, %if.end92, %if.end115, %if.end78, %if.else116, %if.then113, %if.then90, %if.then76, %if.then58, %if.then51, %if.then44, %if.then37, %if.then30, %if.then23, %if.then14, %if.then7, %if.then, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ 0, %if.then76 ], [ 0, %if.then90 ], [ 0, %if.then113 ], [ 0, %if.else116 ], [ 0, %if.then58 ], [ 0, %if.then51 ], [ 0, %if.then44 ], [ 0, %if.then37 ], [ 0, %if.then30 ], [ 0, %if.then14 ], [ 0, %if.then23 ], [ 0, %if.then7 ], [ 0, %if.then ], [ 1, %if.end78 ], [ 1, %if.end115 ], [ 1, %if.end92 ], [ 1, %if.end60 ], [ 1, %if.end53 ], [ 1, %if.end46 ], [ 1, %if.end39 ], [ 1, %if.end32 ], [ 1, %if.end25 ], [ 1, %if.end9 ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @opt_printf_stderr(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @opt_format_error(i8* noundef %s, i64 noundef %flags) unnamed_addr #3 {
entry:
  %cmp = icmp eq i64 %flags, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0), i8* noundef %s) #15
  br label %if.end7

if.else:                                          ; preds = %entry
  %call1 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0), i8* noundef %s) #15
  %and = and i64 %flags, 2
  %tobool3.not = icmp eq i64 %and, 0
  br i1 %tobool3.not, label %for.inc, label %if.then4

if.then4:                                         ; preds = %if.else
  %call6 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0)) #15
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then4
  %and.1 = and i64 %flags, 4
  %tobool3.not.1 = icmp eq i64 %and.1, 0
  br i1 %tobool3.not.1, label %for.inc.1, label %if.then4.1

if.then4.1:                                       ; preds = %for.inc
  %call6.1 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0)) #15
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then4.1, %for.inc
  %and.2 = and i64 %flags, 8
  %tobool3.not.2 = icmp eq i64 %and.2, 0
  br i1 %tobool3.not.2, label %for.inc.2, label %if.then4.2

if.then4.2:                                       ; preds = %for.inc.1
  %call6.2 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0)) #15
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then4.2, %for.inc.1
  %and.3 = and i64 %flags, 16
  %tobool3.not.3 = icmp eq i64 %and.3, 0
  br i1 %tobool3.not.3, label %for.inc.3, label %if.then4.3

if.then4.3:                                       ; preds = %for.inc.2
  %call6.3 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0)) #15
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then4.3, %for.inc.2
  %and.4 = and i64 %flags, 32
  %tobool3.not.4 = icmp eq i64 %and.4, 0
  br i1 %tobool3.not.4, label %for.inc.4, label %if.then4.4

if.then4.4:                                       ; preds = %for.inc.3
  %call6.4 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0)) #15
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then4.4, %for.inc.3
  %and.5 = and i64 %flags, 128
  %tobool3.not.5 = icmp eq i64 %and.5, 0
  br i1 %tobool3.not.5, label %for.inc.5, label %if.then4.5

if.then4.5:                                       ; preds = %for.inc.4
  %call6.5 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #15
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then4.5, %for.inc.4
  %and.6 = and i64 %flags, 256
  %tobool3.not.6 = icmp eq i64 %and.6, 0
  br i1 %tobool3.not.6, label %for.inc.6, label %if.then4.6

if.then4.6:                                       ; preds = %for.inc.5
  %call6.6 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0)) #15
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then4.6, %for.inc.5
  %and.7 = and i64 %flags, 512
  %tobool3.not.7 = icmp eq i64 %and.7, 0
  br i1 %tobool3.not.7, label %for.inc.7, label %if.then4.7

if.then4.7:                                       ; preds = %for.inc.6
  %call6.7 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0)) #15
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then4.7, %for.inc.6
  %and.8 = and i64 %flags, 1024
  %tobool3.not.8 = icmp eq i64 %and.8, 0
  br i1 %tobool3.not.8, label %if.end7, label %if.then4.8

if.then4.8:                                       ; preds = %for.inc.7
  %call6.8 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #15
  br label %if.end7

if.end7:                                          ; preds = %for.inc.7, %if.then4.8, %if.then
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @print_format_error(i32 noundef %format, i64 noundef %flags) local_unnamed_addr #3 {
entry:
  %call = tail call fastcc i8* @format2str(i32 noundef %format) #14
  tail call fastcc void @opt_format_error(i8* noundef %call, i64 noundef %flags) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i8* @format2str(i32 noundef %format) unnamed_addr #6 {
entry:
  switch i32 %format, label %return [
    i32 32773, label %sw.bb
    i32 4, label %sw.bb1
    i32 32769, label %sw.bb2
    i32 14, label %sw.bb3
    i32 32775, label %sw.bb4
    i32 11, label %sw.bb5
    i32 8, label %sw.bb6
    i32 13, label %sw.bb7
    i32 6, label %sw.bb8
    i32 12, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  br label %return

sw.bb1:                                           ; preds = %entry
  br label %return

sw.bb2:                                           ; preds = %entry
  br label %return

sw.bb3:                                           ; preds = %entry
  br label %return

sw.bb4:                                           ; preds = %entry
  br label %return

sw.bb5:                                           ; preds = %entry
  br label %return

sw.bb6:                                           ; preds = %entry
  br label %return

sw.bb7:                                           ; preds = %entry
  br label %return

sw.bb8:                                           ; preds = %entry
  br label %return

sw.bb9:                                           ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %retval.0 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), %sw.bb9 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %sw.bb8 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), %sw.bb7 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0), %sw.bb6 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), %sw.bb5 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), %sw.bb4 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %sw.bb3 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), %sw.bb2 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), %sw.bb1 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %sw.bb ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @opt_cipher_silent(i8* noundef %name, %struct.evp_cipher_st** noundef %cipherp) local_unnamed_addr #3 {
entry:
  %call = tail call i32 @ERR_set_mark() #15
  %call1 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #15
  %call2 = tail call i8* @app_get0_propq() #15
  %call3 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %name, i8* noundef %call2) #15
  %cmp.not = icmp eq %struct.evp_cipher_st* %call3, null
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call4 = tail call i32 @opt_legacy_okay() #15
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call5 = tail call %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef %name) #15
  %cmp6.not = icmp eq %struct.evp_cipher_st* %call5, null
  br i1 %cmp6.not, label %if.end10, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %c.0 = phi %struct.evp_cipher_st* [ %call3, %entry ], [ %call5, %land.lhs.true ]
  %call7 = tail call i32 @ERR_pop_to_mark() #15
  %cmp8.not = icmp eq %struct.evp_cipher_st** %cipherp, null
  br i1 %cmp8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipherp, align 8, !tbaa !9
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %0) #15
  store %struct.evp_cipher_st* %c.0, %struct.evp_cipher_st** %cipherp, align 8, !tbaa !9
  br label %cleanup

if.else:                                          ; preds = %if.then
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef nonnull %c.0) #15
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %call11 = tail call i32 @ERR_clear_last_mark() #15
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.else, %if.end10
  %retval.0 = phi i32 [ 0, %if.end10 ], [ 1, %if.else ], [ 1, %if.then9 ]
  ret i32 %retval.0
}

declare i32 @ERR_set_mark() local_unnamed_addr #5

declare %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #5

declare %struct.ossl_lib_ctx_st* @app_get0_libctx() local_unnamed_addr #5

declare i8* @app_get0_propq() local_unnamed_addr #5

declare i32 @opt_legacy_okay() local_unnamed_addr #5

declare %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef) local_unnamed_addr #5

declare i32 @ERR_pop_to_mark() local_unnamed_addr #5

declare void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #5

declare i32 @ERR_clear_last_mark() local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define i32 @opt_cipher_any(i8* noundef %name, %struct.evp_cipher_st** noundef %cipherp) local_unnamed_addr #3 {
entry:
  %call = tail call i32 @opt_cipher_silent(i8* noundef %name, %struct.evp_cipher_st** noundef %cipherp) #14
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0), i8* noundef %name) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @opt_cipher(i8* noundef %name, %struct.evp_cipher_st** noundef writeonly %cipherp) local_unnamed_addr #3 {
entry:
  %c = alloca %struct.evp_cipher_st*, align 8
  %0 = bitcast %struct.evp_cipher_st** %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %c, align 8, !tbaa !9
  %call = call i32 @opt_cipher_any(i8* noundef %name, %struct.evp_cipher_st** noundef nonnull %c) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end13, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %c, align 8, !tbaa !9
  %call1 = call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %1) #15
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %c, align 8, !tbaa !9
  %call2 = call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %2) #15
  %cmp = icmp eq i32 %call1, 65537
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %call4 = call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0)) #15
  br label %if.end13

if.else:                                          ; preds = %if.then
  %and = and i64 %call2, 2097152
  %cmp5.not = icmp eq i64 %and, 0
  br i1 %cmp5.not, label %if.else8, label %if.then6

if.then6:                                         ; preds = %if.else
  %call7 = call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0)) #15
  br label %if.end13

if.else8:                                         ; preds = %if.else
  %cmp9.not = icmp eq %struct.evp_cipher_st** %cipherp, null
  br i1 %cmp9.not, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.else8
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %c, align 8, !tbaa !9
  store %struct.evp_cipher_st* %3, %struct.evp_cipher_st** %cipherp, align 8, !tbaa !9
  br label %if.end13

if.end13:                                         ; preds = %if.then3, %if.else8, %if.then10, %if.then6, %entry
  %ret.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.then6 ], [ 1, %if.then10 ], [ 1, %if.else8 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %ret.0
}

declare i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef) local_unnamed_addr #5

declare i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define i32 @opt_md_silent(i8* noundef %name, %struct.evp_md_st** noundef %mdp) local_unnamed_addr #3 {
entry:
  %call = tail call i32 @ERR_set_mark() #15
  %call1 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #15
  %call2 = tail call i8* @app_get0_propq() #15
  %call3 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %name, i8* noundef %call2) #15
  %cmp.not = icmp eq %struct.evp_md_st* %call3, null
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call4 = tail call i32 @opt_legacy_okay() #15
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call5 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %name) #15
  %cmp6.not = icmp eq %struct.evp_md_st* %call5, null
  br i1 %cmp6.not, label %if.end10, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %md.0 = phi %struct.evp_md_st* [ %call3, %entry ], [ %call5, %land.lhs.true ]
  %call7 = tail call i32 @ERR_pop_to_mark() #15
  %cmp8.not = icmp eq %struct.evp_md_st** %mdp, null
  br i1 %cmp8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then
  %0 = load %struct.evp_md_st*, %struct.evp_md_st** %mdp, align 8, !tbaa !9
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %0) #15
  store %struct.evp_md_st* %md.0, %struct.evp_md_st** %mdp, align 8, !tbaa !9
  br label %cleanup

if.else:                                          ; preds = %if.then
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef nonnull %md.0) #15
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %call11 = tail call i32 @ERR_clear_last_mark() #15
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.else, %if.end10
  %retval.0 = phi i32 [ 0, %if.end10 ], [ 1, %if.else ], [ 1, %if.then9 ]
  ret i32 %retval.0
}

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #5

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #5

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define i32 @opt_md(i8* noundef %name, %struct.evp_md_st** noundef %mdp) local_unnamed_addr #3 {
entry:
  %call = tail call i32 @opt_md_silent(i8* noundef %name, %struct.evp_md_st** noundef %mdp) #14
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmp1.not = icmp eq i8* %name, null
  %cond = select i1 %cmp1.not, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %name
  %call2 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0), i8* noundef %cond) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @opt_pair(i8* noundef readonly %name, %struct.string_int_pair_st* nocapture noundef readonly %pairs, i32* nocapture noundef writeonly %result) local_unnamed_addr #3 {
entry:
  %name124 = getelementptr inbounds %struct.string_int_pair_st, %struct.string_int_pair_st* %pairs, i64 0, i32 0
  %0 = load i8*, i8** %name124, align 8, !tbaa !17
  %tobool.not25 = icmp eq i8* %0, null
  br i1 %tobool.not25, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %1 = phi i8* [ %3, %for.inc ], [ %0, %entry ]
  %pp.026 = phi %struct.string_int_pair_st* [ %incdec.ptr, %for.inc ], [ %pairs, %entry ]
  %call = tail call i32 @strcmp(i8* noundef nonnull %1, i8* noundef %name) #13
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %retval3 = getelementptr inbounds %struct.string_int_pair_st, %struct.string_int_pair_st* %pp.026, i64 0, i32 1
  %2 = load i32, i32* %retval3, align 8, !tbaa !19
  store i32 %2, i32* %result, align 4, !tbaa !16
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds %struct.string_int_pair_st, %struct.string_int_pair_st* %pp.026, i64 1
  %name1 = getelementptr inbounds %struct.string_int_pair_st, %struct.string_int_pair_st* %incdec.ptr, i64 0, i32 0
  %3 = load i8*, i8** %name1, align 8, !tbaa !17
  %tobool.not = icmp eq i8* %3, null
  br i1 %tobool.not, label %for.end, label %for.body, !llvm.loop !20

for.end:                                          ; preds = %for.inc, %entry
  %call4 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0)) #15
  %4 = load i8*, i8** %name124, align 8, !tbaa !17
  %tobool7.not28 = icmp eq i8* %4, null
  br i1 %tobool7.not28, label %cleanup, label %for.body8

for.body8:                                        ; preds = %for.end, %for.body8
  %5 = phi i8* [ %6, %for.body8 ], [ %4, %for.end ]
  %pp.129 = phi %struct.string_int_pair_st* [ %incdec.ptr12, %for.body8 ], [ %pairs, %for.end ]
  %call10 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* noundef nonnull %5) #15
  %incdec.ptr12 = getelementptr inbounds %struct.string_int_pair_st, %struct.string_int_pair_st* %pp.129, i64 1
  %name6 = getelementptr inbounds %struct.string_int_pair_st, %struct.string_int_pair_st* %incdec.ptr12, i64 0, i32 0
  %6 = load i8*, i8** %name6, align 8, !tbaa !17
  %tobool7.not = icmp eq i8* %6, null
  br i1 %tobool7.not, label %cleanup, label %for.body8, !llvm.loop !21

cleanup:                                          ; preds = %for.body8, %for.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %for.end ], [ 0, %for.body8 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @opt_string(i8* noundef readonly %name, i8** nocapture noundef readonly %options) local_unnamed_addr #3 {
entry:
  %0 = load i8*, i8** %options, align 8, !tbaa !9
  %cmp.not19 = icmp eq i8* %0, null
  br i1 %cmp.not19, label %for.end, label %for.body

for.cond:                                         ; preds = %for.body
  %1 = load i8*, i8** %incdec.ptr, align 8, !tbaa !9
  %cmp.not = icmp eq i8* %1, null
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !22

for.body:                                         ; preds = %entry, %for.cond
  %2 = phi i8* [ %1, %for.cond ], [ %0, %entry ]
  %p.020 = phi i8** [ %incdec.ptr, %for.cond ], [ %options, %entry ]
  %call = tail call i32 @strcmp(i8* noundef nonnull %2, i8* noundef %name) #13
  %cmp1 = icmp eq i32 %call, 0
  %incdec.ptr = getelementptr inbounds i8*, i8** %p.020, i64 1
  br i1 %cmp1, label %cleanup, label %for.cond

for.end:                                          ; preds = %for.cond, %entry
  %call2 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0)) #15
  %3 = load i8*, i8** %options, align 8, !tbaa !9
  %cmp4.not21 = icmp eq i8* %3, null
  br i1 %cmp4.not21, label %cleanup, label %for.body5

for.body5:                                        ; preds = %for.end, %for.body5
  %4 = phi i8* [ %5, %for.body5 ], [ %3, %for.end ]
  %p.122 = phi i8** [ %incdec.ptr8, %for.body5 ], [ %options, %for.end ]
  %call6 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* noundef nonnull %4) #15
  %incdec.ptr8 = getelementptr inbounds i8*, i8** %p.122, i64 1
  %5 = load i8*, i8** %incdec.ptr8, align 8, !tbaa !9
  %cmp4.not = icmp eq i8* %5, null
  br i1 %cmp4.not, label %cleanup, label %for.body5, !llvm.loop !23

cleanup:                                          ; preds = %for.body, %for.body5, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ 0, %for.body5 ], [ 1, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @opt_int(i8* noundef %value, i32* nocapture noundef writeonly %result) local_unnamed_addr #3 {
entry:
  %l = alloca i64, align 8
  %0 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  %call = call i32 @opt_long(i8* noundef %value, i64* noundef nonnull %l) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %l, align 8, !tbaa !24
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %result, align 4, !tbaa !16
  %2 = add i64 %1, 2147483648
  %3 = icmp ult i64 %2, 4294967296
  br i1 %3, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0), i8* noundef %value) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %entry ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @opt_long(i8* noundef %value, i64* nocapture noundef writeonly %result) local_unnamed_addr #3 {
entry:
  %endp = alloca i8*, align 8
  %call = tail call i32* @__errno_location() #18
  %0 = load i32, i32* %call, align 4, !tbaa !16
  %1 = bitcast i8** %endp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  store i32 0, i32* %call, align 4, !tbaa !16
  %call2 = call i64 @strtol(i8* noundef %value, i8** noundef nonnull %endp, i32 noundef 0) #15
  %2 = load i8*, i8** %endp, align 8, !tbaa !9
  %3 = load i8, i8* %2, align 1, !tbaa !4
  %tobool.not = icmp ne i8 %3, 0
  %cmp = icmp eq i8* %2, %value
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %entry
  %4 = add i64 %call2, -9223372036854775807
  %5 = icmp ult i64 %4, 2
  br i1 %5, label %land.lhs.true, label %lor.lhs.false13

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %6 = load i32, i32* %call, align 4, !tbaa !16
  %cmp11 = icmp eq i32 %6, 34
  br i1 %cmp11, label %if.then, label %if.end

lor.lhs.false13:                                  ; preds = %lor.lhs.false4
  %cmp14 = icmp eq i64 %call2, 0
  br i1 %cmp14, label %land.lhs.true16, label %if.end

land.lhs.true16:                                  ; preds = %lor.lhs.false13
  %7 = load i32, i32* %call, align 4, !tbaa !16
  %cmp18.not = icmp eq i32 %7, 0
  br i1 %cmp18.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true16, %land.lhs.true, %entry
  call fastcc void @opt_number_error(i8* noundef %value) #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %land.lhs.true16, %lor.lhs.false13
  store i64 %call2, i64* %result, align 8, !tbaa !24
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  store i32 %0, i32* %call, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @opt_int_arg() local_unnamed_addr #3 {
entry:
  %result = alloca i32, align 4
  %0 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #17
  store i32 -1, i32* %result, align 4, !tbaa !16
  %1 = load i8*, i8** @arg, align 8, !tbaa !9
  %call = call i32 @opt_int(i8* noundef %1, i32* noundef nonnull %result) #14
  %2 = load i32, i32* %result, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #17
  ret i32 %2
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare i64 @strtol(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @opt_number_error(i8* noundef %v) unnamed_addr #3 {
entry:
  %b = alloca [3 x %struct.strstr_pair_st], align 16
  %0 = bitcast [3 x %struct.strstr_pair_st]* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #17
  %1 = getelementptr inbounds [3 x %struct.strstr_pair_st], [3 x %struct.strstr_pair_st]* %b, i64 0, i64 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0), i8** %1, align 16
  %2 = getelementptr inbounds [3 x %struct.strstr_pair_st], [3 x %struct.strstr_pair_st]* %b, i64 0, i64 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.61, i64 0, i64 0), i8** %2, align 8
  %3 = getelementptr inbounds [3 x %struct.strstr_pair_st], [3 x %struct.strstr_pair_st]* %b, i64 0, i64 1, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8** %3, align 16
  %4 = getelementptr inbounds [3 x %struct.strstr_pair_st], [3 x %struct.strstr_pair_st]* %b, i64 0, i64 1, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.61, i64 0, i64 0), i8** %4, align 8
  %5 = getelementptr inbounds [3 x %struct.strstr_pair_st], [3 x %struct.strstr_pair_st]* %b, i64 0, i64 2, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8** %5, align 16
  %6 = getelementptr inbounds [3 x %struct.strstr_pair_st], [3 x %struct.strstr_pair_st]* %b, i64 0, i64 2, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i64 0, i64 0), i8** %6, align 8
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0)) #13
  %call3 = tail call i32 @strncmp(i8* noundef %v, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0), i64 noundef %call) #13
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.inc.1, %for.inc, %entry
  %i.017.lcssa = phi i64 [ 0, %entry ], [ 1, %for.inc ], [ 2, %for.inc.1 ]
  %name = getelementptr inbounds [3 x %struct.strstr_pair_st], [3 x %struct.strstr_pair_st]* %b, i64 0, i64 %i.017.lcssa, i32 1
  %7 = load i8*, i8** %name, align 8, !tbaa !26
  %call6 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0), i8* noundef %v, i8* noundef %7) #15
  br label %cleanup

for.inc:                                          ; preds = %entry
  %call.1 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0)) #13
  %call3.1 = tail call i32 @strncmp(i8* noundef %v, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i64 noundef %call.1) #13
  %cmp4.1 = icmp eq i32 %call3.1, 0
  br i1 %cmp4.1, label %if.then, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %call.2 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0)) #13
  %call3.2 = tail call i32 @strncmp(i8* noundef %v, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i64 noundef %call.2) #13
  %cmp4.2 = icmp eq i32 %call3.2, 0
  br i1 %cmp4.2, label %if.then, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %call7 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.66, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0), i8* noundef %v) #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.2, %if.then
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @opt_intmax(i8* noundef %value, i64* nocapture noundef writeonly %result) local_unnamed_addr #3 {
entry:
  %endp = alloca i8*, align 8
  %call = tail call i32* @__errno_location() #18
  %0 = load i32, i32* %call, align 4, !tbaa !16
  %1 = bitcast i8** %endp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  store i32 0, i32* %call, align 4, !tbaa !16
  %call2 = call i64 @strtoimax(i8* noundef %value, i8** noundef nonnull %endp, i32 noundef 0) #15
  %2 = load i8*, i8** %endp, align 8, !tbaa !9
  %3 = load i8, i8* %2, align 1, !tbaa !4
  %tobool.not = icmp ne i8 %3, 0
  %cmp = icmp eq i8* %2, %value
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %entry
  %4 = add i64 %call2, -9223372036854775807
  %5 = icmp ult i64 %4, 2
  br i1 %5, label %land.lhs.true, label %lor.lhs.false13

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %6 = load i32, i32* %call, align 4, !tbaa !16
  %cmp11 = icmp eq i32 %6, 34
  br i1 %cmp11, label %if.then, label %if.end

lor.lhs.false13:                                  ; preds = %lor.lhs.false4
  %cmp14 = icmp eq i64 %call2, 0
  br i1 %cmp14, label %land.lhs.true16, label %if.end

land.lhs.true16:                                  ; preds = %lor.lhs.false13
  %7 = load i32, i32* %call, align 4, !tbaa !16
  %cmp18.not = icmp eq i32 %7, 0
  br i1 %cmp18.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true16, %land.lhs.true, %entry
  call fastcc void @opt_number_error(i8* noundef %value) #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %land.lhs.true16, %lor.lhs.false13
  store i64 %call2, i64* %result, align 8, !tbaa !24
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  store i32 %0, i32* %call, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
declare i64 @strtoimax(i8* noalias noundef, i8** noalias noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @opt_uintmax(i8* noundef %value, i64* nocapture noundef writeonly %result) local_unnamed_addr #3 {
entry:
  %endp = alloca i8*, align 8
  %call = tail call i32* @__errno_location() #18
  %0 = load i32, i32* %call, align 4, !tbaa !16
  %1 = bitcast i8** %endp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  store i32 0, i32* %call, align 4, !tbaa !16
  %call2 = call i64 @strtoumax(i8* noundef %value, i8** noundef nonnull %endp, i32 noundef 0) #15
  %2 = load i8*, i8** %endp, align 8, !tbaa !9
  %3 = load i8, i8* %2, align 1, !tbaa !4
  %tobool.not = icmp ne i8 %3, 0
  %cmp = icmp eq i8* %2, %value
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %entry
  switch i64 %call2, label %if.end [
    i64 -1, label %land.lhs.true
    i64 0, label %land.lhs.true13
  ]

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %4 = load i32, i32* %call, align 4, !tbaa !16
  %cmp8 = icmp eq i32 %4, 34
  br i1 %cmp8, label %if.then, label %if.end

land.lhs.true13:                                  ; preds = %lor.lhs.false4
  %5 = load i32, i32* %call, align 4, !tbaa !16
  %cmp15.not = icmp eq i32 %5, 0
  br i1 %cmp15.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true13, %land.lhs.true, %entry
  call fastcc void @opt_number_error(i8* noundef %value) #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false4, %land.lhs.true13
  store i64 %call2, i64* %result, align 8, !tbaa !24
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  store i32 %0, i32* %call, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
declare i64 @strtoumax(i8* noalias noundef, i8** noalias noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @opt_ulong(i8* noundef %value, i64* nocapture noundef writeonly %result) local_unnamed_addr #3 {
entry:
  %endptr = alloca i8*, align 8
  %call = tail call i32* @__errno_location() #18
  %0 = load i32, i32* %call, align 4, !tbaa !16
  %1 = bitcast i8** %endptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  store i32 0, i32* %call, align 4, !tbaa !16
  %call2 = call i64 @strtoul(i8* noundef %value, i8** noundef nonnull %endptr, i32 noundef 0) #15
  %2 = load i8*, i8** %endptr, align 8, !tbaa !9
  %3 = load i8, i8* %2, align 1, !tbaa !4
  %tobool.not = icmp ne i8 %3, 0
  %cmp = icmp eq i8* %2, %value
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %entry
  switch i64 %call2, label %if.end [
    i64 -1, label %land.lhs.true
    i64 0, label %land.lhs.true13
  ]

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %4 = load i32, i32* %call, align 4, !tbaa !16
  %cmp8 = icmp eq i32 %4, 34
  br i1 %cmp8, label %if.then, label %if.end

land.lhs.true13:                                  ; preds = %lor.lhs.false4
  %5 = load i32, i32* %call, align 4, !tbaa !16
  %cmp15.not = icmp eq i32 %5, 0
  br i1 %cmp15.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true13, %land.lhs.true, %entry
  call fastcc void @opt_number_error(i8* noundef %value) #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false4, %land.lhs.true13
  store i64 %call2, i64* %result, align 8, !tbaa !24
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  store i32 %0, i32* %call, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i64 @strtoul(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @opt_verify(i32 noundef %opt, %struct.X509_VERIFY_PARAM_st* noundef %vpm) local_unnamed_addr #3 {
entry:
  %t = alloca i64, align 8
  %0 = bitcast i64* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %t, align 8, !tbaa !24
  %cmp.not = icmp eq %struct.X509_VERIFY_PARAM_st* %vpm, null
  br i1 %cmp.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 685) #16
  unreachable

cond.end:                                         ; preds = %entry
  %cmp1 = icmp sgt i32 %opt, 2000
  br i1 %cmp1, label %cond.end4, label %cond.false3

cond.false3:                                      ; preds = %cond.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 686) #16
  unreachable

cond.end4:                                        ; preds = %cond.end
  %cmp6 = icmp ult i32 %opt, 2031
  br i1 %cmp6, label %cond.end9, label %cond.false8

cond.false8:                                      ; preds = %cond.end4
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 687) #16
  unreachable

cond.end9:                                        ; preds = %cond.end4
  switch i32 %opt, label %sw.epilog [
    i32 2028, label %sw.bb118
    i32 2027, label %sw.bb116
    i32 2001, label %sw.bb11
    i32 2002, label %sw.bb17
    i32 2003, label %sw.bb32
    i32 2004, label %sw.bb41
    i32 2029, label %sw.bb47
    i32 2005, label %sw.bb53
    i32 2006, label %sw.bb64
    i32 2007, label %sw.bb70
    i32 2008, label %sw.bb76
    i32 2009, label %sw.bb82
    i32 2030, label %sw.bb120
    i32 2011, label %sw.bb84
    i32 2012, label %sw.bb86
    i32 2013, label %sw.bb88
    i32 2014, label %sw.bb90
    i32 2015, label %sw.bb92
    i32 2016, label %sw.bb94
    i32 2017, label %sw.bb96
    i32 2018, label %sw.bb98
    i32 2019, label %sw.bb100
    i32 2020, label %sw.bb102
    i32 2021, label %sw.bb104
    i32 2022, label %sw.bb106
    i32 2023, label %sw.bb108
    i32 2024, label %sw.bb110
    i32 2025, label %sw.bb112
    i32 2026, label %sw.bb114
  ]

sw.bb11:                                          ; preds = %cond.end9
  %call = tail call i8* @opt_arg() #14
  %call12 = tail call %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef %call, i32 noundef 0) #15
  %cmp13 = icmp eq %struct.asn1_object_st* %call12, null
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb11
  %call14 = tail call i8* @opt_arg() #14
  %call15 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0), i8* noundef %call14) #15
  br label %cleanup

if.end:                                           ; preds = %sw.bb11
  %call16 = tail call i32 @X509_VERIFY_PARAM_add0_policy(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, %struct.asn1_object_st* noundef nonnull %call12) #15
  br label %sw.epilog

sw.bb17:                                          ; preds = %cond.end9
  %call18 = tail call i8* @opt_arg() #14
  %call19 = tail call i32 @X509_PURPOSE_get_by_sname(i8* noundef %call18) #15
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %sw.bb17
  %call22 = tail call i8* @opt_arg() #14
  %call23 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0), i8* noundef %call22) #15
  br label %cleanup

if.end24:                                         ; preds = %sw.bb17
  %call25 = tail call %struct.x509_purpose_st* @X509_PURPOSE_get0(i32 noundef %call19) #15
  %call26 = tail call i32 @X509_PURPOSE_get_id(%struct.x509_purpose_st* noundef %call25) #15
  %call27 = tail call i32 @X509_VERIFY_PARAM_set_purpose(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i32 noundef %call26) #15
  %tobool.not = icmp eq i32 %call27, 0
  br i1 %tobool.not, label %if.then28, label %sw.epilog

if.then28:                                        ; preds = %if.end24
  %call29 = tail call i8* @opt_arg() #14
  %call30 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0), i8* noundef %call29) #15
  br label %cleanup

sw.bb32:                                          ; preds = %cond.end9
  %call33 = tail call i8* @opt_arg() #14
  %call34 = tail call %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_lookup(i8* noundef %call33) #15
  %cmp35 = icmp eq %struct.X509_VERIFY_PARAM_st* %call34, null
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %sw.bb32
  %call37 = tail call i8* @opt_arg() #14
  %call38 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0), i8* noundef %call37) #15
  br label %cleanup

if.end39:                                         ; preds = %sw.bb32
  %call40 = tail call i32 @X509_VERIFY_PARAM_set1(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, %struct.X509_VERIFY_PARAM_st* noundef nonnull %call34) #15
  br label %sw.epilog

sw.bb41:                                          ; preds = %cond.end9
  %call42 = tail call i8* @opt_arg() #14
  %call43 = tail call i32 @atoi(i8* noundef %call42) #13
  %cmp44 = icmp sgt i32 %call43, -1
  br i1 %cmp44, label %if.then45, label %sw.epilog

if.then45:                                        ; preds = %sw.bb41
  tail call void @X509_VERIFY_PARAM_set_depth(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i32 noundef %call43) #15
  br label %sw.epilog

sw.bb47:                                          ; preds = %cond.end9
  %call48 = tail call i8* @opt_arg() #14
  %call49 = tail call i32 @atoi(i8* noundef %call48) #13
  %cmp50 = icmp sgt i32 %call49, -1
  br i1 %cmp50, label %if.then51, label %sw.epilog

if.then51:                                        ; preds = %sw.bb47
  tail call void @X509_VERIFY_PARAM_set_auth_level(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i32 noundef %call49) #15
  br label %sw.epilog

sw.bb53:                                          ; preds = %cond.end9
  %call54 = tail call i8* @opt_arg() #14
  %call55 = call i32 @opt_intmax(i8* noundef %call54, i64* noundef nonnull %t) #14
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %cleanup, label %if.end63

if.end63:                                         ; preds = %sw.bb53
  %1 = load i64, i64* %t, align 8, !tbaa !24
  tail call void @X509_VERIFY_PARAM_set_time(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i64 noundef %1) #15
  br label %sw.epilog

sw.bb64:                                          ; preds = %cond.end9
  %call65 = tail call i8* @opt_arg() #14
  %call66 = tail call i32 @X509_VERIFY_PARAM_set1_host(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i8* noundef %call65, i64 noundef 0) #15
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %cleanup, label %sw.epilog

sw.bb70:                                          ; preds = %cond.end9
  %call71 = tail call i8* @opt_arg() #14
  %call72 = tail call i32 @X509_VERIFY_PARAM_set1_email(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i8* noundef %call71, i64 noundef 0) #15
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %cleanup, label %sw.epilog

sw.bb76:                                          ; preds = %cond.end9
  %call77 = tail call i8* @opt_arg() #14
  %call78 = tail call i32 @X509_VERIFY_PARAM_set1_ip_asc(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i8* noundef %call77) #15
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %cleanup, label %sw.epilog

sw.bb82:                                          ; preds = %cond.end9
  %call83 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i64 noundef 16) #15
  br label %sw.epilog

sw.bb84:                                          ; preds = %cond.end9
  %call85 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i64 noundef 4) #15
  br label %sw.epilog

sw.bb86:                                          ; preds = %cond.end9
  %call87 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i64 noundef 12) #15
  br label %sw.epilog

sw.bb88:                                          ; preds = %cond.end9
  %call89 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i64 noundef 128) #15
  br label %sw.epilog

sw.bb90:                                          ; preds = %cond.end9
  %call91 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i64 noundef 256) #15
  br label %sw.epilog

sw.bb92:                                          ; preds = %cond.end9
  %call93 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i64 noundef 512) #15
  br label %sw.epilog

sw.bb94:                                          ; preds = %cond.end9
  %call95 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i64 noundef 1024) #15
  br label %sw.epilog

sw.bb96:                                          ; preds = %cond.end9
  %call97 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i64 noundef 32) #15
  br label %sw.epilog

sw.bb98:                                          ; preds = %cond.end9
  %call99 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i64 noundef 4096) #15
  br label %sw.epilog

sw.bb100:                                         ; preds = %cond.end9
  %call101 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i64 noundef 8192) #15
  br label %sw.epilog

sw.bb102:                                         ; preds = %cond.end9
  %call103 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i64 noundef 2048) #15
  br label %sw.epilog

sw.bb104:                                         ; preds = %cond.end9
  %call105 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i64 noundef 16384) #15
  br label %sw.epilog

sw.bb106:                                         ; preds = %cond.end9
  %call107 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i64 noundef 32768) #15
  br label %sw.epilog

sw.bb108:                                         ; preds = %cond.end9
  %call109 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i64 noundef 65536) #15
  br label %sw.epilog

sw.bb110:                                         ; preds = %cond.end9
  %call111 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i64 noundef 196608) #15
  br label %sw.epilog

sw.bb112:                                         ; preds = %cond.end9
  %call113 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i64 noundef 131072) #15
  br label %sw.epilog

sw.bb114:                                         ; preds = %cond.end9
  %call115 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i64 noundef 524288) #15
  br label %sw.epilog

sw.bb116:                                         ; preds = %cond.end9
  %call117 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i64 noundef 1048576) #15
  br label %sw.epilog

sw.bb118:                                         ; preds = %cond.end9
  %call119 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i64 noundef 2097152) #15
  br label %sw.epilog

sw.bb120:                                         ; preds = %cond.end9
  %call121 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm, i64 noundef 64) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb76, %sw.bb70, %sw.bb64, %sw.bb47, %if.then51, %sw.bb41, %if.then45, %if.end24, %cond.end9, %sw.bb120, %sw.bb118, %sw.bb116, %sw.bb114, %sw.bb112, %sw.bb110, %sw.bb108, %sw.bb106, %sw.bb104, %sw.bb102, %sw.bb100, %sw.bb98, %sw.bb96, %sw.bb94, %sw.bb92, %sw.bb90, %sw.bb88, %sw.bb86, %sw.bb84, %sw.bb82, %if.end63, %if.end39, %if.end
  br label %cleanup

cleanup:                                          ; preds = %sw.bb76, %sw.bb70, %sw.bb64, %sw.bb53, %sw.epilog, %if.then36, %if.then28, %if.then21, %if.then
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ 0, %if.then36 ], [ 0, %if.then21 ], [ 0, %if.then28 ], [ 0, %if.then ], [ 0, %sw.bb53 ], [ 0, %sw.bb64 ], [ 0, %sw.bb70 ], [ 0, %sw.bb76 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %retval.0
}

declare %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @opt_arg() local_unnamed_addr #10 {
entry:
  %0 = load i8*, i8** @arg, align 8, !tbaa !9
  ret i8* %0
}

declare i32 @X509_VERIFY_PARAM_add0_policy(%struct.X509_VERIFY_PARAM_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #5

declare i32 @X509_PURPOSE_get_by_sname(i8* noundef) local_unnamed_addr #5

declare %struct.x509_purpose_st* @X509_PURPOSE_get0(i32 noundef) local_unnamed_addr #5

declare i32 @X509_PURPOSE_get_id(%struct.x509_purpose_st* noundef) local_unnamed_addr #5

declare i32 @X509_VERIFY_PARAM_set_purpose(%struct.X509_VERIFY_PARAM_st* noundef, i32 noundef) local_unnamed_addr #5

declare %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_lookup(i8* noundef) local_unnamed_addr #5

declare i32 @X509_VERIFY_PARAM_set1(%struct.X509_VERIFY_PARAM_st* noundef, %struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare i32 @atoi(i8* noundef nonnull) local_unnamed_addr #11

declare void @X509_VERIFY_PARAM_set_depth(%struct.X509_VERIFY_PARAM_st* noundef, i32 noundef) local_unnamed_addr #5

declare void @X509_VERIFY_PARAM_set_auth_level(%struct.X509_VERIFY_PARAM_st* noundef, i32 noundef) local_unnamed_addr #5

declare void @X509_VERIFY_PARAM_set_time(%struct.X509_VERIFY_PARAM_st* noundef, i64 noundef) local_unnamed_addr #5

declare i32 @X509_VERIFY_PARAM_set1_host(%struct.X509_VERIFY_PARAM_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare i32 @X509_VERIFY_PARAM_set1_email(%struct.X509_VERIFY_PARAM_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare i32 @X509_VERIFY_PARAM_set1_ip_asc(%struct.X509_VERIFY_PARAM_st* noundef, i8* noundef) local_unnamed_addr #5

declare i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define i32 @opt_next() local_unnamed_addr #3 {
entry:
  %ival = alloca i32, align 4
  %lval = alloca i64, align 8
  %ulval = alloca i64, align 8
  %imval = alloca i64, align 8
  %umval = alloca i64, align 8
  %0 = bitcast i32* %ival to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #17
  %1 = bitcast i64* %lval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  %2 = bitcast i64* %ulval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #17
  %3 = bitcast i64* %imval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #17
  %4 = bitcast i64* %umval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #17
  store i8* null, i8** @arg, align 8, !tbaa !9
  %5 = load i8**, i8*** @argv, align 8, !tbaa !9
  %6 = load i32, i32* @opt_index, align 4, !tbaa !16
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8, !tbaa !9
  %cmp = icmp eq i8* %7, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %8 = load i8, i8* %7, align 1, !tbaa !4
  %cmp1.not = icmp eq i8 %8, 45
  br i1 %cmp1.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @opt_index, align 4, !tbaa !16
  %call = tail call i32 @strcmp(i8* noundef nonnull %7, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0)) #13
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end4
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i64 1
  %9 = load i8, i8* %incdec.ptr, align 1, !tbaa !4
  %cmp10 = icmp eq i8 %9, 45
  %incdec.ptr13 = getelementptr inbounds i8, i8* %7, i64 2
  %spec.select = select i1 %cmp10, i8* %incdec.ptr13, i8* %incdec.ptr
  %add.ptr = getelementptr inbounds i8, i8* %spec.select, i64 -1
  store i8* %add.ptr, i8** @flag, align 8, !tbaa !9
  %call15 = tail call i8* @strchr(i8* noundef nonnull %spec.select, i32 noundef 61) #13
  store i8* %call15, i8** @arg, align 8, !tbaa !9
  %cmp16.not = icmp eq i8* %call15, null
  br i1 %cmp16.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %call15, i64 1
  store i8* %incdec.ptr19, i8** @arg, align 8, !tbaa !9
  store i8 0, i8* %call15, align 1, !tbaa !4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end8
  %10 = phi i8* [ %incdec.ptr19, %if.then18 ], [ null, %if.end8 ]
  %11 = load %struct.options_st*, %struct.options_st** @opts, align 8, !tbaa !9
  %name187 = getelementptr inbounds %struct.options_st, %struct.options_st* %11, i64 0, i32 0
  %12 = load i8*, i8** %name187, align 8, !tbaa !11
  %tobool.not188 = icmp eq i8* %12, null
  br i1 %tobool.not188, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end20
  %call21 = tail call i32 @strcmp(i8* noundef nonnull %spec.select, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)) #13
  %cmp22 = icmp eq i32 %call21, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %13 = phi i8* [ %12, %for.body.lr.ph ], [ %28, %for.inc ]
  %o.0189 = phi %struct.options_st* [ %11, %for.body.lr.ph ], [ %incdec.ptr137, %for.inc ]
  br i1 %cmp22, label %land.lhs.true, label %land.lhs.true28

land.lhs.true:                                    ; preds = %for.body
  %call25 = tail call i32 @strcmp(i8* noundef nonnull %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0)) #13
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.end34, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %land.lhs.true, %for.body
  %call30 = tail call i32 @strcmp(i8* noundef nonnull %spec.select, i8* noundef nonnull %13) #13
  %cmp31.not = icmp eq i32 %call30, 0
  br i1 %cmp31.not, label %if.end34, label %for.inc

if.end34:                                         ; preds = %land.lhs.true28, %land.lhs.true
  %name.le = getelementptr inbounds %struct.options_st, %struct.options_st* %o.0189, i64 0, i32 0
  %valtype = getelementptr inbounds %struct.options_st, %struct.options_st* %o.0189, i64 0, i32 2
  %14 = load i32, i32* %valtype, align 4, !tbaa !14
  switch i32 %14, label %if.end46 [
    i32 0, label %if.then40
    i32 45, label %if.then40
  ]

if.then40:                                        ; preds = %if.end34, %if.end34
  %tobool41.not = icmp eq i8* %10, null
  br i1 %tobool41.not, label %if.end44, label %if.then42

if.then42:                                        ; preds = %if.then40
  %call43 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0), i8* noundef nonnull %spec.select) #15
  br label %cleanup

if.end44:                                         ; preds = %if.then40
  %retval45 = getelementptr inbounds %struct.options_st, %struct.options_st* %o.0189, i64 0, i32 1
  %15 = load i32, i32* %retval45, align 8, !tbaa !28
  br label %cleanup

if.end46:                                         ; preds = %if.end34
  %cmp47 = icmp eq i8* %10, null
  br i1 %cmp47, label %if.then49, label %if.end61

if.then49:                                        ; preds = %if.end46
  %idxprom50 = sext i32 %inc to i64
  %arrayidx51 = getelementptr inbounds i8*, i8** %5, i64 %idxprom50
  %16 = load i8*, i8** %arrayidx51, align 8, !tbaa !9
  %cmp52 = icmp eq i8* %16, null
  br i1 %cmp52, label %if.then54, label %if.end57

if.then54:                                        ; preds = %if.then49
  %call56 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0), i8* noundef nonnull %13) #15
  br label %cleanup

if.end57:                                         ; preds = %if.then49
  %inc58 = add nsw i32 %6, 2
  store i32 %inc58, i32* @opt_index, align 4, !tbaa !16
  store i8* %16, i8** @arg, align 8, !tbaa !9
  br label %if.end61

if.end61:                                         ; preds = %if.end57, %if.end46
  %17 = phi i8* [ %16, %if.end57 ], [ %10, %if.end46 ]
  switch i32 %14, label %sw.epilog [
    i32 108, label %sw.bb105
    i32 85, label %sw.bb100
    i32 77, label %sw.bb95
    i32 47, label %sw.bb63
    i32 78, label %sw.bb70
    i32 117, label %sw.bb110
    i32 112, label %sw.bb70
    i32 110, label %sw.bb70
    i32 99, label %cond.end128
    i32 69, label %cond.end128.fold.split
    i32 70, label %cond.false123
    i32 102, label %cond.false123
  ]

sw.bb63:                                          ; preds = %if.end61
  %call64 = tail call i32 @opt_isdir(i8* noundef %17) #14
  %cmp65 = icmp sgt i32 %call64, 0
  br i1 %cmp65, label %sw.epilog, label %if.end68

if.end68:                                         ; preds = %sw.bb63
  %18 = load i8*, i8** @arg, align 8, !tbaa !9
  %call69 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0), i8* noundef %18) #15
  br label %cleanup

sw.bb70:                                          ; preds = %if.end61, %if.end61, %if.end61
  %call71 = call i32 @opt_int(i8* noundef nonnull %17, i32* noundef nonnull %ival) #14
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %cleanup, label %if.end74

if.end74:                                         ; preds = %sw.bb70
  %19 = load i32, i32* %valtype, align 4, !tbaa !14
  %cmp76 = icmp eq i32 %19, 112
  %20 = load i32, i32* %ival, align 4
  %cmp79 = icmp slt i32 %20, 1
  %or.cond = select i1 %cmp76, i1 %cmp79, i1 false
  br i1 %or.cond, label %if.then81, label %if.end84

if.then81:                                        ; preds = %if.end74
  %21 = load i8*, i8** @arg, align 8, !tbaa !9
  %22 = load i8*, i8** %name.le, align 8, !tbaa !11
  %call83 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0), i8* noundef %21, i8* noundef %22) #15
  br label %cleanup

if.end84:                                         ; preds = %if.end74
  %cmp86 = icmp eq i32 %19, 78
  %cmp89 = icmp slt i32 %20, 0
  %or.cond150 = select i1 %cmp86, i1 %cmp89, i1 false
  br i1 %or.cond150, label %if.then91, label %sw.epilog

if.then91:                                        ; preds = %if.end84
  %23 = load i8*, i8** @arg, align 8, !tbaa !9
  %24 = load i8*, i8** %name.le, align 8, !tbaa !11
  %call93 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0), i8* noundef %23, i8* noundef %24) #15
  br label %cleanup

sw.bb95:                                          ; preds = %if.end61
  %call96 = call i32 @opt_intmax(i8* noundef nonnull %17, i64* noundef nonnull %imval) #14
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %cleanup, label %sw.epilog

sw.bb100:                                         ; preds = %if.end61
  %call101 = call i32 @opt_uintmax(i8* noundef nonnull %17, i64* noundef nonnull %umval) #14
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %cleanup, label %sw.epilog

sw.bb105:                                         ; preds = %if.end61
  %call106 = call i32 @opt_long(i8* noundef nonnull %17, i64* noundef nonnull %lval) #14
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %cleanup, label %sw.epilog

sw.bb110:                                         ; preds = %if.end61
  %call111 = call i32 @opt_ulong(i8* noundef nonnull %17, i64* noundef nonnull %ulval) #14
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %cleanup, label %sw.epilog

cond.false123:                                    ; preds = %if.end61, %if.end61
  %cmp125 = icmp eq i32 %14, 70
  %cond = select i1 %cmp125, i64 2, i64 1982
  br label %cond.end128

cond.end128.fold.split:                           ; preds = %if.end61
  br label %cond.end128

cond.end128:                                      ; preds = %if.end61, %cond.end128.fold.split, %cond.false123
  %cond129 = phi i64 [ %cond, %cond.false123 ], [ 18, %cond.end128.fold.split ], [ 10, %if.end61 ]
  %call130 = call i32 @opt_format(i8* noundef nonnull %17, i64 noundef %cond129, i32* noundef nonnull %ival) #14
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end133, label %sw.epilog

if.end133:                                        ; preds = %cond.end128
  %25 = load i8*, i8** @arg, align 8, !tbaa !9
  %26 = load i8*, i8** %name.le, align 8, !tbaa !11
  %call135 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0), i8* noundef %25, i8* noundef %26) #15
  br label %cleanup

sw.epilog:                                        ; preds = %if.end61, %cond.end128, %sw.bb110, %sw.bb105, %sw.bb100, %sw.bb95, %if.end84, %sw.bb63
  %retval136 = getelementptr inbounds %struct.options_st, %struct.options_st* %o.0189, i64 0, i32 1
  %27 = load i32, i32* %retval136, align 8, !tbaa !28
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true28
  %incdec.ptr137 = getelementptr inbounds %struct.options_st, %struct.options_st* %o.0189, i64 1
  %name = getelementptr inbounds %struct.options_st, %struct.options_st* %incdec.ptr137, i64 0, i32 0
  %28 = load i8*, i8** %name, align 8, !tbaa !11
  %tobool.not = icmp eq i8* %28, null
  br i1 %tobool.not, label %for.end, label %for.body, !llvm.loop !29

for.end:                                          ; preds = %for.inc, %if.end20
  %29 = load %struct.options_st*, %struct.options_st** @unknown, align 8, !tbaa !9
  %cmp138.not = icmp eq %struct.options_st* %29, null
  br i1 %cmp138.not, label %if.end142, label %if.then140

if.then140:                                       ; preds = %for.end
  store i8* %spec.select, i8** @dunno, align 8, !tbaa !9
  %retval141 = getelementptr inbounds %struct.options_st, %struct.options_st* %29, i64 0, i32 1
  %30 = load i32, i32* %retval141, align 8, !tbaa !28
  br label %cleanup

if.end142:                                        ; preds = %for.end
  %call143 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0), i8* noundef nonnull %spec.select) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.bb110, %sw.bb105, %sw.bb100, %sw.bb95, %sw.bb70, %if.end4, %if.end, %entry, %if.end142, %if.then140, %sw.epilog, %if.end133, %if.then91, %if.then81, %if.end68, %if.then54, %if.end44, %if.then42
  %retval.0 = phi i32 [ -1, %if.then42 ], [ %15, %if.end44 ], [ -1, %if.then54 ], [ %27, %sw.epilog ], [ -1, %if.then81 ], [ -1, %if.then91 ], [ -1, %if.end68 ], [ -1, %if.end133 ], [ %30, %if.then140 ], [ -1, %if.end142 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end4 ], [ -1, %sw.bb70 ], [ -1, %sw.bb95 ], [ -1, %sw.bb100 ], [ -1, %sw.bb105 ], [ -1, %sw.bb110 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @opt_isdir(i8* noundef nonnull %name) local_unnamed_addr #3 {
entry:
  %st = alloca %struct.stat, align 8
  %0 = bitcast %struct.stat* %st to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #17
  %call = call i32 @stat(i8* noundef %name, %struct.stat* noundef %st) #15
  %cmp = icmp eq i32 %call, 0
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i64 0, i32 3
  %1 = load i32, i32* %st_mode, align 8
  %and = and i32 %1, 61440
  %cmp1 = icmp eq i32 %and, 16384
  %conv = zext i1 %cmp1 to i32
  %retval.0 = select i1 %cmp, i32 %conv, i32 -1
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @opt_flag() local_unnamed_addr #10 {
entry:
  %0 = load i8*, i8** @flag, align 8, !tbaa !9
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @opt_unknown() local_unnamed_addr #10 {
entry:
  %0 = load i8*, i8** @dunno, align 8, !tbaa !9
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8** @opt_rest() local_unnamed_addr #10 {
entry:
  %0 = load i8**, i8*** @argv, align 8, !tbaa !9
  %1 = load i32, i32* @opt_index, align 4, !tbaa !16
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 %idxprom
  ret i8** %arrayidx
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i32 @opt_num_rest() local_unnamed_addr #12 {
entry:
  %call = tail call i8** @opt_rest() #14
  %0 = load i8*, i8** %call, align 8, !tbaa !9
  %tobool.not5 = icmp eq i8* %0, null
  br i1 %tobool.not5, label %for.end, label %for.inc

for.inc:                                          ; preds = %entry, %for.inc
  %pp.07 = phi i8** [ %incdec.ptr, %for.inc ], [ %call, %entry ]
  %i.06 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %incdec.ptr = getelementptr inbounds i8*, i8** %pp.07, i64 1
  %inc = add nuw nsw i32 %i.06, 1
  %1 = load i8*, i8** %incdec.ptr, align 8, !tbaa !9
  %tobool.not = icmp eq i8* %1, null
  br i1 %tobool.not, label %for.end, label %for.inc, !llvm.loop !30

for.end:                                          ; preds = %for.inc, %entry
  %i.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  ret i32 %i.0.lcssa
}

; Function Attrs: noinline nounwind uwtable
define void @opt_help(%struct.options_st* nocapture noundef readonly %list) local_unnamed_addr #3 {
entry:
  %name = getelementptr inbounds %struct.options_st, %struct.options_st* %list, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8, !tbaa !11
  %cmp.not = icmp eq i8* %0, getelementptr inbounds ([3 x i8], [3 x i8]* @OPT_HELP_STR, i64 0, i64 0)
  %tobool.not75 = icmp eq i8* %0, null
  br i1 %tobool.not75, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %1 = phi i8* [ %5, %for.inc ], [ %0, %entry ]
  %o.077 = phi %struct.options_st* [ %incdec.ptr, %for.inc ], [ %list, %entry ]
  %width.076 = phi i32 [ %width.2, %for.inc ], [ 5, %entry ]
  %cmp3 = icmp eq i8* %1, getelementptr inbounds ([3 x i8], [3 x i8]* @OPT_MORE_STR, i64 0, i64 0)
  br i1 %cmp3, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %call = tail call i64 @strlen(i8* noundef nonnull %1) #13
  %conv6 = trunc i64 %call to i32
  %add = add nsw i32 %conv6, 2
  %valtype = getelementptr inbounds %struct.options_st, %struct.options_st* %o.077, i64 0, i32 2
  %2 = load i32, i32* %valtype, align 4, !tbaa !14
  %cmp7.not = icmp eq i32 %2, 45
  br i1 %cmp7.not, label %if.end16, label %if.then9

if.then9:                                         ; preds = %if.end
  %call10 = tail call fastcc i8* @valtype2param(%struct.options_st* noundef nonnull %o.077) #14
  %call11 = tail call i64 @strlen(i8* noundef %call10) #13
  %3 = trunc i64 %call11 to i32
  %4 = add i32 %conv6, 3
  %conv15 = add i32 %4, %3
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %if.end
  %i.0 = phi i32 [ %conv15, %if.then9 ], [ %add, %if.end ]
  %cmp17 = icmp slt i32 %i.0, 30
  %cmp19 = icmp sgt i32 %i.0, %width.076
  %or.cond = select i1 %cmp17, i1 %cmp19, i1 false
  %width.1 = select i1 %or.cond, i32 %i.0, i32 %width.076
  %cmp23 = icmp slt i32 %i.0, 81
  br i1 %cmp23, label %for.inc, label %cond.false

cond.false:                                       ; preds = %if.end16
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1131) #16
  unreachable

for.inc:                                          ; preds = %if.end16, %for.body
  %width.2 = phi i32 [ %width.076, %for.body ], [ %width.1, %if.end16 ]
  %incdec.ptr = getelementptr inbounds %struct.options_st, %struct.options_st* %o.077, i64 1
  %name1 = getelementptr inbounds %struct.options_st, %struct.options_st* %incdec.ptr, i64 0, i32 0
  %5 = load i8*, i8** %name1, align 8, !tbaa !11
  %tobool.not = icmp eq i8* %5, null
  br i1 %tobool.not, label %for.end, label %for.body, !llvm.loop !31

for.end:                                          ; preds = %for.inc, %entry
  %width.0.lcssa = phi i32 [ 5, %entry ], [ %width.2, %for.inc ]
  br i1 %cmp.not, label %for.body39.preheader, label %if.then26

if.then26:                                        ; preds = %for.end
  %call27 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0)) #15
  %6 = load i8*, i8** %name, align 8, !tbaa !11
  %cmp30.not = icmp eq i8* %6, getelementptr inbounds ([3 x i8], [3 x i8]* @OPT_SECTION_STR, i64 0, i64 0)
  br i1 %cmp30.not, label %for.body39.preheader, label %if.end35

if.end35:                                         ; preds = %if.then26
  %call33 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0)) #15
  %.pre = load i8*, i8** %name, align 8, !tbaa !11
  %tobool38.not81 = icmp eq i8* %.pre, null
  br i1 %tobool38.not81, label %for.end47, label %for.body39.preheader

for.body39.preheader:                             ; preds = %for.end, %if.then26, %if.end35
  %.ph = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @OPT_SECTION_STR, i64 0, i64 0), %if.then26 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @OPT_HELP_STR, i64 0, i64 0), %for.end ], [ %.pre, %if.end35 ]
  br label %for.body39

for.body39:                                       ; preds = %for.body39.preheader, %for.body39
  %7 = phi i8* [ %8, %for.body39 ], [ %.ph, %for.body39.preheader ]
  %o.183 = phi %struct.options_st* [ %incdec.ptr46, %for.body39 ], [ %list, %for.body39.preheader ]
  %sawparams.082 = phi i32 [ %spec.select, %for.body39 ], [ 0, %for.body39.preheader ]
  %cmp41 = icmp eq i8* %7, getelementptr inbounds ([3 x i8], [3 x i8]* @OPT_PARAM_STR, i64 0, i64 0)
  %spec.select = select i1 %cmp41, i32 1, i32 %sawparams.082
  tail call fastcc void @opt_print(%struct.options_st* noundef nonnull %o.183, i32 noundef %spec.select, i32 noundef %width.0.lcssa) #14
  %incdec.ptr46 = getelementptr inbounds %struct.options_st, %struct.options_st* %o.183, i64 1
  %name37 = getelementptr inbounds %struct.options_st, %struct.options_st* %incdec.ptr46, i64 0, i32 0
  %8 = load i8*, i8** %name37, align 8, !tbaa !11
  %tobool38.not = icmp eq i8* %8, null
  br i1 %tobool38.not, label %for.end47, label %for.body39, !llvm.loop !32

for.end47:                                        ; preds = %for.body39, %if.end35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* @valtype2param(%struct.options_st* nocapture noundef readonly %o) unnamed_addr #10 {
entry:
  %valtype = getelementptr inbounds %struct.options_st, %struct.options_st* %o, i64 0, i32 2
  %0 = load i32, i32* %valtype, align 4, !tbaa !14
  switch i32 %0, label %sw.epilog [
    i32 0, label %return
    i32 45, label %return
    i32 58, label %sw.bb1
    i32 115, label %sw.bb2
    i32 47, label %sw.bb3
    i32 60, label %sw.bb4
    i32 62, label %sw.bb5
    i32 112, label %sw.bb6
    i32 110, label %sw.bb7
    i32 108, label %sw.bb8
    i32 117, label %sw.bb9
    i32 69, label %sw.bb10
    i32 70, label %sw.bb11
    i32 102, label %sw.bb12
    i32 77, label %sw.bb13
    i32 78, label %sw.bb14
    i32 85, label %sw.bb15
  ]

sw.bb1:                                           ; preds = %entry
  br label %return

sw.bb2:                                           ; preds = %entry
  br label %return

sw.bb3:                                           ; preds = %entry
  br label %return

sw.bb4:                                           ; preds = %entry
  br label %return

sw.bb5:                                           ; preds = %entry
  br label %return

sw.bb6:                                           ; preds = %entry
  br label %return

sw.bb7:                                           ; preds = %entry
  br label %return

sw.bb8:                                           ; preds = %entry
  br label %return

sw.bb9:                                           ; preds = %entry
  br label %return

sw.bb10:                                          ; preds = %entry
  br label %return

sw.bb11:                                          ; preds = %entry
  br label %return

sw.bb12:                                          ; preds = %entry
  br label %return

sw.bb13:                                          ; preds = %entry
  br label %return

sw.bb14:                                          ; preds = %entry
  br label %return

sw.bb15:                                          ; preds = %entry
  br label %return

sw.epilog:                                        ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %entry, %sw.epilog, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1
  %retval.0 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), %sw.epilog ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i64 0, i64 0), %sw.bb15 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), %sw.bb14 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i64 0, i64 0), %sw.bb13 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), %sw.bb12 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i64 0, i64 0), %sw.bb11 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.77, i64 0, i64 0), %sw.bb10 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i64 0, i64 0), %sw.bb9 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), %sw.bb8 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), %sw.bb7 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), %sw.bb6 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i64 0, i64 0), %sw.bb5 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), %sw.bb4 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i64 0, i64 0), %sw.bb3 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), %sw.bb2 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), %sw.bb1 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.67, i64 0, i64 0), %entry ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.67, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @opt_print(%struct.options_st* nocapture noundef readonly %o, i32 noundef %doingparams, i32 noundef %width) unnamed_addr #3 {
entry:
  %start = alloca [81 x i8], align 16
  %0 = getelementptr inbounds [81 x i8], [81 x i8]* %start, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 81, i8* nonnull %0) #17
  %helpstr = getelementptr inbounds %struct.options_st, %struct.options_st* %o, i64 0, i32 3
  %1 = load i8*, i8** %helpstr, align 8, !tbaa !33
  %tobool.not = icmp eq i8* %1, null
  %spec.select = select i1 %tobool.not, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.84, i64 0, i64 0), i8* %1
  %name = getelementptr inbounds %struct.options_st, %struct.options_st* %o, i64 0, i32 0
  %2 = load i8*, i8** %name, align 8, !tbaa !11
  %cmp = icmp eq i8* %2, getelementptr inbounds ([3 x i8], [3 x i8]* @OPT_HELP_STR, i64 0, i64 0)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef %spec.select, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0)) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp3 = icmp eq i8* %2, getelementptr inbounds ([3 x i8], [3 x i8]* @OPT_SECTION_STR, i64 0, i64 0)
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)) #15
  %call6 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef %spec.select, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @prog, i64 0, i64 0)) #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %cmp9 = icmp eq i8* %2, getelementptr inbounds ([3 x i8], [3 x i8]* @OPT_PARAM_STR, i64 0, i64 0)
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  %call11 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.86, i64 0, i64 0)) #15
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %call13 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 32, i64 noundef 80) #15
  %arrayidx = getelementptr inbounds [81 x i8], [81 x i8]* %start, i64 0, i64 80
  store i8 0, i8* %arrayidx, align 16, !tbaa !4
  %3 = load i8*, i8** %name, align 8, !tbaa !11
  %cmp15 = icmp eq i8* %3, getelementptr inbounds ([3 x i8], [3 x i8]* @OPT_MORE_STR, i64 0, i64 0)
  br i1 %cmp15, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end12
  %idxprom = sext i32 %width to i64
  %arrayidx17 = getelementptr inbounds [81 x i8], [81 x i8]* %start, i64 0, i64 %idxprom
  store i8 0, i8* %arrayidx17, align 1, !tbaa !4
  %call19 = call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i64 0, i64 0), i8* noundef nonnull %0, i8* noundef %spec.select) #15
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %incdec.ptr = getelementptr inbounds [81 x i8], [81 x i8]* %start, i64 0, i64 1
  store i8 32, i8* %0, align 16, !tbaa !4
  %tobool22.not = icmp eq i32 %doingparams, 0
  br i1 %tobool22.not, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  %incdec.ptr24 = getelementptr inbounds [81 x i8], [81 x i8]* %start, i64 0, i64 2
  store i8 45, i8* %incdec.ptr, align 1, !tbaa !4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20
  %p.0 = phi i8* [ %incdec.ptr, %if.end20 ], [ %incdec.ptr24, %if.then23 ]
  %4 = load i8, i8* %3, align 1, !tbaa !4
  %tobool28.not = icmp eq i8 %4, 0
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end25
  %call31 = call i8* @strcpy(i8* noundef nonnull %p.0, i8* noundef nonnull %3) #15
  %call32 = call i64 @strlen(i8* noundef %call31) #13
  %add.ptr = getelementptr inbounds i8, i8* %p.0, i64 %call32
  br label %if.end34

if.else:                                          ; preds = %if.end25
  %incdec.ptr33 = getelementptr inbounds i8, i8* %p.0, i64 1
  store i8 42, i8* %p.0, align 1, !tbaa !4
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then29
  %p.1 = phi i8* [ %add.ptr, %if.then29 ], [ %incdec.ptr33, %if.else ]
  %valtype = getelementptr inbounds %struct.options_st, %struct.options_st* %o, i64 0, i32 2
  %5 = load i32, i32* %valtype, align 4, !tbaa !14
  %cmp35.not = icmp eq i32 %5, 45
  br i1 %cmp35.not, label %if.end42, label %if.then36

if.then36:                                        ; preds = %if.end34
  %incdec.ptr37 = getelementptr inbounds i8, i8* %p.1, i64 1
  store i8 32, i8* %p.1, align 1, !tbaa !4
  %call38 = call fastcc i8* @valtype2param(%struct.options_st* noundef nonnull %o) #14
  %call39 = call i8* @strcpy(i8* noundef nonnull %incdec.ptr37, i8* noundef %call38) #15
  %call40 = call i64 @strlen(i8* noundef %call39) #13
  %add.ptr41 = getelementptr inbounds i8, i8* %incdec.ptr37, i64 %call40
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %if.end34
  %p.2 = phi i8* [ %add.ptr41, %if.then36 ], [ %p.1, %if.end34 ]
  store i8 32, i8* %p.2, align 1, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint i8* %p.2 to i64
  %sub.ptr.rhs.cast = ptrtoint [81 x i8]* %start to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %cmp44 = icmp sgt i32 %conv, 29
  br i1 %cmp44, label %if.then46, label %if.end51

if.then46:                                        ; preds = %if.end42
  store i8 0, i8* %p.2, align 1, !tbaa !4
  %call48 = call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i64 0, i64 0), i8* noundef nonnull %0) #15
  %call50 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 32, i64 noundef 81) #15
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %if.end42
  %idxprom52 = sext i32 %width to i64
  %arrayidx53 = getelementptr inbounds [81 x i8], [81 x i8]* %start, i64 0, i64 %idxprom52
  store i8 0, i8* %arrayidx53, align 1, !tbaa !4
  %call55 = call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i64 0, i64 0), i8* noundef nonnull %0, i8* noundef %spec.select) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.then16, %if.then10, %if.then4, %if.then
  call void @llvm.lifetime.end.p0i8(i64 81, i8* nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind uwtable
declare i32 @stat(i8* noundef nonnull, %struct.stat* noundef nonnull) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #4

attributes #0 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #17 = { nounwind }
attributes #18 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"options_st", !10, i64 0, !13, i64 8, !13, i64 12, !10, i64 16}
!13 = !{!"int", !5, i64 0}
!14 = !{!12, !13, i64 12}
!15 = distinct !{!15, !8}
!16 = !{!13, !13, i64 0}
!17 = !{!18, !10, i64 0}
!18 = !{!"string_int_pair_st", !10, i64 0, !13, i64 8}
!19 = !{!18, !13, i64 8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = !{!25, !25, i64 0}
!25 = !{!"long", !5, i64 0}
!26 = !{!27, !10, i64 8}
!27 = !{!"strstr_pair_st", !10, i64 0, !10, i64 8}
!28 = !{!12, !13, i64 8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
!33 = !{!12, !10, i64 16}
