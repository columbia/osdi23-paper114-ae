; ModuleID = 'crypto/asn1/tasn_utl.c'
source_filename = "crypto/asn1/tasn_utl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_VALUE_st = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.ASN1_AUX_st = type { i8*, i32, i32, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* }
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.asn1_object_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ASN1_ADB_TABLE_st = type { i64, %struct.ASN1_TEMPLATE_st }

@.str = private unnamed_addr constant [23 x i8] c"crypto/asn1/tasn_utl.c\00", align 1
@__func__.ossl_asn1_do_lock = private unnamed_addr constant [18 x i8] c"ossl_asn1_do_lock\00", align 1
@__func__.ossl_asn1_enc_save = private unnamed_addr constant [19 x i8] c"ossl_asn1_enc_save\00", align 1
@__func__.ossl_asn1_do_adb = private unnamed_addr constant [17 x i8] c"ossl_asn1_do_adb\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ossl_asn1_get_choice_selector(%struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readonly %it) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !4
  %utype = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 1
  %2 = load i64, i64* %utype, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  %3 = bitcast i8* %add.ptr to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !11
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ossl_asn1_get_choice_selector_const(%struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readonly %it) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !4
  %utype = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 1
  %2 = load i64, i64* %utype, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  %3 = bitcast i8* %add.ptr to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !11
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @ossl_asn1_set_choice_selector(%struct.ASN1_VALUE_st** nocapture noundef readonly %pval, i32 noundef %value, %struct.ASN1_ITEM_st* nocapture noundef readonly %it) local_unnamed_addr #2 {
entry:
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !4
  %utype = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 1
  %2 = load i64, i64* %utype, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  %3 = bitcast i8* %add.ptr to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !11
  store i32 %value, i32* %3, align 4, !tbaa !11
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_asn1_do_lock(%struct.ASN1_VALUE_st** nocapture noundef readonly %pval, i32 noundef %op, %struct.ASN1_ITEM_st* nocapture noundef readonly %it) local_unnamed_addr #3 {
entry:
  %ret = alloca i32, align 4
  %0 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  store i32 -1, i32* %ret, align 4, !tbaa !11
  %itype = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 0
  %1 = load i8, i8* %itype, align 8, !tbaa !13
  switch i8 %1, label %cleanup [
    i8 1, label %if.end
    i8 6, label %if.end
  ]

if.end:                                           ; preds = %entry, %entry
  %funcs = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 4
  %2 = bitcast i8** %funcs to %struct.ASN1_AUX_st**
  %3 = load %struct.ASN1_AUX_st*, %struct.ASN1_AUX_st** %2, align 8, !tbaa !14
  %cmp6 = icmp eq %struct.ASN1_AUX_st* %3, null
  br i1 %cmp6, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %3, i64 0, i32 1
  %4 = load i32, i32* %flags, align 8, !tbaa !15
  %and = and i32 %4, 1
  %cmp8 = icmp eq i32 %and, 0
  br i1 %cmp8, label %cleanup, label %if.end11

if.end11:                                         ; preds = %lor.lhs.false
  %5 = bitcast %struct.ASN1_VALUE_st** %pval to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !4
  %ref_offset = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %3, i64 0, i32 2
  %7 = load i32, i32* %ref_offset, align 4, !tbaa !17
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %8 = bitcast i8* %add.ptr to i32*
  %ref_lock = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %3, i64 0, i32 3
  %9 = load i32, i32* %ref_lock, align 8, !tbaa !18
  %idx.ext12 = sext i32 %9 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %6, i64 %idx.ext12
  %10 = bitcast i8* %add.ptr13 to i8**
  switch i32 %op, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
    i32 -1, label %sw.bb22
  ]

sw.bb:                                            ; preds = %if.end11
  store i32 1, i32* %ret, align 4, !tbaa !11
  store atomic i32 1, i32* %8 seq_cst, align 4, !tbaa !19
  %call = tail call i8* @CRYPTO_THREAD_lock_new() #8
  store i8* %call, i8** %10, align 8, !tbaa !4
  %cmp14 = icmp eq i8* %call, null
  br i1 %cmp14, label %if.then16, label %sw.epilog

if.then16:                                        ; preds = %sw.bb
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.ossl_asn1_do_lock, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

