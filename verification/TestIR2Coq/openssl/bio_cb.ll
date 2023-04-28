; ModuleID = 'crypto/bio/bio_cb.c'
source_filename = "crypto/bio/bio_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.bio_st = type { %struct.ossl_lib_ctx_st*, %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, {}*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque

@.str = private unnamed_addr constant [10 x i8] c"BIO[%p]: \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Free - %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"read(%d,%zu) - %s fd=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"read(%d,%zu) - %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"write(%d,%zu) - %s fd=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"write(%d,%zu) - %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"puts() - %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"gets(%zu) - %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"ctrl(%d) - %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"read return %d processed: %zu\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"write return %d processed: %zu\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"gets return %d processed: %zu\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"puts return %d processed: %zu\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"ctrl return %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"bio callback - unknown type (%d)\0A\00", align 1
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind uwtable
define i64 @BIO_debug_callback_ex(%struct.bio_st* noundef %bio, i32 noundef %cmd, i8* nocapture readnone %argp, i64 noundef %len, i32 noundef %argi, i64 %argl, i32 noundef %ret, i64* noundef readonly %processed) local_unnamed_addr #0 {
entry:
  %buf = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #4
  %cmp.not = icmp eq i64* %processed, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %processed, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %l.0 = phi i64 [ %1, %if.then ], [ 0, %entry ]
  %call = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 256, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.bio_st* noundef %bio) #5
  %2 = icmp sgt i32 %call, 0
  %spec.store.select = select i1 %2, i32 %call, i32 0
  %idx.ext = zext i32 %spec.store.select to i64
  %add.ptr = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 %idx.ext
  %sub = sub nsw i32 256, %spec.store.select
  switch i32 %cmd, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
    i32 3, label %sw.bb22
    i32 4, label %sw.bb41
    i32 5, label %sw.bb46
    i32 6, label %sw.bb51
    i32 130, label %sw.bb56
    i32 131, label %sw.bb59
    i32 133, label %sw.bb62
    i32 132, label %sw.bb65
    i32 134, label %sw.bb68
  ]

sw.bb:                                            ; preds = %if.end
  %conv6 = sext i32 %sub to i64
  %method = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 1
  %3 = load %struct.bio_method_st*, %struct.bio_method_st** %method, align 8, !tbaa !8
  %name = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %3, i64 0, i32 1
  %4 = load i8*, i8** %name, align 8, !tbaa !13
  %call7 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %add.ptr, i64 noundef %conv6, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* noundef %4) #5
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %method9 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 1
  %5 = load %struct.bio_method_st*, %struct.bio_method_st** %method9, align 8, !tbaa !8
  %type = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %5, i64 0, i32 0
  %6 = load i32, i32* %type, align 8, !tbaa !15
  %and = and i32 %6, 256
  %tobool.not = icmp eq i32 %and, 0
  %conv16 = sext i32 %sub to i64
  %num17 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 9
  %7 = load i32, i32* %num17, align 8, !tbaa !16
  %name19 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %5, i64 0, i32 1
  %8 = load i8*, i8** %name19, align 8, !tbaa !13
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %sw.bb8
  %call15 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %add.ptr, i64 noundef %conv16, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef %7, i64 noundef %len, i8* noundef %8, i32 noundef %7) #5
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb8
  %call20 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %add.ptr, i64 noundef %conv16, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 noundef %7, i64 noundef %len, i8* noundef %8) #5
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  %method23 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 1
  %9 = load %struct.bio_method_st*, %struct.bio_method_st** %method23, align 8, !tbaa !8
  %type24 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %9, i64 0, i32 0
  %10 = load i32, i32* %type24, align 8, !tbaa !15
  %and25 = and i32 %10, 256
  %tobool26.not = icmp eq i32 %and25, 0
  %conv35 = sext i32 %sub to i64
  %num36 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 9
  %11 = load i32, i32* %num36, align 8, !tbaa !16
  %name38 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %9, i64 0, i32 1
  %12 = load i8*, i8** %name38, align 8, !tbaa !13
  br i1 %tobool26.not, label %if.else34, label %if.then27

if.then27:                                        ; preds = %sw.bb22
  %call33 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %add.ptr, i64 noundef %conv35, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 noundef %11, i64 noundef %len, i8* noundef %12, i32 noundef %11) #5
  br label %sw.epilog

