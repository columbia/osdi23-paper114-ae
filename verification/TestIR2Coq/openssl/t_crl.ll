; ModuleID = 'crypto/x509/t_crl.c'
source_filename = "crypto/x509/t_crl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.X509_crl_st = type opaque
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.X509_name_st = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.stack_st_X509_REVOKED = type opaque
%struct.stack_st = type opaque
%struct.x509_revoked_st = type opaque

@.str = private unnamed_addr constant [20 x i8] c"crypto/x509/t_crl.c\00", align 1
@__func__.X509_CRL_print_fp = private unnamed_addr constant [18 x i8] c"X509_CRL_print_fp\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Certificate Revocation List (CRL):\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%8sVersion %ld (0x%lx)\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%8sVersion unknown (%ld)\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%8sIssuer: \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"%8sLast Update: \00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"\0A%8sNext Update: \00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"CRL extensions\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Revoked Certificates:\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"No Revoked Certificates.\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"    Serial Number: \00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"\0A        Revocation Date: \00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"CRL entry extensions\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_CRL_print_fp(%struct._IO_FILE* noundef %fp, %struct.X509_crl_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #4
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #4
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.X509_CRL_print_fp, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524295, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #4
  %call3 = tail call i32 @X509_CRL_print(%struct.bio_st* noundef nonnull %call1, %struct.X509_crl_st* noundef %x) #5
  %call4 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_s_file() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_CRL_print(%struct.bio_st* noundef %out, %struct.X509_crl_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_CRL_print_ex(%struct.bio_st* noundef %out, %struct.X509_crl_st* noundef %x, i64 noundef 0) #5
  ret i32 1
}

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_CRL_print_ex(%struct.bio_st* noundef %out, %struct.X509_crl_st* noundef %x, i64 noundef %nmflag) local_unnamed_addr #0 {
entry:
  %sig_alg = alloca %struct.X509_algor_st*, align 8
  %sig = alloca %struct.asn1_string_st*, align 8
  %0 = bitcast %struct.X509_algor_st** %sig_alg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = bitcast %struct.asn1_string_st** %sig to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)) #4
  %call1 = tail call i64 @X509_CRL_get_version(%struct.X509_crl_st* noundef %x) #4
  %2 = icmp ult i64 %call1, 2
  br i1 %2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add = add nuw nsw i64 %call1, 1
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef %add, i64 noundef %call1) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef %call1) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @X509_CRL_get0_signature(%struct.X509_crl_st* noundef %x, %struct.asn1_string_st** noundef nonnull %sig, %struct.X509_algor_st** noundef nonnull %sig_alg) #4
  %call5 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #4
  %3 = load %struct.X509_algor_st*, %struct.X509_algor_st** %sig_alg, align 8, !tbaa !4
  %call6 = call i32 @X509_signature_print(%struct.bio_st* noundef %out, %struct.X509_algor_st* noundef %3, %struct.asn1_string_st* noundef null) #4
  %call7 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)) #4
  %call8 = call %struct.X509_name_st* @X509_CRL_get_issuer(%struct.X509_crl_st* noundef %x) #4
  %call9 = call i32 @X509_NAME_print_ex(%struct.bio_st* noundef %out, %struct.X509_name_st* noundef %call8, i32 noundef 0, i64 noundef %nmflag) #4
  %call10 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #4
  %call11 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)) #4
  %call12 = call %struct.asn1_string_st* @X509_CRL_get0_lastUpdate(%struct.X509_crl_st* noundef %x) #4
  %call13 = call i32 @ASN1_TIME_print(%struct.bio_st* noundef %out, %struct.asn1_string_st* noundef %call12) #4
  %call14 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)) #4
  %call15 = call %struct.asn1_string_st* @X509_CRL_get0_nextUpdate(%struct.X509_crl_st* noundef %x) #4
  %tobool.not = icmp eq %struct.asn1_string_st* %call15, null
  br i1 %tobool.not, label %if.else19, label %if.then16

if.then16:                                        ; preds = %if.end
  %call17 = call %struct.asn1_string_st* @X509_CRL_get0_nextUpdate(%struct.X509_crl_st* noundef %x) #4
  %call18 = call i32 @ASN1_TIME_print(%struct.bio_st* noundef %out, %struct.asn1_string_st* noundef %call17) #4
  br label %if.end21