sw.bb18:                                          ; preds = %if.end11
  call fastcc void @CRYPTO_UP_REF(i32* noundef %8, i32* noundef nonnull %ret) #9
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end11
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef %8, i32* noundef nonnull %ret) #9
  %11 = load i32, i32* %ret, align 4, !tbaa !11
  %cmp27 = icmp eq i32 %11, 0
  br i1 %cmp27, label %if.then29, label %sw.epilog

if.then29:                                        ; preds = %sw.bb22
  %12 = load i8*, i8** %10, align 8, !tbaa !4
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %12) #8
  store i8* null, i8** %10, align 8, !tbaa !4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb22, %if.then29, %sw.bb, %if.end11
  %13 = load i32, i32* %ret, align 4, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %entry, %sw.epilog, %if.then16
  %retval.0 = phi i32 [ %13, %sw.epilog ], [ -1, %if.then16 ], [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #4

declare void @ERR_new() local_unnamed_addr #4

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #5 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #5 {
entry:
  %0 = atomicrmw sub i32* %val, i32 1 monotonic, align 4
  %sub = add nsw i32 %0, -1
  store i32 %sub, i32* %ret, align 4, !tbaa !11
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  fence acquire
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @ossl_asn1_enc_init(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* nocapture noundef readonly %it) local_unnamed_addr #2 {
entry:
  %call = tail call fastcc %struct.ASN1_ENCODING_st* @asn1_get_enc_ptr(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef %it) #9
  %cmp.not = icmp eq %struct.ASN1_ENCODING_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %enc1 = getelementptr inbounds %struct.ASN1_ENCODING_st, %struct.ASN1_ENCODING_st* %call, i64 0, i32 0
  store i8* null, i8** %enc1, align 8, !tbaa !20
  %len = getelementptr inbounds %struct.ASN1_ENCODING_st, %struct.ASN1_ENCODING_st* %call, i64 0, i32 1
  store i64 0, i64* %len, align 8, !tbaa !22
  %modified = getelementptr inbounds %struct.ASN1_ENCODING_st, %struct.ASN1_ENCODING_st* %call, i64 0, i32 2
  store i32 1, i32* %modified, align 8, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ASN1_ENCODING_st* @asn1_get_enc_ptr(%struct.ASN1_VALUE_st** noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readonly %it) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ASN1_VALUE_st** %pval, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ASN1_VALUE_st* %0, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %funcs = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 4
  %1 = bitcast i8** %funcs to %struct.ASN1_AUX_st**
  %2 = load %struct.ASN1_AUX_st*, %struct.ASN1_AUX_st** %1, align 8, !tbaa !14
  %cmp2 = icmp eq %struct.ASN1_AUX_st* %2, null
  br i1 %cmp2, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %if.end
  %flags = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %2, i64 0, i32 1
  %3 = load i32, i32* %flags, align 8, !tbaa !15
  %and = and i32 %3, 2
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %lor.lhs.false3
  %4 = bitcast %struct.ASN1_VALUE_st* %0 to i8*
  %enc_offset = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %2, i64 0, i32 5
  %5 = load i32, i32* %enc_offset, align 8, !tbaa !24
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %6 = bitcast i8* %add.ptr to %struct.ASN1_ENCODING_st*
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false3, %entry, %lor.lhs.false, %if.end6
  %retval.0 = phi %struct.ASN1_ENCODING_st* [ %6, %if.end6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %lor.lhs.false3 ], [ null, %if.end ]
  ret %struct.ASN1_ENCODING_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_asn1_enc_free(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* nocapture noundef readonly %it) local_unnamed_addr #3 {
entry:
  %call = tail call fastcc %struct.ASN1_ENCODING_st* @asn1_get_enc_ptr(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef %it) #9
  %cmp.not = icmp eq %struct.ASN1_ENCODING_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %enc1 = getelementptr inbounds %struct.ASN1_ENCODING_st, %struct.ASN1_ENCODING_st* %call, i64 0, i32 0
  %0 = load i8*, i8** %enc1, align 8, !tbaa !20
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 153) #8
  store i8* null, i8** %enc1, align 8, !tbaa !20
  %len = getelementptr inbounds %struct.ASN1_ENCODING_st, %struct.ASN1_ENCODING_st* %call, i64 0, i32 1
  store i64 0, i64* %len, align 8, !tbaa !22
  %modified = getelementptr inbounds %struct.ASN1_ENCODING_st, %struct.ASN1_ENCODING_st* %call, i64 0, i32 2
  store i32 1, i32* %modified, align 8, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_asn1_enc_save(%struct.ASN1_VALUE_st** noundef %pval, i8* noundef %in, i32 noundef %inlen, %struct.ASN1_ITEM_st* nocapture noundef readonly %it) local_unnamed_addr #3 {
