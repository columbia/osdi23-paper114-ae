; ModuleID = 'crypto/x509/v3_utf8.c'
source_filename = "crypto/x509/v3_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type opaque
%struct.v3_ext_method = type { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, {}*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* }
%struct.stack_st_CONF_VALUE = type opaque
%struct.v3_ext_ctx = type { i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_req_st*, %struct.X509_crl_st*, %struct.X509V3_CONF_METHOD_st*, i8*, %struct.evp_pkey_st* }
%struct.x509_st = type opaque
%struct.X509_req_st = type opaque
%struct.X509_crl_st = type opaque
%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.evp_pkey_st = type opaque
%struct.bio_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }

@ossl_v3_utf8_list = local_unnamed_addr constant [1 x { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* }] [{ i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 1007, i32 0, %struct.ASN1_ITEM_st* ()* @ASN1_UTF8STRING_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* bitcast (i8* (%struct.v3_ext_method*, %struct.asn1_string_st*)* @i2s_ASN1_UTF8STRING to i8* (%struct.v3_ext_method*, i8*)*), i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* bitcast (%struct.asn1_string_st* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* @s2i_ASN1_UTF8STRING to i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*), %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* null, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }], align 16
@.str = private unnamed_addr constant [22 x i8] c"crypto/x509/v3_utf8.c\00", align 1
@__func__.i2s_ASN1_UTF8STRING = private unnamed_addr constant [20 x i8] c"i2s_ASN1_UTF8STRING\00", align 1
@__func__.s2i_ASN1_UTF8STRING = private unnamed_addr constant [20 x i8] c"s2i_ASN1_UTF8STRING\00", align 1

declare %struct.ASN1_ITEM_st* @ASN1_UTF8STRING_it() #0

; Function Attrs: noinline nounwind uwtable
define i8* @i2s_ASN1_UTF8STRING(%struct.v3_ext_method* nocapture readnone %method, %struct.asn1_string_st* noundef readonly %utf8) #1 {
entry:
  %cmp = icmp eq %struct.asn1_string_st* %utf8, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %utf8, i64 0, i32 0
  %0 = load i32, i32* %length, align 8, !tbaa !4
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.i2s_ASN1_UTF8STRING, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786690, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 38) #4
  %cmp3 = icmp eq i8* %call, null
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.i2s_ASN1_UTF8STRING, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %utf8, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !11
  %2 = load i32, i32* %length, align 8, !tbaa !4
  %conv8 = sext i32 %2 to i64
  %call9 = tail call i8* @memcpy(i8* noundef nonnull %call, i8* noundef %1, i64 noundef %conv8) #4
  %3 = load i32, i32* %length, align 8, !tbaa !4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.then5 ], [ %call, %if.end6 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @s2i_ASN1_UTF8STRING(%struct.v3_ext_method* nocapture readnone %method, %struct.v3_ext_ctx* nocapture readnone %ctx, i8* noundef %str) #1 {
entry:
  %cmp = icmp eq i8* %str, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.s2i_ASN1_UTF8STRING, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 107, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.asn1_string_st* @ASN1_UTF8STRING_new() #4
  %cmp1 = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.s2i_ASN1_UTF8STRING, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i64 @strlen(i8* noundef nonnull %str) #5
  %conv = trunc i64 %call4 to i32
  %call5 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %call, i8* noundef nonnull %str, i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end3
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.s2i_ASN1_UTF8STRING, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #4
  tail call void @ASN1_UTF8STRING_free(%struct.asn1_string_st* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then6, %if.then2, %if.then
  %retval.0 = phi %struct.asn1_string_st* [ null, %if.then ], [ null, %if.then2 ], [ null, %if.then6 ], [ %call, %if.end3 ]
  ret %struct.asn1_string_st* %retval.0
}

declare void @ERR_new() local_unnamed_addr #0

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #0

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #0

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_UTF8STRING_new() local_unnamed_addr #0

declare i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

declare void @ASN1_UTF8STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #0

attributes #0 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !9, i64 8, !10, i64 16}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !9, i64 8}
!12 = !{!7, !7, i64 0}