if.else19:                                        ; preds = %if.end
  %call20 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #4
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then16
  %call22 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #4
  %call23 = call %struct.stack_st_X509_EXTENSION* @X509_CRL_get0_extensions(%struct.X509_crl_st* noundef %x) #4
  %call24 = call i32 @X509V3_extensions_print(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), %struct.stack_st_X509_EXTENSION* noundef %call23, i64 noundef 0, i32 noundef 8) #4
  %call25 = call %struct.stack_st_X509_REVOKED* @X509_CRL_get_REVOKED(%struct.X509_crl_st* noundef %x) #4
  %call26 = call fastcc %struct.stack_st* @ossl_check_const_X509_REVOKED_sk_type(%struct.stack_st_X509_REVOKED* noundef %call25) #5
  %call27 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call26) #4
  %cmp28 = icmp sgt i32 %call27, 0
  %. = select i1 %cmp28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0)
  %call32 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef %.) #4
  %call3593 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call26) #4
  %cmp3694 = icmp sgt i32 %call3593, 0
  br i1 %cmp3694, label %for.body, label %for.end

for.body:                                         ; preds = %if.end21, %for.body
  %i.095 = phi i32 [ %inc, %for.body ], [ 0, %if.end21 ]
  %call38 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call26, i32 noundef %i.095) #4
  %4 = bitcast i8* %call38 to %struct.x509_revoked_st*
  %call39 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0)) #4
  %call40 = call %struct.asn1_string_st* @X509_REVOKED_get0_serialNumber(%struct.x509_revoked_st* noundef %4) #4
  %call41 = call i32 @i2a_ASN1_INTEGER(%struct.bio_st* noundef %out, %struct.asn1_string_st* noundef %call40) #4
  %call42 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0)) #4
  %call43 = call %struct.asn1_string_st* @X509_REVOKED_get0_revocationDate(%struct.x509_revoked_st* noundef %4) #4
  %call44 = call i32 @ASN1_TIME_print(%struct.bio_st* noundef %out, %struct.asn1_string_st* noundef %call43) #4
  %call45 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #4
  %call46 = call %struct.stack_st_X509_EXTENSION* @X509_REVOKED_get0_extensions(%struct.x509_revoked_st* noundef %4) #4
  %call47 = call i32 @X509V3_extensions_print(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), %struct.stack_st_X509_EXTENSION* noundef %call46, i64 noundef 0, i32 noundef 8) #4
  %inc = add nuw nsw i32 %i.095, 1
  %call35 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call26) #4
  %cmp36 = icmp slt i32 %inc, %call35
  br i1 %cmp36, label %for.body, label %for.end, !llvm.loop !8

for.end:                                          ; preds = %for.body, %if.end21
  %5 = load %struct.X509_algor_st*, %struct.X509_algor_st** %sig_alg, align 8, !tbaa !4
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %sig, align 8, !tbaa !4
  %call48 = call i32 @X509_signature_print(%struct.bio_st* noundef %out, %struct.X509_algor_st* noundef %5, %struct.asn1_string_st* noundef %6) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 1
}

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare i64 @X509_CRL_get_version(%struct.X509_crl_st* noundef) local_unnamed_addr #2

declare void @X509_CRL_get0_signature(%struct.X509_crl_st* noundef, %struct.asn1_string_st** noundef, %struct.X509_algor_st** noundef) local_unnamed_addr #2

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @X509_signature_print(%struct.bio_st* noundef, %struct.X509_algor_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @X509_NAME_print_ex(%struct.bio_st* noundef, %struct.X509_name_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_CRL_get_issuer(%struct.X509_crl_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_TIME_print(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_CRL_get0_lastUpdate(%struct.X509_crl_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_CRL_get0_nextUpdate(%struct.X509_crl_st* noundef) local_unnamed_addr #2

declare i32 @X509V3_extensions_print(%struct.bio_st* noundef, i8* noundef, %struct.stack_st_X509_EXTENSION* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare %struct.stack_st_X509_EXTENSION* @X509_CRL_get0_extensions(%struct.X509_crl_st* noundef) local_unnamed_addr #2

declare %struct.stack_st_X509_REVOKED* @X509_CRL_get_REVOKED(%struct.X509_crl_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_REVOKED_sk_type(%struct.stack_st_X509_REVOKED* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_REVOKED* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @i2a_ASN1_INTEGER(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_REVOKED_get0_serialNumber(%struct.x509_revoked_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_REVOKED_get0_revocationDate(%struct.x509_revoked_st* noundef) local_unnamed_addr #2

declare %struct.stack_st_X509_EXTENSION* @X509_REVOKED_get0_extensions(%struct.x509_revoked_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

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
