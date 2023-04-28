; ModuleID = 'fuzz/bignum.c'
source_filename = "fuzz/bignum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ossl_init_settings_st = type opaque
%struct.bignum_st = type opaque
%struct.bignum_ctx = type opaque

@.str = private unnamed_addr constant [47 x i8] c"assertion failed: BN_bin2bn(buf, l1, b1) == b1\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"fuzz/bignum.c\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"assertion failed: BN_bin2bn(buf + l1, l2, b2) == b2\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"assertion failed: BN_bin2bn(buf + l1 + l2, l3, b3) == b3\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"assertion failed: BN_mod_exp(b4, b1, b2, b3, ctx)\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"assertion failed: BN_mod_exp_simple(b5, b1, b2, b3, ctx)\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"assertion failed: success\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FuzzerInitialize(i32* nocapture noundef readnone %argc, i8*** nocapture noundef readnone %argv) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 2, %struct.ossl_init_settings_st* noundef null) #4
  tail call void @ERR_clear_error() #4
  ret i32 1
}

declare dso_local i32 @OPENSSL_init_crypto(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #1

declare dso_local void @ERR_clear_error() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FuzzerTestOneInput(i8* noundef %buf, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #4
  %call1 = tail call %struct.bignum_st* @BN_new() #4
  %call2 = tail call %struct.bignum_st* @BN_new() #4
  %call3 = tail call %struct.bignum_st* @BN_new() #4
  %call4 = tail call %struct.bignum_st* @BN_new() #4
  %call5 = tail call %struct.bignum_ctx* @BN_CTX_new() #4
  %cmp = icmp ugt i64 %len, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sub = add i64 %len, -3
  %0 = load i8, i8* %buf, align 1, !tbaa !3
  %conv = zext i8 %0 to i64
  %mul = mul i64 %sub, %conv
  %div = udiv i64 %mul, 255
  %incdec.ptr = getelementptr inbounds i8, i8* %buf, i64 1
  %1 = load i8, i8* %incdec.ptr, align 1, !tbaa !3
  %conv7 = zext i8 %1 to i64
  %sub8 = sub i64 %sub, %div
  %mul9 = mul i64 %sub8, %conv7
  %div10 = udiv i64 %mul9, 255
  %incdec.ptr11 = getelementptr inbounds i8, i8* %buf, i64 2
  %sub13 = sub i64 %sub8, %div10
  %2 = load i8, i8* %incdec.ptr11, align 1, !tbaa !3
  %conv15 = zext i8 %2 to i32
  %and = and i32 %conv15, 1
  %and18 = and i32 %conv15, 4
  %incdec.ptr19 = getelementptr inbounds i8, i8* %buf, i64 3
  %phi.cast = trunc i64 %sub13 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %s1.0 = phi i32 [ %and, %if.then ], [ 0, %entry ]
  %s3.0 = phi i32 [ %and18, %if.then ], [ 0, %entry ]
  %l3.0 = phi i32 [ %phi.cast, %if.then ], [ 0, %entry ]
  %l2.0 = phi i64 [ %div10, %if.then ], [ 0, %entry ]
  %l1.0 = phi i64 [ %div, %if.then ], [ 0, %entry ]
  %buf.addr.0 = phi i8* [ %incdec.ptr19, %if.then ], [ %buf, %entry ]
  %conv20 = trunc i64 %l1.0 to i32
  %call21 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %buf.addr.0, i32 noundef %conv20, %struct.bignum_st* noundef %call) #4
  %cmp22 = icmp eq %struct.bignum_st* %call21, %call
  br i1 %cmp22, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 65) #5
  unreachable

cond.end:                                         ; preds = %if.end
  tail call void @BN_set_negative(%struct.bignum_st* noundef %call, i32 noundef %s1.0) #4
  %add.ptr = getelementptr inbounds i8, i8* %buf.addr.0, i64 %l1.0
  %conv24 = trunc i64 %l2.0 to i32
  %call25 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %add.ptr, i32 noundef %conv24, %struct.bignum_st* noundef %call1) #4
  %cmp26 = icmp eq %struct.bignum_st* %call25, %call1
  br i1 %cmp26, label %cond.end30, label %cond.false29

