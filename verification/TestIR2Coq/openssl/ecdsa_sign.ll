; ModuleID = 'crypto/ec/ecdsa_sign.c'
source_filename = "crypto/ec/ecdsa_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ECDSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.bignum_st = type opaque
%struct.ec_key_st = type { %struct.ec_key_method_st*, %struct.engine_st*, i32, %struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, i32, i32, i32, %struct.crypto_ex_data_st, i8*, %struct.ossl_lib_ctx_st*, i8*, i64 }
%struct.ec_key_method_st = type { i8*, i32, i32 (%struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_group_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*, %struct.ec_point_st*)*, i32 (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* }
%struct.bignum_ctx = type opaque
%struct.engine_st = type opaque
%struct.ec_group_st = type { %struct.ec_method_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, i32, i32, i32, i32, i8*, i64, %struct.bignum_st*, [6 x i32], %struct.bignum_st*, %struct.bignum_st*, i32, i8*, i8*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, %struct.bn_mont_ctx_st*, i32, %union.anon, %struct.ossl_lib_ctx_st*, i8* }
%struct.ec_method_st = type { i32, i32, i32 (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, i32 (%struct.ec_point_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)*, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i64 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* }
%struct.bn_mont_ctx_st = type opaque
%union.anon = type { %struct.nistp224_pre_comp_st* }
%struct.nistp224_pre_comp_st = type opaque
%struct.ec_point_st = type { %struct.ec_method_st*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.ossl_lib_ctx_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/ec/ecdsa_sign.c\00", align 1
@__func__.ECDSA_do_sign_ex = private unnamed_addr constant [17 x i8] c"ECDSA_do_sign_ex\00", align 1
@__func__.ECDSA_sign_ex = private unnamed_addr constant [14 x i8] c"ECDSA_sign_ex\00", align 1
@__func__.ECDSA_sign_setup = private unnamed_addr constant [17 x i8] c"ECDSA_sign_setup\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ECDSA_SIG_st* @ECDSA_do_sign(i8* noundef %dgst, i32 noundef %dlen, %struct.ec_key_st* noundef %eckey) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ECDSA_SIG_st* @ECDSA_do_sign_ex(i8* noundef %dgst, i32 noundef %dlen, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.ec_key_st* noundef %eckey) #2
  ret %struct.ECDSA_SIG_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ECDSA_SIG_st* @ECDSA_do_sign_ex(i8* noundef %dgst, i32 noundef %dlen, %struct.bignum_st* noundef %kinv, %struct.bignum_st* noundef %rp, %struct.ec_key_st* noundef %eckey) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 0
  %0 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %meth, align 8, !tbaa !4
  %sign_sig = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %0, i64 0, i32 12
  %1 = load %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)** %sign_sig, align 8, !tbaa !12
  %cmp.not = icmp eq %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)* %1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.ECDSA_SIG_st* %1(i8* noundef %dgst, i32 noundef %dlen, %struct.bignum_st* noundef %kinv, %struct.bignum_st* noundef %rp, %struct.ec_key_st* noundef nonnull %eckey) #3
  br label %return

if.end:                                           ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ECDSA_do_sign_ex, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 152, i8* noundef null) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ECDSA_SIG_st* [ %call, %if.then ], [ null, %if.end ]
  ret %struct.ECDSA_SIG_st* %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ECDSA_sign(i32 noundef %type, i8* noundef %dgst, i32 noundef %dlen, i8* noundef %sig, i32* noundef %siglen, %struct.ec_key_st* noundef %eckey) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ECDSA_sign_ex(i32 noundef %type, i8* noundef %dgst, i32 noundef %dlen, i8* noundef %sig, i32* noundef %siglen, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.ec_key_st* noundef %eckey) #2
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ECDSA_sign_ex(i32 noundef %type, i8* noundef %dgst, i32 noundef %dlen, i8* noundef %sig, i32* noundef %siglen, %struct.bignum_st* noundef %kinv, %struct.bignum_st* noundef %r, %struct.ec_key_st* noundef %eckey) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 0
  %0 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %meth, align 8, !tbaa !4
  %sign = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %0, i64 0, i32 10
  %1 = load i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)** %sign, align 8, !tbaa !14
  %cmp.not = icmp eq i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)* %1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(i32 noundef %type, i8* noundef %dgst, i32 noundef %dlen, i8* noundef %sig, i32* noundef %siglen, %struct.bignum_st* noundef %kinv, %struct.bignum_st* noundef %r, %struct.ec_key_st* noundef nonnull %eckey) #3
  br label %return

if.end:                                           ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ECDSA_sign_ex, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 152, i8* noundef null) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ECDSA_sign_setup(%struct.ec_key_st* noundef %eckey, %struct.bignum_ctx* noundef %ctx_in, %struct.bignum_st** noundef %kinvp, %struct.bignum_st** noundef %rp) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 0
  %0 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %meth, align 8, !tbaa !4
  %sign_setup = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %0, i64 0, i32 11
  %1 = load i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)** %sign_setup, align 8, !tbaa !15
  %cmp.not = icmp eq i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)* %1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(%struct.ec_key_st* noundef nonnull %eckey, %struct.bignum_ctx* noundef %ctx_in, %struct.bignum_st** noundef %kinvp, %struct.bignum_st** noundef %rp) #3
  br label %return

if.end:                                           ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ECDSA_sign_setup, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 152, i8* noundef null) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin "no-builtins" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ec_key_st", !6, i64 0, !6, i64 8, !9, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !9, i64 48, !7, i64 52, !7, i64 56, !9, i64 60, !10, i64 64, !6, i64 80, !6, i64 88, !6, i64 96, !11, i64 104}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!11 = !{!"long", !7, i64 0}
!12 = !{!13, !6, i64 96}
!13 = !{!"ec_key_method_st", !6, i64 0, !9, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112}
!14 = !{!13, !6, i64 80}
!15 = !{!13, !6, i64 88}
