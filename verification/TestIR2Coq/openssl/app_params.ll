; ModuleID = 'apps/lib/app_params.c'
source_filename = "apps/lib/app_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }

@bio_out = external local_unnamed_addr global %struct.bio_st*, align 8
@.str = private unnamed_addr constant [27 x i8] c"%*sEmpty list of %s (!!!)\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%*s%s:\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%*s  %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%*s%s: \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"error getting value\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"'%s'\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"<%zu bytes>\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"unknown type (%u) of %zu bytes\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"unsigned \00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"pointer to a \00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"UTF8 encoded string\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"pointer to an \00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"octet string\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"unknown type\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c" [%d]\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c" (arbitrary size)\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c" (max %zu bytes large)\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @print_param_types(i8* noundef %thing, %struct.ossl_param_st* noundef readonly %pdefs, i32 noundef %indent) local_unnamed_addr #0 {
entry:
  %buf = alloca [200 x i8], align 16
  %cmp = icmp eq %struct.ossl_param_st* %pdefs, null
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %pdefs, i64 0, i32 0
  %0 = load i8*, i8** %key, align 8, !tbaa !4
  %cmp1 = icmp eq i8* %0, null
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !11
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* noundef %thing) #3
  br label %return

if.else3:                                         ; preds = %if.else
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* noundef %thing) #3
  %2 = load i8*, i8** %key, align 8, !tbaa !4
  %cmp6.not19 = icmp eq i8* %2, null
  br i1 %cmp6.not19, label %return, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.else3
  %3 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i64 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %pdefs.addr.020 = phi %struct.ossl_param_st* [ %pdefs, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %3) #4
  call fastcc void @describe_param_type(i8* noundef nonnull %3, %struct.ossl_param_st* noundef nonnull %pdefs.addr.020) #5
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !11
  %call9 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %3) #3
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %3) #4
  %incdec.ptr = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %pdefs.addr.020, i64 1
  %key5 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %incdec.ptr, i64 0, i32 0
  %5 = load i8*, i8** %key5, align 8, !tbaa !4
  %cmp6.not = icmp eq i8* %5, null
  br i1 %cmp6.not, label %return, label %for.body, !llvm.loop !12

return:                                           ; preds = %for.body, %if.else3, %if.then2, %entry
  ret i32 1
}

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @describe_param_type(i8* noundef %buf, %struct.ossl_param_st* nocapture noundef readonly %param) unnamed_addr #0 {
entry:
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 1
  %0 = load i32, i32* %data_type, align 8, !tbaa !14
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.epilog
    i32 6, label %sw.bb2
    i32 4, label %sw.bb3
    i32 7, label %sw.bb4
    i32 5, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  br label %sw.bb3

sw.bb3:                                           ; preds = %entry, %sw.bb2
  %type_mod.1 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %entry ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), %sw.bb2 ]
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  br label %sw.bb5

sw.bb5:                                           ; preds = %entry, %sw.bb4
  %type_mod.2 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %entry ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), %sw.bb4 ]
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry, %sw.default, %sw.bb5, %sw.bb3
  %type_mod.3 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %sw.default ], [ %type_mod.2, %sw.bb5 ], [ %type_mod.1, %sw.bb3 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %entry ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), %sw.bb ]
  %type.0 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), %sw.default ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), %sw.bb5 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), %sw.bb3 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), %entry ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), %sw.bb ]
  %tobool.not = phi i1 [ false, %sw.default ], [ true, %sw.bb5 ], [ true, %sw.bb3 ], [ true, %entry ], [ true, %sw.bb ]
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 0
  %1 = load i8*, i8** %key, align 8, !tbaa !4
  %call = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %buf, i64 noundef 200, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* noundef %1) #3
  %cmp = icmp sgt i32 %call, 0
  %idx.ext = sext i32 %call to i64
  %sub = sub nsw i64 200, %idx.ext
  %bufsz.addr.0 = select i1 %cmp, i64 %sub, i64 200
  %buf.addr.0.idx2 = select i1 %cmp, i32 %call, i32 0
  %2 = zext i32 %buf.addr.0.idx2 to i64
  %buf.addr.0 = getelementptr i8, i8* %buf, i64 %2
  %call6 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %buf.addr.0, i64 noundef %bufsz.addr.0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* noundef %type_mod.3, i8* noundef nonnull %type.0) #3
  %cmp7 = icmp sgt i32 %call6, 0
  %sub133 = select i1 %cmp7, i32 %call6, i32 0
  %3 = zext i32 %sub133 to i64
  %bufsz.addr.1 = sub nsw i64 %bufsz.addr.0, %3
  %buf.addr.1 = getelementptr i8, i8* %buf.addr.0, i64 %3
  br i1 %tobool.not, label %if.end26, label %if.then15

if.then15:                                        ; preds = %sw.epilog
  %4 = load i32, i32* %data_type, align 8, !tbaa !14
  %call17 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %buf.addr.1, i64 noundef %bufsz.addr.1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i32 noundef %4) #3
  %cmp18 = icmp sgt i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end26

