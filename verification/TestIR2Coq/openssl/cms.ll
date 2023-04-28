; ModuleID = 'fuzz/cms.c'
source_filename = "fuzz/cms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_init_settings_st = type opaque
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.CMS_ContentInfo_st = type opaque

@.str = private unnamed_addr constant [57 x i8] c"assertion failed: (size_t)BIO_write(in, buf, len) == len\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"fuzz/cms.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FuzzerInitialize(i32* nocapture noundef readnone %argc, i8*** nocapture noundef readnone %argv) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 2, %struct.ossl_init_settings_st* noundef null) #4
  tail call void @ERR_clear_error() #4
  %call1 = tail call i32 @CRYPTO_free_ex_index(i32 noundef 0, i32 noundef -1) #4
  ret i32 1
}

declare dso_local i32 @OPENSSL_init_crypto(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #1

declare dso_local void @ERR_clear_error() local_unnamed_addr #1

declare dso_local i32 @CRYPTO_free_ex_index(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FuzzerTestOneInput(i8* noundef %buf, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %len, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #4
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #4
  %conv = trunc i64 %len to i32
  %call2 = tail call i32 @BIO_write(%struct.bio_st* noundef %call1, i8* noundef %buf, i32 noundef %conv) #4
  %conv3 = sext i32 %call2 to i64
  %cmp4 = icmp eq i64 %conv3, %len
  br i1 %cmp4, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef 37) #5
  unreachable

cond.end:                                         ; preds = %if.end
  %call6 = tail call %struct.CMS_ContentInfo_st* @d2i_CMS_bio(%struct.bio_st* noundef %call1, %struct.CMS_ContentInfo_st** noundef null) #4
  %cmp7.not = icmp eq %struct.CMS_ContentInfo_st* %call6, null
  br i1 %cmp7.not, label %if.end14, label %if.then9

if.then9:                                         ; preds = %cond.end
  %call10 = tail call %struct.bio_method_st* @BIO_s_null() #4
  %call11 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call10) #4
  %call12 = tail call i32 @i2d_CMS_bio(%struct.bio_st* noundef %call11, %struct.CMS_ContentInfo_st* noundef nonnull %call6) #4
  %call13 = tail call i32 @BIO_free(%struct.bio_st* noundef %call11) #4
  tail call void @CMS_ContentInfo_free(%struct.CMS_ContentInfo_st* noundef nonnull %call6) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %cond.end
  %call15 = tail call i32 @BIO_free(%struct.bio_st* noundef %call1) #4
  tail call void @ERR_clear_error() #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end14
  ret i32 0
}

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #1

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare dso_local void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.CMS_ContentInfo_st* @d2i_CMS_bio(%struct.bio_st* noundef, %struct.CMS_ContentInfo_st** noundef) local_unnamed_addr #1

declare dso_local %struct.bio_method_st* @BIO_s_null() local_unnamed_addr #1

declare dso_local i32 @i2d_CMS_bio(%struct.bio_st* noundef, %struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local void @CMS_ContentInfo_free(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #1

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

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
