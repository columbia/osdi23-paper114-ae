; ModuleID = 'crypto/asn1/t_spki.c'
source_filename = "crypto/asn1/t_spki.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.Netscape_spki_st = type { %struct.Netscape_spkac_st*, %struct.X509_algor_st, %struct.asn1_string_st* }
%struct.Netscape_spkac_st = type { %struct.X509_pubkey_st*, %struct.asn1_string_st* }
%struct.X509_pubkey_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_pkey_st = type opaque
%struct.asn1_pctx_st = type opaque

@.str = private unnamed_addr constant [16 x i8] c"Netscape SPKI:\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"  Public Key Algorithm: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"  Unable to load public key\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"  Challenge String: %.*s\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"  Signature Algorithm: %s\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\0A      \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%02x%s\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @NETSCAPE_SPKI_print(%struct.bio_st* noundef %out, %struct.Netscape_spki_st* nocapture noundef readonly %spki) local_unnamed_addr #0 {
entry:
  %spkioid = alloca %struct.asn1_object_st*, align 8
  %0 = bitcast %struct.asn1_object_st** %spkioid to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #4
  %spkac = getelementptr inbounds %struct.Netscape_spki_st, %struct.Netscape_spki_st* %spki, i64 0, i32 0
  %1 = load %struct.Netscape_spkac_st*, %struct.Netscape_spkac_st** %spkac, align 8, !tbaa !4
  %pubkey = getelementptr inbounds %struct.Netscape_spkac_st, %struct.Netscape_spkac_st* %1, i64 0, i32 0
  %2 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %pubkey, align 8, !tbaa !10
  %call1 = call i32 @X509_PUBKEY_get0_param(%struct.asn1_object_st** noundef nonnull %spkioid, i8** noundef null, i32* noundef null, %struct.X509_algor_st** noundef null, %struct.X509_pubkey_st* noundef %2) #4
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %spkioid, align 8, !tbaa !12
  %call2 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %3) #4
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %call3 = call i8* @OBJ_nid2ln(i32 noundef %call2) #4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i8* [ %call3, %cond.false ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %entry ]
  %call4 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* noundef %cond) #4
  %4 = load %struct.Netscape_spkac_st*, %struct.Netscape_spkac_st** %spkac, align 8, !tbaa !4
  %pubkey6 = getelementptr inbounds %struct.Netscape_spkac_st, %struct.Netscape_spkac_st* %4, i64 0, i32 0
  %5 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %pubkey6, align 8, !tbaa !10
  %call7 = call %struct.evp_pkey_st* @X509_PUBKEY_get(%struct.X509_pubkey_st* noundef %5) #4
  %cmp8 = icmp eq %struct.evp_pkey_st* %call7, null
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %call9 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0)) #4
  br label %if.end

if.else:                                          ; preds = %cond.end
  %call10 = call i32 @EVP_PKEY_print_public(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef nonnull %call7, i32 noundef 4, %struct.asn1_pctx_st* noundef null) #4
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call7) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct.Netscape_spkac_st*, %struct.Netscape_spkac_st** %spkac, align 8, !tbaa !4
  %challenge = getelementptr inbounds %struct.Netscape_spkac_st, %struct.Netscape_spkac_st* %6, i64 0, i32 1
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %challenge, align 8, !tbaa !13
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %7, i64 0, i32 0
  %8 = load i32, i32* %length, align 8, !tbaa !14
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.end
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %7, i64 0, i32 2
  %9 = load i8*, i8** %data, align 8, !tbaa !18
  %call14 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 noundef %8, i8* noundef %9) #4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end
  %algorithm = getelementptr inbounds %struct.Netscape_spki_st, %struct.Netscape_spki_st* %spki, i64 0, i32 1, i32 0
  %10 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !19
  %call16 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %10) #4
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %cond.end21, label %cond.false19

cond.false19:                                     ; preds = %if.end15
  %call20 = call i8* @OBJ_nid2ln(i32 noundef %call16) #4
  br label %cond.end21

cond.end21:                                       ; preds = %if.end15, %cond.false19
  %cond22 = phi i8* [ %call20, %cond.false19 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %if.end15 ]
  %call23 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef %cond22) #4
  %signature = getelementptr inbounds %struct.Netscape_spki_st, %struct.Netscape_spki_st* %spki, i64 0, i32 2
  %11 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signature, align 8, !tbaa !20
  %length24 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %11, i64 0, i32 0
  %12 = load i32, i32* %length24, align 8, !tbaa !14
  %data26 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %11, i64 0, i32 2
  %13 = load i8*, i8** %data26, align 8, !tbaa !18
  %cmp2769 = icmp sgt i32 %12, 0
  br i1 %cmp2769, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %cond.end21
  %14 = zext i32 %12 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end31
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %if.end31 ]
  %15 = trunc i64 %indvars.iv to i32
  %rem = urem i32 %15, 18
  %cmp28 = icmp eq i32 %rem, 0
  br i1 %cmp28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %for.body
  %call30 = call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef 7) #4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %for.body
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %indvars.iv
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %16 to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp32 = icmp eq i64 %indvars.iv.next, %14
  %cond34 = select i1 %cmp32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)
  %call35 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv, i8* noundef %cond34) #4
  %exitcond.not = icmp eq i64 %indvars.iv.next, %14
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !22

for.end:                                          ; preds = %if.end31, %cond.end21
  %call36 = call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 noundef 1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @X509_PUBKEY_get0_param(%struct.asn1_object_st** noundef, i8** noundef, i32* noundef, %struct.X509_algor_st** noundef, %struct.X509_pubkey_st* noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i8* @OBJ_nid2ln(i32 noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @X509_PUBKEY_get(%struct.X509_pubkey_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_print_public(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

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
!4 = !{!5, !6, i64 0}
!5 = !{!"Netscape_spki_st", !6, i64 0, !9, i64 8, !6, i64 24}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"X509_algor_st", !6, i64 0, !6, i64 8}
!10 = !{!11, !6, i64 0}
!11 = !{!"Netscape_spkac_st", !6, i64 0, !6, i64 8}
!12 = !{!6, !6, i64 0}
!13 = !{!11, !6, i64 8}
!14 = !{!15, !16, i64 0}
!15 = !{!"asn1_string_st", !16, i64 0, !16, i64 4, !6, i64 8, !17, i64 16}
!16 = !{!"int", !7, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!15, !6, i64 8}
!19 = !{!5, !6, i64 8}
!20 = !{!5, !6, i64 24}
!21 = !{!7, !7, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
