; ModuleID = 'crypto/rsa/rsa_prn.c'
source_filename = "crypto/rsa/rsa_prn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.rsa_st = type opaque
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.asn1_pctx_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/rsa/rsa_prn.c\00", align 1
@__func__.RSA_print_fp = private unnamed_addr constant [13 x i8] c"RSA_print_fp\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_print_fp(%struct._IO_FILE* noundef %fp, %struct.rsa_st* noundef %x, i32 noundef %off) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #2
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #2
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 28, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.RSA_print_fp, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 524295, i8* noundef null) #2
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #2
  %call3 = tail call i32 @RSA_print(%struct.bio_st* noundef nonnull %call1, %struct.rsa_st* noundef %x, i32 noundef %off) #3
  %call4 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare %struct.bio_method_st* @BIO_s_file() local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_print(%struct.bio_st* noundef %bp, %struct.rsa_st* noundef %x, i32 noundef %off) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #2
  %cmp = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_set1_RSA(%struct.evp_pkey_st* noundef nonnull %call, %struct.rsa_st* noundef %x) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @EVP_PKEY_print_private(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* noundef nonnull %call, i32 noundef %off, %struct.asn1_pctx_st* noundef null) #2
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %ret.0 = phi i32 [ %call3, %if.then2 ], [ 0, %if.end ]
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #2
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4
  %retval.0 = phi i32 [ %ret.0, %if.end4 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

declare %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #1

declare i32 @EVP_PKEY_set1_RSA(%struct.evp_pkey_st* noundef, %struct.rsa_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_print_private(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #1

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