entry:
  %call = tail call fastcc %struct.ASN1_ENCODING_st* @asn1_get_enc_ptr(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef %it) #9
  %cmp = icmp eq %struct.ASN1_ENCODING_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %enc1 = getelementptr inbounds %struct.ASN1_ENCODING_st, %struct.ASN1_ENCODING_st* %call, i64 0, i32 0
  %0 = load i8*, i8** %enc1, align 8, !tbaa !20
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 168) #8
  %cmp2 = icmp slt i32 %inlen, 1
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %conv24 = zext i32 %inlen to i64
  %call5 = tail call i8* @CRYPTO_malloc(i64 noundef %conv24, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 171) #8
  store i8* %call5, i8** %enc1, align 8, !tbaa !20
  %cmp7 = icmp eq i8* %call5, null
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end4
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 172, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ossl_asn1_enc_save, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %call13 = tail call i8* @memcpy(i8* noundef nonnull %call5, i8* noundef %in, i64 noundef %conv24) #8
  %len = getelementptr inbounds %struct.ASN1_ENCODING_st, %struct.ASN1_ENCODING_st* %call, i64 0, i32 1
  store i64 %conv24, i64* %len, align 8, !tbaa !22
  %modified = getelementptr inbounds %struct.ASN1_ENCODING_st, %struct.ASN1_ENCODING_st* %call, i64 0, i32 2
  store i32 0, i32* %modified, align 8, !tbaa !23
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end10, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 1, %if.end10 ], [ 1, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_asn1_enc_restore(i32* noundef writeonly %len, i8** noundef %out, %struct.ASN1_VALUE_st** noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readonly %it) local_unnamed_addr #3 {
entry:
  %call = tail call fastcc %struct.ASN1_ENCODING_st* @asn1_get_const_enc_ptr(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef %it) #9
  %cmp = icmp eq %struct.ASN1_ENCODING_st* %call, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %modified = getelementptr inbounds %struct.ASN1_ENCODING_st, %struct.ASN1_ENCODING_st* %call, i64 0, i32 2
  %0 = load i32, i32* %modified, align 8, !tbaa !23
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool1.not = icmp eq i8** %out, null
  br i1 %tobool1.not, label %if.end7, label %if.then2

if.then2:                                         ; preds = %if.end
  %1 = load i8*, i8** %out, align 8, !tbaa !4
  %enc3 = getelementptr inbounds %struct.ASN1_ENCODING_st, %struct.ASN1_ENCODING_st* %call, i64 0, i32 0
  %2 = load i8*, i8** %enc3, align 8, !tbaa !20
  %len4 = getelementptr inbounds %struct.ASN1_ENCODING_st, %struct.ASN1_ENCODING_st* %call, i64 0, i32 1
  %3 = load i64, i64* %len4, align 8, !tbaa !22
  %call5 = tail call i8* @memcpy(i8* noundef %1, i8* noundef %2, i64 noundef %3) #8
  %4 = load i64, i64* %len4, align 8, !tbaa !22
  %5 = load i8*, i8** %out, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %4
  store i8* %add.ptr, i8** %out, align 8, !tbaa !4
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end
  %cmp8.not = icmp eq i32* %len, null
  br i1 %cmp8.not, label %cleanup, label %if.then9

if.then9:                                         ; preds = %if.end7
  %len10 = getelementptr inbounds %struct.ASN1_ENCODING_st, %struct.ASN1_ENCODING_st* %call, i64 0, i32 1
  %6 = load i64, i64* %len10, align 8, !tbaa !22
  %conv = trunc i64 %6 to i32
  store i32 %conv, i32* %len, align 4, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then9, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %if.then9 ], [ 1, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ASN1_ENCODING_st* @asn1_get_const_enc_ptr(%struct.ASN1_VALUE_st** noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readonly %it) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ASN1_VALUE_st** %pval, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ASN1_VALUE_st* %0, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %funcs = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 4
  %1 = bitcast i8** %funcs to %struct.ASN1_AUX_st**
  %2 = load %struct.ASN1_AUX_st*, %struct.ASN1_AUX_st** %1, align 8, !tbaa !14
  %cmp2 = icmp eq %struct.ASN1_AUX_st* %2, null
  br i1 %cmp2, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %if.end
  %flags = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %2, i64 0, i32 1
  %3 = load i32, i32* %flags, align 8, !tbaa !15
  %and = and i32 %3, 2
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %lor.lhs.false3
  %4 = bitcast %struct.ASN1_VALUE_st* %0 to i8*
  %enc_offset = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %2, i64 0, i32 5
  %5 = load i32, i32* %enc_offset, align 8, !tbaa !24
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %6 = bitcast i8* %add.ptr to %struct.ASN1_ENCODING_st*
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false3, %entry, %lor.lhs.false, %if.end6
  %retval.0 = phi %struct.ASN1_ENCODING_st* [ %6, %if.end6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %lor.lhs.false3 ], [ null, %if.end ]
  ret %struct.ASN1_ENCODING_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ASN1_VALUE_st** @ossl_asn1_get_field_ptr(%struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_TEMPLATE_st* nocapture noundef readonly %tt) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !4
  %offset = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 2
  %2 = load i64, i64* %offset, align 8, !tbaa !25
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  %3 = bitcast i8* %add.ptr to %struct.ASN1_VALUE_st**
  ret %struct.ASN1_VALUE_st** %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ASN1_VALUE_st** @ossl_asn1_get_const_field_ptr(%struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_TEMPLATE_st* nocapture noundef readonly %tt) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !4
  %offset = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 2
  %2 = load i64, i64* %offset, align 8, !tbaa !25
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  %3 = bitcast i8* %add.ptr to %struct.ASN1_VALUE_st**
  ret %struct.ASN1_VALUE_st** %3
}

