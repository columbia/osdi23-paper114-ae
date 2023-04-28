; ModuleID = 'apps/lib/app_rand.c'
source_filename = "apps/lib/app_rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [9 x i8] c"RANDFILE\00", align 1
@bio_err = external local_unnamed_addr global %struct.bio_st*, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Can't load %s into RNG\0A\00", align 1
@save_rand_file = internal unnamed_addr global i8* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"apps/lib/app_rand.c\00", align 1
@randfiles = internal unnamed_addr global %struct.stack_st_OPENSSL_STRING* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"Cannot write random bytes:\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @app_RAND_load_conf(%struct.conf_st* noundef %c, i8* noundef %section) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @NCONF_get_string(%struct.conf_st* noundef %c, i8* noundef %section, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #3
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_clear_error() #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @RAND_load_file(i8* noundef nonnull %call, i64 noundef -1) #3
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %call) #3
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  tail call void @ERR_print_errors(%struct.bio_st* noundef %1) #3
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %2 = load i8*, i8** @save_rand_file, align 8, !tbaa !4
  %cmp6 = icmp eq i8* %2, null
  br i1 %cmp6, label %if.then7, label %cleanup

if.then7:                                         ; preds = %if.end5
  %call8 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 32) #3
  store i8* %call8, i8** @save_rand_file, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then7, %if.then
  ret void
}

declare i8* @NCONF_get_string(%struct.conf_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_clear_error() local_unnamed_addr #1

declare i32 @RAND_load_file(i8* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #1

declare void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @app_RAND_load() local_unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** @randfiles, align 8, !tbaa !4
  %call11 = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %0) #4
  %call112 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call11) #3
  %cmp13 = icmp sgt i32 %call112, 0
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %ret.015 = phi i32 [ %spec.select, %for.body ], [ 1, %entry ]
  %i.014 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %1 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** @randfiles, align 8, !tbaa !4
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %1) #4
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %i.014) #3
  %call4 = tail call fastcc i32 @loadfiles(i8* noundef %call3) #4
  %tobool.not = icmp eq i32 %call4, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %ret.015
  %inc = add nuw nsw i32 %i.014, 1
  %2 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** @randfiles, align 8, !tbaa !4
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %2) #4
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #3
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !8

for.end:                                          ; preds = %for.body, %entry
  %ret.0.lcssa = phi i32 [ 1, %entry ], [ %spec.select, %for.body ]
  %3 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** @randfiles, align 8, !tbaa !4
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %3) #4
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call5) #3
  ret i32 %ret.0.lcssa
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @loadfiles(i8* noundef %name) unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %if.end15, %entry
  %name.addr.0 = phi i8* [ %name, %entry ], [ %add.ptr, %if.end15 ]
  %ret.0 = phi i32 [ 1, %entry ], [ %ret.1, %if.end15 ]
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.cond
  %p.0 = phi i8* [ %name.addr.0, %for.cond ], [ %incdec.ptr, %for.inc ]
  %0 = load i8, i8* %p.0, align 1, !tbaa !10
  switch i8 %0, label %for.inc [
    i8 0, label %for.end
    i8 58, label %for.end
  ]

for.inc:                                          ; preds = %for.cond1
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 1
  br label %for.cond1, !llvm.loop !11

for.end:                                          ; preds = %for.cond1, %for.cond1
  %cmp7 = icmp eq i8 %0, 0
  store i8 0, i8* %p.0, align 1, !tbaa !10
  %call = tail call i32 @RAND_load_file(i8* noundef %name.addr.0, i64 noundef -1) #3
  %cmp9 = icmp slt i32 %call, 0
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %for.end
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  %call12 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* noundef %name.addr.0) #3
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  tail call void @ERR_print_errors(%struct.bio_st* noundef %2) #3
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %for.end
  %ret.1 = phi i32 [ 0, %if.then11 ], [ %ret.0, %for.end ]
  br i1 %cmp7, label %for.end21, label %if.end15

if.end15:                                         ; preds = %if.end13
  %add.ptr = getelementptr inbounds i8, i8* %p.0, i64 1
  %3 = load i8, i8* %add.ptr, align 1, !tbaa !10
  %cmp17 = icmp eq i8 %3, 0
  br i1 %cmp17, label %for.end21, label %for.cond

for.end21:                                        ; preds = %if.end15, %if.end13
  ret i32 %ret.1
}

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @app_RAND_write() local_unnamed_addr #0 {
entry:
  %0 = load i8*, i8** @save_rand_file, align 8, !tbaa !4
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @RAND_write_file(i8* noundef nonnull %0) #3
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0)) #3
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  tail call void @ERR_print_errors(%struct.bio_st* noundef %2) #3
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %ret.0 = phi i32 [ 0, %if.then2 ], [ 1, %if.end ]
  %3 = load i8*, i8** @save_rand_file, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 86) #3
  store i8* null, i8** @save_rand_file, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4
  %retval.0 = phi i32 [ %ret.0, %if.end4 ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @RAND_write_file(i8* noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @opt_rand(i32 noundef %opt) local_unnamed_addr #0 {
entry:
  switch i32 %opt, label %sw.epilog [
    i32 1502, label %sw.bb9
    i32 1501, label %sw.bb1
  ]

sw.bb1:                                           ; preds = %entry
  %0 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** @randfiles, align 8, !tbaa !4
  %cmp = icmp eq %struct.stack_st_OPENSSL_STRING* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb1
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #3
  store %struct.stack_st* %call, %struct.stack_st** bitcast (%struct.stack_st_OPENSSL_STRING** @randfiles to %struct.stack_st**), align 8, !tbaa !4
  %cmp2 = icmp eq %struct.stack_st* %call, null
  %1 = bitcast %struct.stack_st* %call to %struct.stack_st_OPENSSL_STRING*
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %sw.bb1
  %2 = phi %struct.stack_st_OPENSSL_STRING* [ %1, %land.lhs.true ], [ %0, %sw.bb1 ]
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %2) #4
  %call4 = tail call i8* @opt_arg() #3
  %call6 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call3, i8* noundef %call4) #3
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %return, label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %3 = load i8*, i8** @save_rand_file, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 111) #3
  %call10 = tail call i8* @opt_arg() #3
  %call11 = tail call i8* @CRYPTO_strdup(i8* noundef %call10, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 112) #3
  store i8* %call11, i8** @save_rand_file, align 8, !tbaa !4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %entry, %sw.bb9
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true, %sw.epilog
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ 0, %land.lhs.true ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

declare i8* @opt_arg() local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!6, !6, i64 0}
!11 = distinct !{!11, !9}
