; ModuleID = 'fuzz/bndiv.c'
source_filename = "fuzz/bndiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type opaque
%struct.bignum_ctx = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ossl_init_settings_st = type opaque

@b1 = internal unnamed_addr global %struct.bignum_st* null, align 8
@b2 = internal unnamed_addr global %struct.bignum_st* null, align 8
@b3 = internal unnamed_addr global %struct.bignum_st* null, align 8
@b4 = internal unnamed_addr global %struct.bignum_st* null, align 8
@b5 = internal unnamed_addr global %struct.bignum_st* null, align 8
@ctx = internal unnamed_addr global %struct.bignum_ctx* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"assertion failed: BN_bin2bn(buf, l1, b1) == b1\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"fuzz/bndiv.c\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"assertion failed: BN_bin2bn(buf + l1, l2, b2) == b2\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"assertion failed: BN_div(b3, b4, b1, b2, ctx)\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"assertion failed: BN_mul(b5, b3, b2, ctx)\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"assertion failed: BN_add(b5, b5, b4)\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"%d %d %d %d %d %d %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"----\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"assertion failed: success\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FuzzerInitialize(i32* nocapture noundef readnone %argc, i8*** nocapture noundef readnone %argv) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #3
  store %struct.bignum_st* %call, %struct.bignum_st** @b1, align 8, !tbaa !3
  %call1 = tail call %struct.bignum_st* @BN_new() #3
  store %struct.bignum_st* %call1, %struct.bignum_st** @b2, align 8, !tbaa !3
  %call2 = tail call %struct.bignum_st* @BN_new() #3
  store %struct.bignum_st* %call2, %struct.bignum_st** @b3, align 8, !tbaa !3
  %call3 = tail call %struct.bignum_st* @BN_new() #3
  store %struct.bignum_st* %call3, %struct.bignum_st** @b4, align 8, !tbaa !3
  %call4 = tail call %struct.bignum_st* @BN_new() #3
  store %struct.bignum_st* %call4, %struct.bignum_st** @b5, align 8, !tbaa !3
  %call5 = tail call %struct.bignum_ctx* @BN_CTX_new() #3
  store %struct.bignum_ctx* %call5, %struct.bignum_ctx** @ctx, align 8, !tbaa !3
  %call6 = tail call i32 @OPENSSL_init_crypto(i64 noundef 2, %struct.ossl_init_settings_st* noundef null) #3
  tail call void @ERR_clear_error() #3
  ret i32 1
}

declare dso_local %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare dso_local %struct.bignum_ctx* @BN_CTX_new() local_unnamed_addr #1

declare dso_local i32 @OPENSSL_init_crypto(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #1

declare dso_local void @ERR_clear_error() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FuzzerTestOneInput(i8* noundef %buf, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %0 = icmp ult i64 %len, 256000
  %spec.store.select = select i1 %0, i64 %len, i64 256000
  %cmp1.not = icmp eq i64 %spec.store.select, 0
  br i1 %cmp1.not, label %if.end10, label %if.then2

if.then2:                                         ; preds = %entry
  %1 = load i8, i8* %buf, align 1, !tbaa !7
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 63
  %2 = trunc i64 %spec.store.select to i32
  %3 = add nsw i32 %2, -1
  %div.lhs.trunc = mul nuw nsw i32 %and, %3
  %div154 = udiv i32 %div.lhs.trunc, 63
  %div.zext = zext i32 %div154 to i64
  %and6 = and i32 %conv, 64
  %and9 = and i32 %conv, 128
  %incdec.ptr = getelementptr inbounds i8, i8* %buf, i64 1
  %phi.cast155 = sub nsw i32 %3, %div154
  br label %if.end10

if.end10:                                         ; preds = %if.then2, %entry
  %buf.addr.0 = phi i8* [ %incdec.ptr, %if.then2 ], [ %buf, %entry ]
  %l1.0 = phi i64 [ %div.zext, %if.then2 ], [ 0, %entry ]
  %l2.0 = phi i32 [ %phi.cast155, %if.then2 ], [ 0, %entry ]
  %s1.0 = phi i32 [ %and6, %if.then2 ], [ 0, %entry ]
  %s2.0 = phi i32 [ %and9, %if.then2 ], [ 0, %entry ]
  %conv11 = trunc i64 %l1.0 to i32
  %4 = load %struct.bignum_st*, %struct.bignum_st** @b1, align 8, !tbaa !3
  %call = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %buf.addr.0, i32 noundef %conv11, %struct.bignum_st* noundef %4) #3
  %5 = load %struct.bignum_st*, %struct.bignum_st** @b1, align 8, !tbaa !3
  %cmp12 = icmp eq %struct.bignum_st* %call, %5
  br i1 %cmp12, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end10
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef 72) #4
  unreachable

