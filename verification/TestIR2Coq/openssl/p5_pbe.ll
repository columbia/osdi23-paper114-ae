; ModuleID = 'crypto/asn1/p5_pbe.c'
source_filename = "crypto/asn1/p5_pbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.PBEPARAM_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ASN1_VALUE_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ossl_lib_ctx_st = type opaque

@PBEPARAM_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @PBEPARAM_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [9 x i8] c"PBEPARAM\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"crypto/asn1/p5_pbe.c\00", align 1
@__func__.PKCS5_pbe_set0_algor_ex = private unnamed_addr constant [24 x i8] c"PKCS5_pbe_set0_algor_ex\00", align 1
@__func__.PKCS5_pbe_set_ex = private unnamed_addr constant [17 x i8] c"PKCS5_pbe_set_ex\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@PBEPARAM_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @PBEPARAM_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @PBEPARAM_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.PBEPARAM_st* @d2i_PBEPARAM(%struct.PBEPARAM_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PBEPARAM_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @PBEPARAM_it.local_it) #5
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.PBEPARAM_st*
  ret %struct.PBEPARAM_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PBEPARAM(%struct.PBEPARAM_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PBEPARAM_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @PBEPARAM_it.local_it) #5
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.PBEPARAM_st* @PBEPARAM_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @PBEPARAM_it.local_it) #5
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.PBEPARAM_st*
  ret %struct.PBEPARAM_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @PBEPARAM_free(%struct.PBEPARAM_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.PBEPARAM_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @PBEPARAM_it.local_it) #5
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS5_pbe_set0_algor_ex(%struct.X509_algor_st* noundef %algor, i32 noundef %alg, i32 noundef %iter, i8* noundef %salt, i32 noundef %saltlen, %struct.ossl_lib_ctx_st* noundef %ctx) local_unnamed_addr #1 {
entry:
  %pbe_str = alloca %struct.asn1_string_st*, align 8
  %0 = bitcast %struct.asn1_string_st** %pbe_str to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %pbe_str, align 8, !tbaa !4
  %call = tail call %struct.PBEPARAM_st* @PBEPARAM_new() #7
  %cmp = icmp eq %struct.PBEPARAM_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.PKCS5_pbe_set0_algor_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %iter, 1
  %spec.store.select = select i1 %cmp1, i32 2048, i32 %iter
  %iter4 = getelementptr inbounds %struct.PBEPARAM_st, %struct.PBEPARAM_st* %call, i64 0, i32 1
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %iter4, align 8, !tbaa !8
  %conv64 = zext i32 %spec.store.select to i64
  %call5 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %1, i64 noundef %conv64) #5
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.PKCS5_pbe_set0_algor_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end7:                                          ; preds = %if.end
  %tobool8.not = icmp eq i32 %saltlen, 0
  %spec.store.select45 = select i1 %tobool8.not, i32 8, i32 %saltlen
  %cmp11 = icmp slt i32 %spec.store.select45, 0
  br i1 %cmp11, label %err, label %if.end14

if.end14:                                         ; preds = %if.end7
  %conv1565 = zext i32 %spec.store.select45 to i64
  %call16 = tail call i8* @CRYPTO_malloc(i64 noundef %conv1565, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 51) #5
  %cmp17 = icmp eq i8* %call16, null
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end14
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.PKCS5_pbe_set0_algor_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end20:                                         ; preds = %if.end14
  %tobool21.not = icmp eq i8* %salt, null
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end20
  %call24 = tail call i8* @memcpy(i8* noundef nonnull %call16, i8* noundef nonnull %salt, i64 noundef %conv1565) #5
  br label %if.end31

if.else:                                          ; preds = %if.end20
  %call26 = tail call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef nonnull %call16, i64 noundef %conv1565, i32 noundef 0) #5
  %cmp27 = icmp slt i32 %call26, 1
  br i1 %cmp27, label %err, label %if.end31