cond.false29:                                     ; preds = %cond.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 67) #5
  unreachable

cond.end30:                                       ; preds = %cond.end
  %add.ptr33 = getelementptr inbounds i8, i8* %add.ptr, i64 %l2.0
  %call35 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %add.ptr33, i32 noundef %l3.0, %struct.bignum_st* noundef %call2) #4
  %cmp36 = icmp eq %struct.bignum_st* %call35, %call2
  br i1 %cmp36, label %cond.end40, label %cond.false39

cond.false39:                                     ; preds = %cond.end30
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 68) #5
  unreachable

cond.end40:                                       ; preds = %cond.end30
  tail call void @BN_set_negative(%struct.bignum_st* noundef %call2, i32 noundef %s3.0) #4
  %call42 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %call2) #4
  %tobool.not = icmp eq i32 %call42, 0
  br i1 %tobool.not, label %if.end44, label %cond.end76

if.end44:                                         ; preds = %cond.end40
  %call45 = tail call i32 @BN_mod_exp(%struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %call5) #4
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %cond.false48, label %cond.end49

cond.false48:                                     ; preds = %if.end44
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 77) #5
  unreachable

cond.end49:                                       ; preds = %if.end44
  %call51 = tail call i32 @BN_mod_exp_simple(%struct.bignum_st* noundef %call4, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %call5) #4
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %cond.false54, label %cond.end55

cond.false54:                                     ; preds = %cond.end49
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 78) #5
  unreachable

cond.end55:                                       ; preds = %cond.end49
  %call57 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %call4) #4
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %cond.end76, label %if.then61

if.then61:                                        ; preds = %cond.end55
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %call62 = tail call i32 @BN_print_fp(%struct._IO_FILE* noundef %3, %struct.bignum_st* noundef %call) #4
  %call63 = tail call i32 @putchar(i32 noundef 10) #6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %call64 = tail call i32 @BN_print_fp(%struct._IO_FILE* noundef %4, %struct.bignum_st* noundef %call1) #4
  %call65 = tail call i32 @putchar(i32 noundef 10) #6
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %call66 = tail call i32 @BN_print_fp(%struct._IO_FILE* noundef %5, %struct.bignum_st* noundef %call2) #4
  %call67 = tail call i32 @putchar(i32 noundef 10) #6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %call68 = tail call i32 @BN_print_fp(%struct._IO_FILE* noundef %6, %struct.bignum_st* noundef %call3) #4
  %call69 = tail call i32 @putchar(i32 noundef 10) #6
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %call70 = tail call i32 @BN_print_fp(%struct._IO_FILE* noundef %7, %struct.bignum_st* noundef %call4) #4
  %call71 = tail call i32 @putchar(i32 noundef 10) #6
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 95) #5
  unreachable

cond.end76:                                       ; preds = %cond.end55, %cond.end40
  tail call void @BN_free(%struct.bignum_st* noundef %call) #4
  tail call void @BN_free(%struct.bignum_st* noundef %call1) #4
  tail call void @BN_free(%struct.bignum_st* noundef %call2) #4
  tail call void @BN_free(%struct.bignum_st* noundef %call3) #4
  tail call void @BN_free(%struct.bignum_st* noundef %call4) #4
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call5) #4
  tail call void @ERR_clear_error() #4
  ret i32 0
}

declare dso_local %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare dso_local %struct.bignum_ctx* @BN_CTX_new() local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare dso_local void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @BN_set_negative(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_mod_exp(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_mod_exp_simple(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_print_fp(%struct._IO_FILE* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @putchar(i32 noundef) local_unnamed_addr #0

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @FuzzerCleanup() local_unnamed_addr #3 {
entry:
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