cond.end:                                         ; preds = %if.end10
  tail call void @BN_set_negative(%struct.bignum_st* noundef %call, i32 noundef %s1.0) #3
  %add.ptr = getelementptr inbounds i8, i8* %buf.addr.0, i64 %l1.0
  %6 = load %struct.bignum_st*, %struct.bignum_st** @b2, align 8, !tbaa !3
  %call15 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %add.ptr, i32 noundef %l2.0, %struct.bignum_st* noundef %6) #3
  %7 = load %struct.bignum_st*, %struct.bignum_st** @b2, align 8, !tbaa !3
  %cmp16 = icmp eq %struct.bignum_st* %call15, %7
  br i1 %cmp16, label %cond.end20, label %cond.false19

cond.false19:                                     ; preds = %cond.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef 74) #4
  unreachable

cond.end20:                                       ; preds = %cond.end
  tail call void @BN_set_negative(%struct.bignum_st* noundef %call15, i32 noundef %s2.0) #3
  %8 = load %struct.bignum_st*, %struct.bignum_st** @b2, align 8, !tbaa !3
  %call22 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %8) #3
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %if.end24, label %cond.end129

if.end24:                                         ; preds = %cond.end20
  %9 = load %struct.bignum_st*, %struct.bignum_st** @b3, align 8, !tbaa !3
  %10 = load %struct.bignum_st*, %struct.bignum_st** @b4, align 8, !tbaa !3
  %11 = load %struct.bignum_st*, %struct.bignum_st** @b1, align 8, !tbaa !3
  %12 = load %struct.bignum_st*, %struct.bignum_st** @b2, align 8, !tbaa !3
  %13 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !3
  %call25 = tail call i32 @BN_div(%struct.bignum_st* noundef %9, %struct.bignum_st* noundef %10, %struct.bignum_st* noundef %11, %struct.bignum_st* noundef %12, %struct.bignum_ctx* noundef %13) #3
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %cond.false28, label %cond.end29

cond.false28:                                     ; preds = %if.end24
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef 83) #4
  unreachable

cond.end29:                                       ; preds = %if.end24
  %14 = load %struct.bignum_st*, %struct.bignum_st** @b1, align 8, !tbaa !3
  %call31 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %14) #3
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %cond.end29
  %15 = load %struct.bignum_st*, %struct.bignum_st** @b3, align 8, !tbaa !3
  %call34 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %15) #3
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end72, label %if.end72.sink.split

if.else:                                          ; preds = %cond.end29
  %16 = load %struct.bignum_st*, %struct.bignum_st** @b1, align 8, !tbaa !3
  %call38 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %16) #3
  %tobool39.not = icmp eq i32 %call38, 0
  %17 = load %struct.bignum_st*, %struct.bignum_st** @b3, align 8, !tbaa !3
  %call55 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %17) #3
  %18 = load %struct.bignum_st*, %struct.bignum_st** @b2, align 8, !tbaa !3
  %call56 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %18) #3
  %cmp57 = icmp eq i32 %call55, %call56
  br i1 %tobool39.not, label %if.else54, label %if.then40

if.then40:                                        ; preds = %if.else
  br i1 %cmp57, label %lor.lhs.false, label %land.rhs47

lor.lhs.false:                                    ; preds = %if.then40
  %19 = load %struct.bignum_st*, %struct.bignum_st** @b3, align 8, !tbaa !3
  %call45 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %19) #3
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end72, label %land.rhs47

land.rhs47:                                       ; preds = %lor.lhs.false, %if.then40
  %20 = load %struct.bignum_st*, %struct.bignum_st** @b4, align 8, !tbaa !3
  %call48 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %20) #3
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end72.sink.split, label %if.end72

