; ModuleID = 'crypto/pem/pem_oth.c'
source_filename = "crypto/pem/pem_oth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/pem/pem_oth.c\00", align 1
@__func__.PEM_ASN1_read_bio = private unnamed_addr constant [18 x i8] c"PEM_ASN1_read_bio\00", align 1

; Function Attrs: noinline nounwind uwtable
define i8* @PEM_ASN1_read_bio(i8* (i8**, i8**, i64)* nocapture noundef readonly %d2i, i8* noundef %name, %struct.bio_st* noundef %bp, i8** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %data = alloca i8*, align 8
  %len = alloca i64, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #3
  store i8* null, i8** %data, align 8, !tbaa !4
  %2 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #3
  %call = call i32 @PEM_bytes_read_bio(i8** noundef nonnull %data, i64* noundef nonnull %len, i8** noundef null, i8* noundef %name, %struct.bio_st* noundef %bp, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !tbaa !4
  store i8* %3, i8** %p, align 8, !tbaa !4
  %4 = load i64, i64* %len, align 8, !tbaa !8
  %call1 = call i8* %d2i(i8** noundef %x, i8** noundef nonnull %p, i64 noundef %4) #4
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.PEM_ASN1_read_bio, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 524301, i8* noundef null) #4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load i8*, i8** %data, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 34) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3
  %retval.0 = phi i8* [ %call1, %if.end3 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret i8* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @PEM_bytes_read_bio(i8** noundef, i64* noundef, i8** noundef, i8* noundef, %struct.bio_st* noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