if.end31:                                         ; preds = %if.else, %if.then22
  %salt32 = getelementptr inbounds %struct.PBEPARAM_st, %struct.PBEPARAM_st* %call, i64 0, i32 0
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %salt32, align 8, !tbaa !10
  tail call void @ASN1_STRING_set0(%struct.asn1_string_st* noundef %2, i8* noundef nonnull %call16, i32 noundef %spec.store.select45) #5
  %3 = bitcast %struct.PBEPARAM_st* %call to i8*
  %call34 = call %struct.asn1_string_st* @ASN1_item_pack(i8* noundef nonnull %3, %struct.ASN1_ITEM_st* noundef nonnull @PBEPARAM_it.local_it, %struct.asn1_string_st** noundef nonnull %pbe_str) #5
  %tobool35.not = icmp eq %struct.asn1_string_st* %call34, null
  br i1 %tobool35.not, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end31
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.PKCS5_pbe_set0_algor_ex, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end37:                                         ; preds = %if.end31
  call void @PBEPARAM_free(%struct.PBEPARAM_st* noundef nonnull %call) #7
  %call38 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %alg) #5
  %4 = bitcast %struct.asn1_string_st** %pbe_str to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !4
  %call39 = call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %algor, %struct.asn1_object_st* noundef %call38, i32 noundef 16, i8* noundef %5) #5
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %cleanup

err:                                              ; preds = %if.end37, %if.else, %if.end7, %if.then36, %if.then19, %if.then6, %if.then
  %pbe.0 = phi %struct.PBEPARAM_st* [ null, %if.then ], [ %call, %if.end7 ], [ %call, %if.then19 ], [ null, %if.end37 ], [ %call, %if.then36 ], [ %call, %if.else ], [ %call, %if.then6 ]
  %sstr.0 = phi i8* [ null, %if.then ], [ null, %if.end7 ], [ null, %if.then19 ], [ null, %if.end37 ], [ null, %if.then36 ], [ %call16, %if.else ], [ null, %if.then6 ]
  call void @CRYPTO_free(i8* noundef %sstr.0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 76) #5
  call void @PBEPARAM_free(%struct.PBEPARAM_st* noundef %pbe.0) #7
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %pbe_str, align 8, !tbaa !4
  call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %6) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end37 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @ASN1_STRING_set0(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_item_pack(i8* noundef, %struct.ASN1_ITEM_st* noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #2

declare i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ASN1_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS5_pbe_set0_algor(%struct.X509_algor_st* noundef %algor, i32 noundef %alg, i32 noundef %iter, i8* noundef %salt, i32 noundef %saltlen) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @PKCS5_pbe_set0_algor_ex(%struct.X509_algor_st* noundef %algor, i32 noundef %alg, i32 noundef %iter, i8* noundef %salt, i32 noundef %saltlen, %struct.ossl_lib_ctx_st* noundef null) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_algor_st* @PKCS5_pbe_set_ex(i32 noundef %alg, i32 noundef %iter, i8* noundef %salt, i32 noundef %saltlen, %struct.ossl_lib_ctx_st* noundef %ctx) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.X509_algor_st* @X509_ALGOR_new() #5
  %cmp = icmp eq %struct.X509_algor_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS5_pbe_set_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @PKCS5_pbe_set0_algor_ex(%struct.X509_algor_st* noundef nonnull %call, i32 noundef %alg, i32 noundef %iter, i8* noundef %salt, i32 noundef %saltlen, %struct.ossl_lib_ctx_st* noundef %ctx) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @X509_ALGOR_free(%struct.X509_algor_st* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end3, %if.then
  %retval.0 = phi %struct.X509_algor_st* [ null, %if.then ], [ null, %if.end3 ], [ %call, %if.end ]
  ret %struct.X509_algor_st* %retval.0
}

declare %struct.X509_algor_st* @X509_ALGOR_new() local_unnamed_addr #2

declare void @X509_ALGOR_free(%struct.X509_algor_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.X509_algor_st* @PKCS5_pbe_set(i32 noundef %alg, i32 noundef %iter, i8* noundef %salt, i32 noundef %saltlen) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.X509_algor_st* @PKCS5_pbe_set_ex(i32 noundef %alg, i32 noundef %iter, i8* noundef %salt, i32 noundef %saltlen, %struct.ossl_lib_ctx_st* noundef null) #7
  ret %struct.X509_algor_st* %call
}

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

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
!8 = !{!9, !5, i64 8}
!9 = !{!"PBEPARAM_st", !5, i64 0, !5, i64 8}
!10 = !{!9, !5, i64 0}