if.else54:                                        ; preds = %if.else
  br i1 %cmp57, label %land.rhs62, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.else54
  %21 = load %struct.bignum_st*, %struct.bignum_st** @b3, align 8, !tbaa !3
  %call60 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %21) #3
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end72, label %land.rhs62

land.rhs62:                                       ; preds = %lor.lhs.false59, %if.else54
  %22 = load %struct.bignum_st*, %struct.bignum_st** @b4, align 8, !tbaa !3
  %call63 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %22) #3
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end72, label %if.end72.sink.split

if.end72.sink.split:                              ; preds = %land.rhs62, %land.rhs47, %if.then33
  %23 = load %struct.bignum_st*, %struct.bignum_st** @b4, align 8, !tbaa !3
  %call66 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %23) #3
  %tobool67 = icmp ne i32 %call66, 0
  br label %if.end72

if.end72:                                         ; preds = %if.end72.sink.split, %lor.lhs.false59, %land.rhs62, %lor.lhs.false, %land.rhs47, %if.then33
  %success.0.shrunk = phi i1 [ false, %if.then33 ], [ false, %lor.lhs.false ], [ true, %land.rhs47 ], [ false, %lor.lhs.false59 ], [ true, %land.rhs62 ], [ %tobool67, %if.end72.sink.split ]
  %24 = load %struct.bignum_st*, %struct.bignum_st** @b5, align 8, !tbaa !3
  %25 = load %struct.bignum_st*, %struct.bignum_st** @b3, align 8, !tbaa !3
  %26 = load %struct.bignum_st*, %struct.bignum_st** @b2, align 8, !tbaa !3
  %27 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !3
  %call73 = tail call i32 @BN_mul(%struct.bignum_st* noundef %24, %struct.bignum_st* noundef %25, %struct.bignum_st* noundef %26, %struct.bignum_ctx* noundef %27) #3
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %cond.false76, label %cond.end77

cond.false76:                                     ; preds = %if.end72
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef 92) #4
  unreachable

cond.end77:                                       ; preds = %if.end72
  %28 = load %struct.bignum_st*, %struct.bignum_st** @b5, align 8, !tbaa !3
  %29 = load %struct.bignum_st*, %struct.bignum_st** @b4, align 8, !tbaa !3
  %call79 = tail call i32 @BN_add(%struct.bignum_st* noundef %28, %struct.bignum_st* noundef %28, %struct.bignum_st* noundef %29) #3
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %cond.false82, label %cond.end83

cond.false82:                                     ; preds = %cond.end77
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef 93) #4
  unreachable

cond.end83:                                       ; preds = %cond.end77
  br i1 %success.0.shrunk, label %land.end90, label %if.then93

land.end90:                                       ; preds = %cond.end83
  %30 = load %struct.bignum_st*, %struct.bignum_st** @b5, align 8, !tbaa !3
  %31 = load %struct.bignum_st*, %struct.bignum_st** @b1, align 8, !tbaa !3
  %call87 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %30, %struct.bignum_st* noundef %31) #3
  %cmp88 = icmp eq i32 %call87, 0
  br i1 %cmp88, label %cond.end129, label %if.then93

