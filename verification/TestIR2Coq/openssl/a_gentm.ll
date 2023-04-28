; ModuleID = 'crypto/asn1/a_gentm.c'
source_filename = "crypto/asn1/a_gentm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.bio_st = type opaque

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_GENERALIZEDTIME_dup(%struct.asn1_string_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @ASN1_GENERALIZEDTIME_it() #4
  %0 = bitcast %struct.asn1_string_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef %call, i8* noundef %0) #4
  %1 = bitcast i8* %call1 to %struct.asn1_string_st*
  ret %struct.asn1_string_st* %1
}

declare i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @ASN1_GENERALIZEDTIME_it() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_GENERALIZEDTIME_check(%struct.asn1_string_st* noundef %d) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @asn1_generalizedtime_to_tm(%struct.asn1_string_st* noundef %d) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_generalizedtime_to_tm(%struct.asn1_string_st* noundef %d) unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %d, i64 0, i32 1
  %0 = load i32, i32* %type, align 4, !tbaa !4
  %cmp.not = icmp eq i32 %0, 24
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @ossl_asn1_time_to_tm(%struct.tm* noundef null, %struct.asn1_string_st* noundef nonnull %d) #4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_GENERALIZEDTIME_set_string(%struct.asn1_string_st* noundef %s, i8* noundef %str) local_unnamed_addr #0 {
entry:
  %t = alloca %struct.asn1_string_st, align 8
  %0 = bitcast %struct.asn1_string_st* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #6
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %t, i64 0, i32 1
  store i32 24, i32* %type, align 4, !tbaa !4
  %call = tail call i64 @strlen(i8* noundef %str) #7
  %conv = trunc i64 %call to i32
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %t, i64 0, i32 0
  store i32 %conv, i32* %length, align 8, !tbaa !11
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %t, i64 0, i32 2
  store i8* %str, i8** %data, align 8, !tbaa !12
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %t, i64 0, i32 3
  store i64 0, i64* %flags, align 8, !tbaa !13
  %call1 = call i32 @ASN1_GENERALIZEDTIME_check(%struct.asn1_string_st* noundef nonnull %t) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq %struct.asn1_string_st* %s, null
  br i1 %cmp.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call3 = call i32 @ASN1_STRING_copy(%struct.asn1_string_st* noundef nonnull %s, %struct.asn1_string_st* noundef nonnull %t) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.end
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %entry, %if.end6
  %retval.0 = phi i32 [ 1, %if.end6 ], [ 0, %entry ], [ 0, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

declare i32 @ASN1_STRING_copy(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_GENERALIZEDTIME_set(%struct.asn1_string_st* noundef %s, i64 noundef %t) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_GENERALIZEDTIME_adj(%struct.asn1_string_st* noundef %s, i64 noundef %t, i32 noundef 0, i64 noundef 0) #5
  ret %struct.asn1_string_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_GENERALIZEDTIME_adj(%struct.asn1_string_st* noundef %s, i64 noundef %t, i32 noundef %offset_day, i64 noundef %offset_sec) local_unnamed_addr #0 {
entry:
  %t.addr = alloca i64, align 8
  %data = alloca %struct.tm, align 8
  store i64 %t, i64* %t.addr, align 8, !tbaa !14
  %0 = bitcast %struct.tm* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #6
  %call = call %struct.tm* @OPENSSL_gmtime(i64* noundef nonnull %t.addr, %struct.tm* noundef nonnull %data) #4
  %cmp = icmp eq %struct.tm* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool = icmp ne i32 %offset_day, 0
  %tobool1 = icmp ne i64 %offset_sec, 0
  %or.cond = or i1 %tobool, %tobool1
  br i1 %or.cond, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @OPENSSL_gmtime_adj(%struct.tm* noundef nonnull %call, i32 noundef %offset_day, i64 noundef %offset_sec) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end
  %call8 = call %struct.asn1_string_st* @ossl_asn1_time_from_tm(%struct.asn1_string_st* noundef %s, %struct.tm* noundef nonnull %call, i32 noundef 24) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry, %if.end7
  %retval.0 = phi %struct.asn1_string_st* [ %call8, %if.end7 ], [ null, %entry ], [ null, %if.then2 ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #6
  ret %struct.asn1_string_st* %retval.0
}

declare %struct.tm* @OPENSSL_gmtime(i64* noundef, %struct.tm* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_gmtime_adj(%struct.tm* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @ossl_asn1_time_from_tm(%struct.asn1_string_st* noundef, %struct.tm* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_GENERALIZEDTIME_print(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %tm) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %tm, i64 0, i32 1
  %0 = load i32, i32* %type, align 4, !tbaa !4
  %cmp.not = icmp eq i32 %0, 24
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @ASN1_TIME_print(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef nonnull %tm) #4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @ASN1_TIME_print(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i32 @ossl_asn1_time_to_tm(%struct.tm* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 4}
!5 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !9, i64 8, !10, i64 16}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !6, i64 0}
!12 = !{!5, !9, i64 8}
!13 = !{!5, !10, i64 16}
!14 = !{!10, !10, i64 0}
