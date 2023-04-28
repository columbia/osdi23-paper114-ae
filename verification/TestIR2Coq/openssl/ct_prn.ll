; ModuleID = 'crypto/ct/ct_prn.c'
source_filename = "crypto/ct/ct_prn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sct_st = type { i32, i8*, i64, i8*, i64, i64, i8*, i64, i8, i8, i8*, i64, i32, i32, i32 }
%struct.bio_st = type opaque
%struct.ctlog_store_st = type opaque
%struct.ctlog_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_SCT = type opaque
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [8 x i8] c"not set\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"unknown version\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"unknown log\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"unverified\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"unknown status\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"%*sSigned Certificate Timestamp:\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"\0A%*sVersion   : \00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"unknown\0A%*s\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"v1 (0x0)\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"\0A%*sLog       : %s\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"\0A%*sLog ID    : \00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"\0A%*sTimestamp : \00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"\0A%*sExtensions: \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"\0A%*sSignature : \00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"\0A%*s            \00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"%.14s.%03dZ\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"%02X%02X\00", align 1
@reltable.SCT_validation_status_string = private unnamed_addr constant [6 x i32] [i32 trunc (i64 sub (i64 ptrtoint ([8 x i8]* @.str to i64), i64 ptrtoint ([6 x i32]* @reltable.SCT_validation_status_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([12 x i8]* @.str.2 to i64), i64 ptrtoint ([6 x i32]* @reltable.SCT_validation_status_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.5 to i64), i64 ptrtoint ([6 x i32]* @reltable.SCT_validation_status_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([8 x i8]* @.str.4 to i64), i64 ptrtoint ([6 x i32]* @reltable.SCT_validation_status_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([11 x i8]* @.str.3 to i64), i64 ptrtoint ([6 x i32]* @reltable.SCT_validation_status_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([16 x i8]* @.str.1 to i64), i64 ptrtoint ([6 x i32]* @reltable.SCT_validation_status_string to i64)) to i32)], align 4

; Function Attrs: noinline nounwind uwtable
define i8* @SCT_validation_status_string(%struct.sct_st* noundef %sct) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @SCT_get_validation_status(%struct.sct_st* noundef %sct) #5
  %0 = icmp ult i32 %call, 6
  br i1 %0, label %switch.lookup, label %return

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %call to i64
  %reltable.shift = shl i64 %1, 2
  %reltable.intrinsic = call i8* @llvm.load.relative.i64(i8* bitcast ([6 x i32]* @reltable.SCT_validation_status_string to i8*), i64 %reltable.shift)
  br label %return

return:                                           ; preds = %entry, %switch.lookup
  %retval.0 = phi i8* [ %reltable.intrinsic, %switch.lookup ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

declare i32 @SCT_get_validation_status(%struct.sct_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @SCT_print(%struct.sct_st* noundef %sct, %struct.bio_st* noundef %out, i32 noundef %indent, %struct.ctlog_store_st* noundef %log_store) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ctlog_store_st* %log_store, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %log_id = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 3
  %0 = load i8*, i8** %log_id, align 8, !tbaa !4
  %log_id_len = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 4
  %1 = load i64, i64* %log_id_len, align 8, !tbaa !10
  %call = tail call %struct.ctlog_st* @CTLOG_STORE_get0_log_by_id(%struct.ctlog_store_st* noundef nonnull %log_store, i8* noundef %0, i64 noundef %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %log.0 = phi %struct.ctlog_st* [ %call, %if.then ], [ null, %entry ]
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #5
  %add = add nsw i32 %indent, 4
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 noundef %add, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #5
  %version = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 0
  %2 = load i32, i32* %version, align 8, !tbaa !11
  %cmp3.not = icmp eq i32 %2, 0
  br i1 %cmp3.not, label %if.end10, label %if.then4

if.then4:                                         ; preds = %if.end
  %add5 = add nsw i32 %indent, 16
  %call6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 noundef %add5, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #5
  %sct8 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 1
  %3 = load i8*, i8** %sct8, align 8, !tbaa !12
  %sct_len = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 2
  %4 = load i64, i64* %sct_len, align 8, !tbaa !13
  %conv = trunc i64 %4 to i32
  %call9 = tail call i32 @BIO_hex_string(%struct.bio_st* noundef %out, i32 noundef %add5, i32 noundef 16, i8* noundef %3, i32 noundef %conv) #5
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)) #5
  %cmp12.not = icmp eq %struct.ctlog_st* %log.0, null
  br i1 %cmp12.not, label %if.end18, label %if.then14

if.then14:                                        ; preds = %if.end10
  %call16 = tail call i8* @CTLOG_get0_name(%struct.ctlog_st* noundef nonnull %log.0) #5
  %call17 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 noundef %add, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* noundef %call16) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end10
  %call20 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 noundef %add, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #5
  %add21 = add nsw i32 %indent, 16
  %log_id22 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 3
  %5 = load i8*, i8** %log_id22, align 8, !tbaa !4
  %log_id_len23 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 4
  %6 = load i64, i64* %log_id_len23, align 8, !tbaa !10
  %conv24 = trunc i64 %6 to i32
  %call25 = tail call i32 @BIO_hex_string(%struct.bio_st* noundef %out, i32 noundef %add21, i32 noundef 16, i8* noundef %5, i32 noundef %conv24) #5
  %call27 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef %add, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #5
  %timestamp = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 5
  %7 = load i64, i64* %timestamp, align 8, !tbaa !14
  tail call fastcc void @timestamp_print(i64 noundef %7, %struct.bio_st* noundef %out) #6
  %call29 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 noundef %add, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #5
  %ext_len = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 7
  %8 = load i64, i64* %ext_len, align 8, !tbaa !15
  %cmp30 = icmp eq i64 %8, 0
  br i1 %cmp30, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end18
  %call33 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #5
  br label %if.end38

if.else:                                          ; preds = %if.end18
  %ext = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 6
  %9 = load i8*, i8** %ext, align 8, !tbaa !16
  %conv36 = trunc i64 %8 to i32
  %call37 = tail call i32 @BIO_hex_string(%struct.bio_st* noundef %out, i32 noundef %add21, i32 noundef 16, i8* noundef %9, i32 noundef %conv36) #5
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then32
  %call40 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 noundef %add, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #5
  tail call fastcc void @SCT_signature_algorithms_print(%struct.sct_st* noundef nonnull %sct, %struct.bio_st* noundef %out) #6
  %call42 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 noundef %add, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #5
  %sig = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 10
  %10 = load i8*, i8** %sig, align 8, !tbaa !17
  %sig_len = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 11
  %11 = load i64, i64* %sig_len, align 8, !tbaa !18
  %conv44 = trunc i64 %11 to i32
  %call45 = tail call i32 @BIO_hex_string(%struct.bio_st* noundef %out, i32 noundef %add21, i32 noundef 16, i8* noundef %10, i32 noundef %conv44) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.ctlog_st* @CTLOG_STORE_get0_log_by_id(%struct.ctlog_store_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @BIO_hex_string(%struct.bio_st* noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CTLOG_get0_name(%struct.ctlog_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @timestamp_print(i64 noundef %timestamp, %struct.bio_st* noundef %out) unnamed_addr #0 {
entry:
  %genstr = alloca [20 x i8], align 16
  %call = tail call %struct.asn1_string_st* @ASN1_GENERALIZEDTIME_new() #5
  %0 = getelementptr inbounds [20 x i8], [20 x i8]* %genstr, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #7
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %div = udiv i64 %timestamp, 86400000
  %conv = trunc i64 %div to i32
  %rem = urem i64 %timestamp, 86400000
  %div1.lhs.trunc = trunc i64 %rem to i32
  %div121 = udiv i32 %div1.lhs.trunc, 1000
  %div1.zext = zext i32 %div121 to i64
  %call2 = tail call %struct.asn1_string_st* @ASN1_GENERALIZEDTIME_adj(%struct.asn1_string_st* noundef nonnull %call, i64 noundef 0, i32 noundef %conv, i64 noundef %div1.zext) #5
  %call3 = tail call i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef nonnull %call) #5
  %rem4 = urem i64 %timestamp, 1000
  %conv5 = trunc i64 %rem4 to i32
  %call6 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 20, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* noundef %call3, i32 noundef %conv5) #5
  %call8 = call i32 @ASN1_GENERALIZEDTIME_set_string(%struct.asn1_string_st* noundef nonnull %call, i8* noundef nonnull %0) #5
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end
  %call10 = call i32 @ASN1_GENERALIZEDTIME_print(%struct.bio_st* noundef %out, %struct.asn1_string_st* noundef nonnull %call) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end
  call void @ASN1_GENERALIZEDTIME_free(%struct.asn1_string_st* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end11
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @SCT_signature_algorithms_print(%struct.sct_st* noundef %sct, %struct.bio_st* noundef %out) unnamed_addr #0 {
entry:
  %call = tail call i32 @SCT_get_signature_nid(%struct.sct_st* noundef %sct) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %hash_alg = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 8
  %0 = load i8, i8* %hash_alg, align 8, !tbaa !19
  %conv = zext i8 %0 to i32
  %sig_alg = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 9
  %1 = load i8, i8* %sig_alg, align 1, !tbaa !20
  %conv1 = zext i8 %1 to i32
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv, i32 noundef %conv1) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = tail call i8* @OBJ_nid2ln(i32 noundef %call) #5
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* noundef %call3) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define void @SCT_LIST_print(%struct.stack_st_SCT* noundef %sct_list, %struct.bio_st* noundef %out, i32 noundef %indent, i8* noundef %separator, %struct.ctlog_store_st* noundef %log_store) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_SCT_sk_type(%struct.stack_st_SCT* noundef %sct_list) #6
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %cmp17 = icmp sgt i32 %call1, 0
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %if.end
  %i.018 = phi i32 [ %inc, %if.end ], [ 0, %entry ]
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.018) #5
  %0 = bitcast i8* %call3 to %struct.sct_st*
  tail call void @SCT_print(%struct.sct_st* noundef %0, %struct.bio_st* noundef %out, i32 noundef %indent, %struct.ctlog_store_st* noundef %log_store) #6
  %call5 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %sub = add nsw i32 %call5, -1
  %cmp6 = icmp slt i32 %i.018, %sub
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call7 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* noundef %separator) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !21

for.end:                                          ; preds = %if.end, %entry
  ret void
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SCT_sk_type(%struct.stack_st_SCT* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_SCT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_GENERALIZEDTIME_new() local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_GENERALIZEDTIME_adj(%struct.asn1_string_st* noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i32 @ASN1_GENERALIZEDTIME_set_string(%struct.asn1_string_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @ASN1_GENERALIZEDTIME_print(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

declare void @ASN1_GENERALIZEDTIME_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i32 @SCT_get_signature_nid(%struct.sct_st* noundef) local_unnamed_addr #1

declare i8* @OBJ_nid2ln(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind readonly willreturn
declare i8* @llvm.load.relative.i64(i8*, i64) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nosync nounwind readonly willreturn }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !8, i64 24}
!5 = !{!"sct_st", !6, i64 0, !8, i64 8, !9, i64 16, !8, i64 24, !9, i64 32, !9, i64 40, !8, i64 48, !9, i64 56, !6, i64 64, !6, i64 65, !8, i64 72, !9, i64 80, !6, i64 88, !6, i64 92, !6, i64 96}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"any pointer", !6, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!5, !9, i64 32}
!11 = !{!5, !6, i64 0}
!12 = !{!5, !8, i64 8}
!13 = !{!5, !9, i64 16}
!14 = !{!5, !9, i64 40}
!15 = !{!5, !9, i64 56}
!16 = !{!5, !8, i64 48}
!17 = !{!5, !8, i64 72}
!18 = !{!5, !9, i64 80}
!19 = !{!5, !6, i64 64}
!20 = !{!5, !6, i64 65}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
