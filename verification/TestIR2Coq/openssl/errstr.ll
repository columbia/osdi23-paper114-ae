; ModuleID = 'apps/errstr.c'
source_filename = "apps/errstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.ossl_init_settings_st = type opaque

@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [31 x i8] c"Usage: %s [options] errnum...\0A\00", align 1
@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@OPT_PARAM_STR = external dso_local constant [0 x i8], align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Parameters:\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"errnum\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Error number(s) to decode\00", align 1
@errstr_options = dso_local constant [6 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_PARAM_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@bio_out = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @errstr_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %buf = alloca [256 x i8], align 16
  %l = alloca i64, align 8
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #4
  %1 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([6 x %struct.options_st], [6 x %struct.options_st]* @errstr_options, i64 0, i64 0)) #5
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %call1 = tail call i32 @opt_next() #5
  switch i32 %call1, label %while.cond [
    i32 0, label %while.end
    i32 1, label %sw.bb3
    i32 -1, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.cond
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* noundef %call) #5
  br label %end

sw.bb3:                                           ; preds = %while.cond
  tail call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([6 x %struct.options_st], [6 x %struct.options_st]* @errstr_options, i64 0, i64 0)) #5
  br label %end

while.end:                                        ; preds = %while.cond
  %call4 = tail call i32 @OPENSSL_init_ssl(i64 noundef 2097154, %struct.ossl_init_settings_st* noundef null) #5
  %call5 = tail call i8** @opt_rest() #5
  %3 = load i8*, i8** %call5, align 8, !tbaa !3
  %cmp6.not18 = icmp eq i8* %3, null
  br i1 %cmp6.not18, label %end, label %for.body

for.body:                                         ; preds = %while.end, %for.inc
  %4 = phi i8* [ %7, %for.inc ], [ %3, %while.end ]
  %ret.020 = phi i32 [ %ret.1, %for.inc ], [ 0, %while.end ]
  %argv.addr.019 = phi i8** [ %incdec.ptr, %for.inc ], [ %call5, %while.end ]
  %call7 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64* noundef nonnull %l) #5
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %inc = add nsw i32 %ret.020, 1
  br label %for.inc

if.else:                                          ; preds = %for.body
  %5 = load i64, i64* %l, align 8, !tbaa !7
  call void @ERR_error_string_n(i64 noundef %5, i8* noundef nonnull %0, i64 noundef 256) #5
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %call10 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %0) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %ret.1 = phi i32 [ %inc, %if.then ], [ %ret.020, %if.else ]
  %incdec.ptr = getelementptr inbounds i8*, i8** %argv.addr.019, i64 1
  %7 = load i8*, i8** %incdec.ptr, align 8, !tbaa !3
  %cmp6.not = icmp eq i8* %7, null
  br i1 %cmp6.not, label %end, label %for.body, !llvm.loop !9

end:                                              ; preds = %for.inc, %while.end, %sw.bb3, %sw.bb
  %ret.2 = phi i32 [ 0, %sw.bb3 ], [ 1, %sw.bb ], [ 0, %while.end ], [ %ret.1, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #4
  ret i32 %ret.2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OPENSSL_init_ssl(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #2

declare dso_local i8** @opt_rest() local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local void @ERR_error_string_n(i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

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
!8 = !{!"long", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