if.then20:                                        ; preds = %if.then15
  %idx.ext211 = zext i32 %call17 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %buf.addr.1, i64 %idx.ext211
  %sub24 = sub nsw i64 %bufsz.addr.1, %idx.ext211
  br label %if.end26

if.end26:                                         ; preds = %if.then15, %if.then20, %sw.epilog
  %bufsz.addr.2 = phi i64 [ %sub24, %if.then20 ], [ %bufsz.addr.1, %if.then15 ], [ %bufsz.addr.1, %sw.epilog ]
  %buf.addr.2 = phi i8* [ %add.ptr22, %if.then20 ], [ %buf.addr.1, %if.then15 ], [ %buf.addr.1, %sw.epilog ]
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %param, i64 0, i32 3
  %5 = load i64, i64* %data_size, align 8, !tbaa !15
  %cmp27 = icmp eq i64 %5, 0
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end26
  %call30 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %buf.addr.2, i64 noundef %bufsz.addr.2, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0)) #3
  br label %if.end33

if.else:                                          ; preds = %if.end26
  %call32 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %buf.addr.2, i64 noundef %bufsz.addr.2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i64 noundef %5) #3
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then29
  %printed_len.0 = phi i32 [ %call30, %if.then29 ], [ %call32, %if.else ]
  %cmp34 = icmp sgt i32 %printed_len.0, 0
  %narrow4 = select i1 %cmp34, i32 %printed_len.0, i32 0
  %buf.addr.3.idx = zext i32 %narrow4 to i64
  %buf.addr.3 = getelementptr i8, i8* %buf.addr.2, i64 %buf.addr.3.idx
  store i8 0, i8* %buf.addr.3, align 1, !tbaa !16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define void @print_param_value(%struct.ossl_param_st* noundef %p, i32 noundef %indent) local_unnamed_addr #0 {
entry:
  %i = alloca i64, align 8
  %u = alloca i64, align 8
  %0 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %1 = bitcast i64* %u to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 0
  %2 = load i8*, i8** %key, align 8, !tbaa !4
  %call = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* noundef %2) #3
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %3 = load i32, i32* %data_type, align 8, !tbaa !14
  switch i32 %3, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb4
    i32 6, label %sw.bb12
    i32 4, label %sw.bb14
    i32 7, label %sw.bb17
    i32 5, label %sw.bb17
  ]

sw.bb:                                            ; preds = %entry
  %call1 = call i32 @OSSL_PARAM_get_uint64(%struct.ossl_param_st* noundef nonnull %p, i64* noundef nonnull %u) #3
  %tobool.not = icmp eq i32 %call1, 0
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !11
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  %5 = load i64, i64* %u, align 8, !tbaa !17
  %call2 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 noundef %5) #3
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %call3 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0)) #3
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %call5 = call i32 @OSSL_PARAM_get_int64(%struct.ossl_param_st* noundef nonnull %p, i64* noundef nonnull %i) #3
  %tobool6.not = icmp eq i32 %call5, 0
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !11
  br i1 %tobool6.not, label %if.else9, label %if.then7

if.then7:                                         ; preds = %sw.bb4
  %7 = load i64, i64* %i, align 8, !tbaa !17
  %call8 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 noundef %7) #3
  br label %sw.epilog

if.else9:                                         ; preds = %sw.bb4
  %call10 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0)) #3
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !11
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %9 = bitcast i8** %data to i8***
  %10 = load i8**, i8*** %9, align 8, !tbaa !18
  %11 = load i8*, i8** %10, align 8, !tbaa !11
  %call13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* noundef %11) #3
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !11
  %data15 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %13 = load i8*, i8** %data15, align 8, !tbaa !18
  %call16 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* noundef %13) #3
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry, %entry
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !11
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %15 = load i64, i64* %data_size, align 8, !tbaa !15
  %call18 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i64 noundef %15) #3
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !11
  %data_size20 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %17 = load i64, i64* %data_size20, align 8, !tbaa !15
  %call21 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 noundef %3, i64 noundef %17) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then7, %if.else9, %if.then, %if.else, %sw.default, %sw.bb17, %sw.bb14, %sw.bb12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret void
}

declare i32 @printf(i8* noundef, ...) local_unnamed_addr #1

declare i32 @OSSL_PARAM_get_uint64(%struct.ossl_param_st* noundef, i64* noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_get_int64(%struct.ossl_param_st* noundef, i64* noundef) local_unnamed_addr #1

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ossl_param_st", !6, i64 0, !9, i64 8, !6, i64 16, !10, i64 24, !10, i64 32}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!6, !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!5, !9, i64 8}
!15 = !{!5, !10, i64 24}
!16 = !{!7, !7, i64 0}
!17 = !{!10, !10, i64 0}
!18 = !{!5, !6, i64 16}