; Function Attrs: noinline nounwind uwtable
define %struct.ASN1_TEMPLATE_st* @ossl_asn1_do_adb(%struct.ASN1_VALUE_st* nocapture noundef readonly %val, %struct.ASN1_TEMPLATE_st* noundef readonly %tt, i32 noundef %nullerr) local_unnamed_addr #3 {
entry:
  %selector = alloca i64, align 8
  %0 = bitcast i64* %selector to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %flags = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 0
  %1 = load i64, i64* %flags, align 8, !tbaa !27
  %and = and i64 %1, 768
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %item = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 4
  %2 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %item, align 8, !tbaa !28
  %call = tail call %struct.ASN1_ITEM_st* %2() #8
  %3 = bitcast %struct.ASN1_VALUE_st* %val to i8*
  %4 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %call, i64 0, i32 1
  %5 = load i64, i64* %4, align 8, !tbaa !29
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %5
  %6 = bitcast i8* %add.ptr to %struct.ASN1_VALUE_st**
  %7 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %6, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ASN1_VALUE_st* %7, null
  br i1 %cmp1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %null_tt = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %call, i64 0, i32 6
  %8 = bitcast i8** %null_tt to %struct.ASN1_TEMPLATE_st**
  %9 = load %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st** %8, align 8, !tbaa !31
  %cmp3 = icmp eq %struct.ASN1_TEMPLATE_st* %9, null
  br i1 %cmp3, label %err, label %cleanup

if.end7:                                          ; preds = %if.end
  %10 = load i64, i64* %flags, align 8, !tbaa !27
  %and9 = and i64 %10, 256
  %cmp10.not = icmp eq i64 %and9, 0
  br i1 %cmp10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end7
  %11 = bitcast %struct.ASN1_VALUE_st* %7 to %struct.asn1_object_st*
  %call12 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef nonnull %11) #8
  %conv = sext i32 %call12 to i64
  br label %if.end14

