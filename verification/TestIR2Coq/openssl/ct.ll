; ModuleID = 'fuzz/ct.c'
source_filename = "fuzz/ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_init_settings_st = type opaque
%struct.stack_st_SCT = type opaque
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.ctlog_store_st = type opaque

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"fuzz/ct.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FuzzerInitialize(i32* nocapture noundef readnone %argc, i8*** nocapture noundef readnone %argv) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 2, %struct.ossl_init_settings_st* noundef null) #4
  %call1 = tail call i32 @CRYPTO_free_ex_index(i32 noundef 0, i32 noundef -1) #4
  tail call void @ERR_clear_error() #4
  ret i32 1
}

declare dso_local i32 @OPENSSL_init_crypto(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #1

declare dso_local i32 @CRYPTO_free_ex_index(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @ERR_clear_error() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FuzzerTestOneInput(i8* noundef %buf, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %der = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !3
  %0 = bitcast i8** %der to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i8* null, i8** %der, align 8, !tbaa !3
  %call = call %struct.stack_st_SCT* @d2i_SCT_LIST(%struct.stack_st_SCT** noundef null, i8** noundef nonnull %buf.addr, i64 noundef %len) #4
  %cmp.not = icmp eq %struct.stack_st_SCT* %call, null
  br i1 %cmp.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call %struct.bio_method_st* @BIO_s_null() #4
  %call2 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call1) #4
  call void @SCT_LIST_print(%struct.stack_st_SCT* noundef nonnull %call, %struct.bio_st* noundef %call2, i32 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.ctlog_store_st* noundef null) #4
  %call3 = call i32 @BIO_free(%struct.bio_st* noundef %call2) #4
  %call4 = call i32 @i2d_SCT_LIST(%struct.stack_st_SCT* noundef nonnull %call, i8** noundef nonnull %der) #4
  %1 = load i8*, i8** %der, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 noundef 41) #4
  call void @SCT_LIST_free(%struct.stack_st_SCT* noundef nonnull %call) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then, %entry
  call void @ERR_clear_error() #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.stack_st_SCT* @d2i_SCT_LIST(%struct.stack_st_SCT** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_method_st* @BIO_s_null() local_unnamed_addr #1

declare dso_local void @SCT_LIST_print(%struct.stack_st_SCT* noundef, %struct.bio_st* noundef, i32 noundef, i8* noundef, %struct.ctlog_store_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_SCT_LIST(%struct.stack_st_SCT* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @SCT_LIST_free(%struct.stack_st_SCT* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @FuzzerCleanup() local_unnamed_addr #3 {
entry:
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