if.else34:                                        ; preds = %sw.bb22
  %call39 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %add.ptr, i64 noundef %conv35, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 noundef %11, i64 noundef %len, i8* noundef %12) #5
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end
  %conv42 = sext i32 %sub to i64
  %method43 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 1
  %13 = load %struct.bio_method_st*, %struct.bio_method_st** %method43, align 8, !tbaa !8
  %name44 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %13, i64 0, i32 1
  %14 = load i8*, i8** %name44, align 8, !tbaa !13
  %call45 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %add.ptr, i64 noundef %conv42, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* noundef %14) #5
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end
  %conv47 = sext i32 %sub to i64
  %method48 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 1
  %15 = load %struct.bio_method_st*, %struct.bio_method_st** %method48, align 8, !tbaa !8
  %name49 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %15, i64 0, i32 1
  %16 = load i8*, i8** %name49, align 8, !tbaa !13
  %call50 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %add.ptr, i64 noundef %conv47, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i64 noundef %len, i8* noundef %16) #5
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end
  %conv52 = sext i32 %sub to i64
  %method53 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 1
  %17 = load %struct.bio_method_st*, %struct.bio_method_st** %method53, align 8, !tbaa !8
  %name54 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %17, i64 0, i32 1
  %18 = load i8*, i8** %name54, align 8, !tbaa !13
  %call55 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %add.ptr, i64 noundef %conv52, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 noundef %argi, i8* noundef %18) #5
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.end
  %conv57 = sext i32 %sub to i64
  %call58 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %add.ptr, i64 noundef %conv57, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 noundef %ret, i64 noundef %l.0) #5
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end
  %conv60 = sext i32 %sub to i64
  %call61 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %add.ptr, i64 noundef %conv60, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 noundef %ret, i64 noundef %l.0) #5
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end
  %conv63 = sext i32 %sub to i64
  %call64 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %add.ptr, i64 noundef %conv63, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 noundef %ret, i64 noundef %l.0) #5
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end
  %conv66 = sext i32 %sub to i64
  %call67 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %add.ptr, i64 noundef %conv66, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 noundef %ret, i64 noundef %l.0) #5
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end
  %conv69 = sext i32 %sub to i64
  %call70 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %add.ptr, i64 noundef %conv69, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 noundef %ret) #5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %conv71 = sext i32 %sub to i64
  %call72 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %add.ptr, i64 noundef %conv71, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32 noundef %cmd) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then27, %if.else34, %if.then10, %if.else, %sw.default, %sw.bb68, %sw.bb65, %sw.bb62, %sw.bb59, %sw.bb56, %sw.bb51, %sw.bb46, %sw.bb41, %sw.bb
  %cb_arg = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 4
  %19 = bitcast i8** %cb_arg to %struct.bio_st**
  %20 = load %struct.bio_st*, %struct.bio_st** %19, align 8, !tbaa !17
  %cmp73.not = icmp eq %struct.bio_st* %20, null
  br i1 %cmp73.not, label %if.else81, label %if.then75

if.then75:                                        ; preds = %sw.epilog
  %call78 = call i64 @strlen(i8* noundef nonnull %0) #6
  %conv79 = trunc i64 %call78 to i32
  %call80 = call i32 @BIO_write(%struct.bio_st* noundef nonnull %20, i8* noundef nonnull %0, i32 noundef %conv79) #5
  br label %if.end84

if.else81:                                        ; preds = %sw.epilog
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !18
  %call83 = call i32 @fputs(i8* noundef nonnull %0, %struct._IO_FILE* noundef %21) #5
  br label %if.end84

if.end84:                                         ; preds = %if.else81, %if.then75
  %conv85 = sext i32 %ret to i64
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #4
  ret i64 %conv85
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

declare i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i64 @BIO_debug_callback(%struct.bio_st* noundef %bio, i32 noundef %cmd, i8* nocapture noundef readnone %argp, i32 noundef %argi, i64 noundef %argl, i64 noundef returned %ret) local_unnamed_addr #0 {
entry:
  %processed = alloca i64, align 8
  %0 = bitcast i64* %processed to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %cmp = icmp sgt i64 %ret, 0
  %spec.select = select i1 %cmp, i64 %ret, i64 0
  store i64 %spec.select, i64* %processed, align 8, !tbaa !4
  %conv = sext i32 %argi to i64
  %conv3 = trunc i64 %ret to i32
  %cond = select i1 %cmp, i32 1, i32 %conv3
  %call = call i64 @BIO_debug_callback_ex(%struct.bio_st* noundef %bio, i32 noundef %cmd, i8* undef, i64 noundef %conv, i32 noundef %argi, i64 undef, i32 noundef %cond, i64* noundef nonnull %processed) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i64 %ret
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 8}
!9 = !{!"bio_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !6, i64 88, !5, i64 96, !5, i64 104, !12, i64 112, !10, i64 128}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!"crypto_ex_data_st", !10, i64 0, !10, i64 8}
!13 = !{!14, !10, i64 8}
!14 = !{!"bio_method_st", !11, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88}
!15 = !{!14, !11, i64 0}
!16 = !{!9, !11, i64 56}
!17 = !{!9, !10, i64 32}
!18 = !{!10, !10, i64 0}
