; ModuleID = 'crypto/async/arch/async_posix.c'
source_filename = "crypto/async/arch/async_posix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucontext_t = type { i64, %struct.ucontext_t*, %struct.stack_t, %struct.mcontext_t, %struct.__sigset_t, %struct._libc_fpstate, [4 x i64] }
%struct.stack_t = type { i8*, i32, i64 }
%struct.mcontext_t = type { [23 x i64], %struct._libc_fpstate*, [8 x i64] }
%struct.__sigset_t = type { [16 x i64] }
%struct._libc_fpstate = type { i16, i16, i16, i16, i64, i64, i32, i32, [8 x %struct._libc_fpxreg], [16 x %struct._libc_xmmreg], [24 x i32] }
%struct._libc_fpxreg = type { [4 x i16], i16, [3 x i16] }
%struct._libc_xmmreg = type { [4 x i32] }
%struct.async_fibre_st = type { %struct.ucontext_t, [1 x %struct.__jmp_buf_tag], i32 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }

@.str = private unnamed_addr constant [32 x i8] c"crypto/async/arch/async_posix.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ASYNC_is_capable() local_unnamed_addr #0 {
entry:
  %ctx = alloca %struct.ucontext_t, align 8
  %0 = bitcast %struct.ucontext_t* %ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 968, i8* nonnull %0) #5
  %call = call i32 @getcontext(%struct.ucontext_t* noundef nonnull %ctx) #6
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  call void @llvm.lifetime.end.p0i8(i64 968, i8* nonnull %0) #5
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @getcontext(%struct.ucontext_t* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define void @async_local_cleanup() local_unnamed_addr #3 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @async_fibre_makecontext(%struct.async_fibre_st* noundef %fibre) local_unnamed_addr #0 {
entry:
  %env_init = getelementptr inbounds %struct.async_fibre_st, %struct.async_fibre_st* %fibre, i64 0, i32 2
  store i32 0, i32* %env_init, align 8, !tbaa !4
  %fibre1 = getelementptr inbounds %struct.async_fibre_st, %struct.async_fibre_st* %fibre, i64 0, i32 0
  %call = tail call i32 @getcontext(%struct.ucontext_t* noundef %fibre1) #6
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = tail call i8* @CRYPTO_malloc(i64 noundef 32768, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 noundef 41) #6
  %ss_sp = getelementptr inbounds %struct.async_fibre_st, %struct.async_fibre_st* %fibre, i64 0, i32 0, i32 2, i32 0
  store i8* %call2, i8** %ss_sp, align 8, !tbaa !17
  %cmp7.not = icmp eq i8* %call2, null
  br i1 %cmp7.not, label %return, label %if.then8

if.then8:                                         ; preds = %if.then
  %ss_size = getelementptr inbounds %struct.async_fibre_st, %struct.async_fibre_st* %fibre, i64 0, i32 0, i32 2, i32 2
  store i64 32768, i64* %ss_size, align 8, !tbaa !18
  %uc_link = getelementptr inbounds %struct.async_fibre_st, %struct.async_fibre_st* %fibre, i64 0, i32 0, i32 1
  store %struct.ucontext_t* null, %struct.ucontext_t** %uc_link, align 8, !tbaa !19
  tail call void (%struct.ucontext_t*, void ()*, i32, ...) @makecontext(%struct.ucontext_t* noundef nonnull %fibre1, void ()* noundef nonnull @async_start_func, i32 noundef 0) #6
  br label %return

if.else:                                          ; preds = %entry
  %ss_sp15 = getelementptr inbounds %struct.async_fibre_st, %struct.async_fibre_st* %fibre, i64 0, i32 0, i32 2, i32 0
  store i8* null, i8** %ss_sp15, align 8, !tbaa !17
  br label %return

return:                                           ; preds = %if.else, %if.then, %if.then8
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 0, %if.then ], [ 0, %if.else ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @makecontext(%struct.ucontext_t* noundef, void ()* noundef, i32 noundef, ...) local_unnamed_addr #2

declare void @async_start_func() #4

; Function Attrs: noinline nounwind uwtable
define void @async_fibre_free(%struct.async_fibre_st* nocapture noundef %fibre) local_unnamed_addr #0 {
entry:
  %ss_sp = getelementptr inbounds %struct.async_fibre_st, %struct.async_fibre_st* %fibre, i64 0, i32 0, i32 2, i32 0
  %0 = load i8*, i8** %ss_sp, align 8, !tbaa !17
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 noundef 56) #6
  store i8* null, i8** %ss_sp, align 8, !tbaa !17
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !12, i64 1168}
!5 = !{!"async_fibre_st", !6, i64 0, !8, i64 968, !12, i64 1168}
!6 = !{!"ucontext_t", !7, i64 0, !10, i64 8, !11, i64 16, !13, i64 40, !14, i64 296, !15, i64 424, !8, i64 936}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!"", !10, i64 0, !12, i64 8, !7, i64 16}
!12 = !{!"int", !8, i64 0}
!13 = !{!"", !8, i64 0, !10, i64 184, !8, i64 192}
!14 = !{!"", !8, i64 0}
!15 = !{!"_libc_fpstate", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !8, i64 32, !8, i64 160, !8, i64 416}
!16 = !{!"short", !8, i64 0}
!17 = !{!5, !10, i64 16}
!18 = !{!5, !7, i64 32}
!19 = !{!5, !10, i64 8}