if.else:                                          ; preds = %if.end7
  %12 = bitcast %struct.ASN1_VALUE_st* %7 to %struct.asn1_string_st*
  %call13 = tail call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef nonnull %12) #8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then11
  %storemerge = phi i64 [ %call13, %if.else ], [ %conv, %if.then11 ]
  store i64 %storemerge, i64* %selector, align 8, !tbaa !32
  %adb_cb = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %call, i64 0, i32 2
  %13 = bitcast %struct.ASN1_TEMPLATE_st** %adb_cb to i32 (i64*)**
  %14 = load i32 (i64*)*, i32 (i64*)** %13, align 8, !tbaa !33
  %cmp15.not = icmp eq i32 (i64*)* %14, null
  br i1 %cmp15.not, label %if.end22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end14
  %call18 = call i32 %14(i64* noundef nonnull %selector) #8
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %land.lhs.true
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 259, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_asn1_do_adb, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 164, i8* noundef null) #8
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true, %if.end14
  %tblcount = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %call, i64 0, i32 4
  %15 = bitcast i8** %tblcount to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !34
  %cmp2465 = icmp sgt i64 %16, 0
  br i1 %cmp2465, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end22
  %tbl = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %call, i64 0, i32 3
  %17 = bitcast i64* %tbl to %struct.ASN1_ADB_TABLE_st**
  %18 = load %struct.ASN1_ADB_TABLE_st*, %struct.ASN1_ADB_TABLE_st** %17, align 8, !tbaa !35
  %19 = load i64, i64* %selector, align 8, !tbaa !32
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %atbl.066 = phi %struct.ASN1_ADB_TABLE_st* [ %18, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %value = getelementptr inbounds %struct.ASN1_ADB_TABLE_st, %struct.ASN1_ADB_TABLE_st* %atbl.066, i64 0, i32 0
  %20 = load i64, i64* %value, align 8, !tbaa !36
  %cmp26 = icmp eq i64 %20, %19
  br i1 %cmp26, label %if.then28, label %for.inc

if.then28:                                        ; preds = %for.body
  %tt29 = getelementptr inbounds %struct.ASN1_ADB_TABLE_st, %struct.ASN1_ADB_TABLE_st* %atbl.066, i64 0, i32 1
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %incdec.ptr = getelementptr inbounds %struct.ASN1_ADB_TABLE_st, %struct.ASN1_ADB_TABLE_st* %atbl.066, i64 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %16
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !38

for.end:                                          ; preds = %for.inc, %if.end22
  %default_tt = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %call, i64 0, i32 5
  %21 = bitcast i64* %default_tt to %struct.ASN1_TEMPLATE_st**
  %22 = load %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st** %21, align 8, !tbaa !40
  %tobool.not = icmp eq %struct.ASN1_TEMPLATE_st* %22, null
  br i1 %tobool.not, label %err, label %cleanup

err:                                              ; preds = %for.end, %if.then2
  %tobool34.not = icmp eq i32 %nullerr, 0
  br i1 %tobool34.not, label %cleanup, label %if.then35

if.then35:                                        ; preds = %err
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 284, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_asn1_do_adb, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 164, i8* noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then35, %for.end, %if.then2, %entry, %if.then28, %if.then21
  %retval.0 = phi %struct.ASN1_TEMPLATE_st* [ null, %if.then21 ], [ %tt29, %if.then28 ], [ %tt, %entry ], [ %9, %if.then2 ], [ %22, %for.end ], [ null, %if.then35 ], [ null, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.ASN1_TEMPLATE_st* %retval.0
}

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #4

declare i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }

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
!8 = !{!9, !10, i64 8}
!9 = !{!"ASN1_ITEM_st", !6, i64 0, !10, i64 8, !5, i64 16, !10, i64 24, !5, i64 32, !10, i64 40, !5, i64 48}
!10 = !{!"long", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{!9, !6, i64 0}
!14 = !{!9, !5, i64 32}
!15 = !{!16, !12, i64 8}
!16 = !{!"ASN1_AUX_st", !5, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !5, i64 24, !12, i64 32, !5, i64 40}
!17 = !{!16, !12, i64 12}
!18 = !{!16, !12, i64 16}
!19 = !{!6, !6, i64 0}
!20 = !{!21, !5, i64 0}
!21 = !{!"ASN1_ENCODING_st", !5, i64 0, !10, i64 8, !12, i64 16}
!22 = !{!21, !10, i64 8}
!23 = !{!21, !12, i64 16}
!24 = !{!16, !12, i64 32}
!25 = !{!26, !10, i64 16}
!26 = !{!"ASN1_TEMPLATE_st", !10, i64 0, !10, i64 8, !10, i64 16, !5, i64 24, !5, i64 32}
!27 = !{!26, !10, i64 0}
!28 = !{!26, !5, i64 32}
!29 = !{!30, !10, i64 8}
!30 = !{!"ASN1_ADB_st", !10, i64 0, !10, i64 8, !5, i64 16, !5, i64 24, !10, i64 32, !5, i64 40, !5, i64 48}
!31 = !{!30, !5, i64 48}
!32 = !{!10, !10, i64 0}
!33 = !{!30, !5, i64 16}
!34 = !{!30, !10, i64 32}
!35 = !{!30, !5, i64 24}
!36 = !{!37, !10, i64 0}
!37 = !{!"ASN1_ADB_TABLE_st", !10, i64 0, !26, i64 8}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!30, !5, i64 40}
