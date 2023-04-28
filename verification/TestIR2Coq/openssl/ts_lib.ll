; ModuleID = 'crypto/ts/ts_lib.c'
source_filename = "crypto/ts/ts_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.bignum_st = type opaque
%struct.asn1_object_st = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.X509_extension_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.TS_msg_imprint_st = type { %struct.X509_algor_st*, %struct.asn1_string_st* }

@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"crypto/ts/ts_lib.c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Extensions:\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c":%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" critical\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%4s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Hash Algorithm: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Message data:\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_ASN1_INTEGER_print_bio(%struct.bio_st* noundef %bio, %struct.asn1_string_st* noundef %num) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef %num, %struct.bignum_st* noundef null) #4
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @BN_bn2hex(%struct.bignum_st* noundef nonnull %call) #4
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %if.end11, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @BIO_write(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 noundef 2) #4
  %cmp4 = icmp sgt i32 %call3, 0
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then2
  %call6 = tail call i64 @strlen(i8* noundef nonnull %call1) #5
  %conv7 = trunc i64 %call6 to i32
  %call8 = tail call i32 @BIO_write(%struct.bio_st* noundef %bio, i8* noundef nonnull %call1, i32 noundef %conv7) #4
  %cmp9 = icmp sgt i32 %call8, 0
  %phi.cast = zext i1 %cmp9 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then2
  %0 = phi i32 [ 0, %if.then2 ], [ %phi.cast, %land.rhs ]
  tail call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 31) #4
  br label %if.end11

if.end11:                                         ; preds = %land.end, %if.end
  %result.0 = phi i32 [ %0, %land.end ], [ 0, %if.end ]
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end11
  %retval.0 = phi i32 [ %result.0, %if.end11 ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i8* @BN_bn2hex(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_OBJ_print_bio(%struct.bio_st* noundef %bio, %struct.asn1_object_st* noundef %obj) local_unnamed_addr #0 {
entry:
  %obj_txt = alloca [128 x i8], align 16
  %0 = getelementptr inbounds [128 x i8], [128 x i8]* %obj_txt, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #6
  %call = call i32 @OBJ_obj2txt(i8* noundef nonnull %0, i32 noundef 128, %struct.asn1_object_st* noundef %obj, i32 noundef 0) #4
  %call2 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %0) #4
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #6
  ret i32 1
}

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @TS_ext_print_bio(%struct.bio_st* noundef %bio, %struct.stack_st_X509_EXTENSION* noundef %extensions) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)) #4
  %call1 = tail call i32 @X509v3_get_ext_count(%struct.stack_st_X509_EXTENSION* noundef %extensions) #4
  %cmp37 = icmp sgt i32 %call1, 0
  br i1 %cmp37, label %for.body, label %cleanup

for.body:                                         ; preds = %entry, %if.end14
  %i.038 = phi i32 [ %inc, %if.end14 ], [ 0, %entry ]
  %call2 = tail call %struct.X509_extension_st* @X509v3_get_ext(%struct.stack_st_X509_EXTENSION* noundef %extensions, i32 noundef %i.038) #4
  %call3 = tail call %struct.asn1_object_st* @X509_EXTENSION_get_object(%struct.X509_extension_st* noundef %call2) #4
  %call4 = tail call i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef %bio, %struct.asn1_object_st* noundef %call3) #4
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %call6 = tail call i32 @X509_EXTENSION_get_critical(%struct.X509_extension_st* noundef %call2) #4
  %tobool.not = icmp eq i32 %call6, 0
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %call7 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef %cond) #4
  %call8 = tail call i32 @X509V3_EXT_print(%struct.bio_st* noundef %bio, %struct.X509_extension_st* noundef %call2, i64 noundef 0, i32 noundef 4) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #4
  %call12 = tail call %struct.asn1_string_st* @X509_EXTENSION_get_data(%struct.X509_extension_st* noundef %call2) #4
  %call13 = tail call i32 @ASN1_STRING_print(%struct.bio_st* noundef %bio, %struct.asn1_string_st* noundef %call12) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end
  %call15 = tail call i32 @BIO_write(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef 1) #4
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !4

cleanup:                                          ; preds = %for.body, %if.end14, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %if.end14 ], [ 0, %for.body ]
  ret i32 %retval.0
}

declare i32 @X509v3_get_ext_count(%struct.stack_st_X509_EXTENSION* noundef) local_unnamed_addr #2

declare %struct.X509_extension_st* @X509v3_get_ext(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @X509_EXTENSION_get_object(%struct.X509_extension_st* noundef) local_unnamed_addr #2

declare i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @X509_EXTENSION_get_critical(%struct.X509_extension_st* noundef) local_unnamed_addr #2

declare i32 @X509V3_EXT_print(%struct.bio_st* noundef, %struct.X509_extension_st* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_print(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_EXTENSION_get_data(%struct.X509_extension_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @TS_X509_ALGOR_print_bio(%struct.bio_st* noundef %bio, %struct.X509_algor_st* nocapture noundef readonly %alg) local_unnamed_addr #0 {
entry:
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %alg, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !6
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %call1 = tail call i8* @OBJ_nid2ln(i32 noundef %call) #4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i8* [ %call1, %cond.false ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), %entry ]
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* noundef %cond) #4
  ret i32 %call2
}

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i8* @OBJ_nid2ln(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @TS_MSG_IMPRINT_print_bio(%struct.bio_st* noundef %bio, %struct.TS_msg_imprint_st* nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %hash_algo = getelementptr inbounds %struct.TS_msg_imprint_st, %struct.TS_msg_imprint_st* %a, i64 0, i32 0
  %0 = load %struct.X509_algor_st*, %struct.X509_algor_st** %hash_algo, align 8, !tbaa !11
  %call = tail call i32 @TS_X509_ALGOR_print_bio(%struct.bio_st* noundef %bio, %struct.X509_algor_st* noundef %0) #7
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0)) #4
  %hashed_msg = getelementptr inbounds %struct.TS_msg_imprint_st, %struct.TS_msg_imprint_st* %a, i64 0, i32 1
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %hashed_msg, align 8, !tbaa !13
  %call2 = tail call i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef %1) #4
  %call3 = tail call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef %1) #4
  %call4 = tail call i32 @BIO_dump_indent(%struct.bio_st* noundef %bio, i8* noundef %call2, i32 noundef %call3, i32 noundef 4) #4
  ret i32 1
}

declare i32 @BIO_dump_indent(%struct.bio_st* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!7, !8, i64 0}
!7 = !{!"X509_algor_st", !8, i64 0, !8, i64 8}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 0}
!12 = !{!"TS_msg_imprint_st", !8, i64 0, !8, i64 8}
!13 = !{!12, !8, i64 8}