if.then93:                                        ; preds = %cond.end83, %land.end90
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %33 = load %struct.bignum_st*, %struct.bignum_st** @b1, align 8, !tbaa !3
  %call94 = tail call i32 @BN_print_fp(%struct._IO_FILE* noundef %32, %struct.bignum_st* noundef %33) #3
  %call95 = tail call i32 @putchar(i32 noundef 10) #5
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %35 = load %struct.bignum_st*, %struct.bignum_st** @b2, align 8, !tbaa !3
  %call96 = tail call i32 @BN_print_fp(%struct._IO_FILE* noundef %34, %struct.bignum_st* noundef %35) #3
  %call97 = tail call i32 @putchar(i32 noundef 10) #5
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %37 = load %struct.bignum_st*, %struct.bignum_st** @b3, align 8, !tbaa !3
  %call98 = tail call i32 @BN_print_fp(%struct._IO_FILE* noundef %36, %struct.bignum_st* noundef %37) #3
  %call99 = tail call i32 @putchar(i32 noundef 10) #5
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %39 = load %struct.bignum_st*, %struct.bignum_st** @b4, align 8, !tbaa !3
  %call100 = tail call i32 @BN_print_fp(%struct._IO_FILE* noundef %38, %struct.bignum_st* noundef %39) #3
  %call101 = tail call i32 @putchar(i32 noundef 10) #5
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %41 = load %struct.bignum_st*, %struct.bignum_st** @b5, align 8, !tbaa !3
  %call102 = tail call i32 @BN_print_fp(%struct._IO_FILE* noundef %40, %struct.bignum_st* noundef %41) #3
  %call103 = tail call i32 @putchar(i32 noundef 10) #5
  %42 = load %struct.bignum_st*, %struct.bignum_st** @b1, align 8, !tbaa !3
  %call104 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %42) #3
  %43 = load %struct.bignum_st*, %struct.bignum_st** @b2, align 8, !tbaa !3
  %call105 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %43) #3
  %44 = load %struct.bignum_st*, %struct.bignum_st** @b3, align 8, !tbaa !3
  %call106 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %44) #3
  %45 = load %struct.bignum_st*, %struct.bignum_st** @b4, align 8, !tbaa !3
  %call107 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %45) #3
  %46 = load %struct.bignum_st*, %struct.bignum_st** @b4, align 8, !tbaa !3
  %call108 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %46) #3
  %47 = load %struct.bignum_st*, %struct.bignum_st** @b3, align 8, !tbaa !3
  %call109 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %47) #3
  %48 = load %struct.bignum_st*, %struct.bignum_st** @b2, align 8, !tbaa !3
  %call110 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %48) #3
  %cmp111.not = icmp eq i32 %call109, %call110
  br i1 %cmp111.not, label %cond.false128, label %land.rhs113

land.rhs113:                                      ; preds = %if.then93
  %49 = load %struct.bignum_st*, %struct.bignum_st** @b4, align 8, !tbaa !3
  %call114 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %49) #3
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %lor.rhs116, label %cond.false128

lor.rhs116:                                       ; preds = %land.rhs113
  %50 = load %struct.bignum_st*, %struct.bignum_st** @b4, align 8, !tbaa !3
  %call117 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %50) #3
  %tobool118 = icmp ne i32 %call117, 0
  %phi.cast150 = zext i1 %tobool118 to i32
  br label %cond.false128

cond.false128:                                    ; preds = %if.then93, %lor.rhs116, %land.rhs113
  %51 = phi i32 [ 0, %if.then93 ], [ 1, %land.rhs113 ], [ %phi.cast150, %lor.rhs116 ]
  %52 = load %struct.bignum_st*, %struct.bignum_st** @b5, align 8, !tbaa !3
  %53 = load %struct.bignum_st*, %struct.bignum_st** @b1, align 8, !tbaa !3
  %call122 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %52, %struct.bignum_st* noundef %53) #3
  %call123 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 noundef %call104, i32 noundef %call105, i32 noundef %call106, i32 noundef %call107, i32 noundef %call108, i32 noundef %51, i32 noundef %call122) #3
  %call124 = tail call i32 @puts(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #3
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef 117) #4
  unreachable

cond.end129:                                      ; preds = %land.end90, %cond.end20
  tail call void @ERR_clear_error() #3
  ret i32 0
}

declare dso_local %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare dso_local void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @BN_set_negative(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_div(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_is_negative(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_add(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_print_fp(%struct._IO_FILE* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @putchar(i32 noundef) local_unnamed_addr #0

declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @puts(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @FuzzerCleanup() local_unnamed_addr #0 {
entry:
  %0 = load %struct.bignum_st*, %struct.bignum_st** @b1, align 8, !tbaa !3
  tail call void @BN_free(%struct.bignum_st* noundef %0) #3
  %1 = load %struct.bignum_st*, %struct.bignum_st** @b2, align 8, !tbaa !3
  tail call void @BN_free(%struct.bignum_st* noundef %1) #3
  %2 = load %struct.bignum_st*, %struct.bignum_st** @b3, align 8, !tbaa !3
  tail call void @BN_free(%struct.bignum_st* noundef %2) #3
  %3 = load %struct.bignum_st*, %struct.bignum_st** @b4, align 8, !tbaa !3
  tail call void @BN_free(%struct.bignum_st* noundef %3) #3
  %4 = load %struct.bignum_st*, %struct.bignum_st** @b5, align 8, !tbaa !3
  tail call void @BN_free(%struct.bignum_st* noundef %4) #3
  %5 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !3
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %5) #3
  ret void
}

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
