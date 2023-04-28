; ModuleID = 'test/confdump.c'
source_filename = "test/confdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.bio_st = type opaque
%struct.stack_st_OPENSSL_CSTRING = type opaque
%struct.stack_st = type opaque
%struct.stack_st_CONF_VALUE = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [8 x i8] c"[ %s ]\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s = %s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** nocapture noundef readonly %argv) local_unnamed_addr #0 {
entry:
  %eline = alloca i64, align 8
  %0 = bitcast i64* %eline to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %call = tail call %struct.conf_method_st* @NCONF_default() #5
  %call1 = tail call %struct.conf_st* @NCONF_new(%struct.conf_method_st* noundef %call) #5
  %cmp.not = icmp eq %struct.conf_st* %call1, null
  br i1 %cmp.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %1 = load i8*, i8** %arrayidx, align 8, !tbaa !3
  %call2 = call i32 @NCONF_load(%struct.conf_st* noundef nonnull %call1, i8* noundef %1, i64* noundef nonnull %eline) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call3 = call %struct.stack_st_OPENSSL_CSTRING* @NCONF_get_section_names(%struct.conf_st* noundef nonnull %call1) #5
  %call4 = call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %call3) #6
  %call522 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #5
  %cmp623 = icmp sgt i32 %call522, 0
  br i1 %cmp623, label %for.body, label %for.end

for.body:                                         ; preds = %if.then, %for.body
  %i.024 = phi i32 [ %inc, %for.body ], [ 0, %if.then ]
  %call8 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call4, i32 noundef %i.024) #5
  call fastcc void @dump_section(i8* noundef %call8, %struct.conf_st* noundef nonnull %call1) #6
  %inc = add nuw nsw i32 %i.024, 1
  %call5 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #5
  %cmp6 = icmp slt i32 %inc, %call5
  br i1 %cmp6, label %for.body, label %for.end, !llvm.loop !7

for.end:                                          ; preds = %for.body, %if.then
  %call9 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %call3) #6
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call9) #5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  call void @ERR_print_errors_fp(%struct._IO_FILE* noundef %2) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %ret.0 = phi i32 [ 0, %for.end ], [ 1, %if.else ]
  call void @NCONF_free(%struct.conf_st* noundef %call1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.conf_st* @NCONF_new(%struct.conf_method_st* noundef) local_unnamed_addr #2

declare dso_local %struct.conf_method_st* @NCONF_default() local_unnamed_addr #2

declare dso_local i32 @NCONF_load(%struct.conf_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #2

declare dso_local %struct.stack_st_OPENSSL_CSTRING* @NCONF_get_section_names(%struct.conf_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_CSTRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @dump_section(i8* noundef %name, %struct.conf_st* noundef %cnf) unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef %cnf, i8* noundef %name) #5
  %call1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef %name) #5
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %call) #6
  %call316 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #5
  %cmp17 = icmp sgt i32 %call316, 0
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %i.018 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %i.018) #5
  %name6 = getelementptr inbounds i8, i8* %call5, i64 8
  %0 = bitcast i8* %name6 to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !9
  %value = getelementptr inbounds i8, i8* %call5, i64 16
  %2 = bitcast i8* %value to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !11
  %call7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef %1, i8* noundef %3) #5
  %inc = add nuw nsw i32 %i.018, 1
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #5
  %cmp = icmp slt i32 %inc, %call3
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !12

for.end:                                          ; preds = %for.body, %entry
  ret void
}

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_CSTRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @ERR_print_errors_fp(%struct._IO_FILE* noundef) local_unnamed_addr #2

declare dso_local void @NCONF_free(%struct.conf_st* noundef) local_unnamed_addr #2

declare dso_local %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !4, i64 8}
!10 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16}
!11 = !{!10, !4, i64 16}
!12 = distinct !{!12, !8}
