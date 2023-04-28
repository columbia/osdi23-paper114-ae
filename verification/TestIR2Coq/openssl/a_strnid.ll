; ModuleID = 'crypto/asn1/a_strnid.c'
source_filename = "crypto/asn1/a_strnid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_st_ASN1_STRING_TABLE = type opaque
%struct.asn1_string_table_st = type { i32, i64, i64, i64, i64 }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ossl_init_settings_st = type opaque
%struct.stack_st = type opaque

@global_mask = internal unnamed_addr global i64 8192, align 8
@.str = private unnamed_addr constant [6 x i8] c"MASK:\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"nombstr\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pkix\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"utf8only\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@stable = internal unnamed_addr global %struct.stack_st_ASN1_STRING_TABLE* null, align 8
@tbl_standard = internal constant [28 x %struct.asn1_string_table_st] [%struct.asn1_string_table_st { i32 13, i64 1, i64 64, i64 10246, i64 0 }, %struct.asn1_string_table_st { i32 14, i64 2, i64 2, i64 2, i64 2 }, %struct.asn1_string_table_st { i32 15, i64 1, i64 128, i64 10246, i64 0 }, %struct.asn1_string_table_st { i32 16, i64 1, i64 128, i64 10246, i64 0 }, %struct.asn1_string_table_st { i32 17, i64 1, i64 64, i64 10246, i64 0 }, %struct.asn1_string_table_st { i32 18, i64 1, i64 64, i64 10246, i64 0 }, %struct.asn1_string_table_st { i32 48, i64 1, i64 128, i64 16, i64 2 }, %struct.asn1_string_table_st { i32 49, i64 1, i64 -1, i64 10262, i64 0 }, %struct.asn1_string_table_st { i32 54, i64 1, i64 -1, i64 10262, i64 0 }, %struct.asn1_string_table_st { i32 55, i64 1, i64 -1, i64 10246, i64 0 }, %struct.asn1_string_table_st { i32 99, i64 1, i64 32768, i64 10246, i64 0 }, %struct.asn1_string_table_st { i32 100, i64 1, i64 32768, i64 10246, i64 0 }, %struct.asn1_string_table_st { i32 101, i64 1, i64 32768, i64 10246, i64 0 }, %struct.asn1_string_table_st { i32 105, i64 1, i64 64, i64 2, i64 2 }, %struct.asn1_string_table_st { i32 156, i64 -1, i64 -1, i64 2048, i64 2 }, %struct.asn1_string_table_st { i32 173, i64 1, i64 32768, i64 10246, i64 0 }, %struct.asn1_string_table_st { i32 174, i64 -1, i64 -1, i64 2, i64 2 }, %struct.asn1_string_table_st { i32 391, i64 1, i64 -1, i64 16, i64 2 }, %struct.asn1_string_table_st { i32 417, i64 -1, i64 -1, i64 2048, i64 2 }, %struct.asn1_string_table_st { i32 460, i64 1, i64 256, i64 16, i64 2 }, %struct.asn1_string_table_st { i32 957, i64 2, i64 2, i64 2, i64 2 }, %struct.asn1_string_table_st { i32 1004, i64 1, i64 12, i64 1, i64 2 }, %struct.asn1_string_table_st { i32 1005, i64 1, i64 13, i64 1, i64 2 }, %struct.asn1_string_table_st { i32 1006, i64 1, i64 11, i64 1, i64 2 }, %struct.asn1_string_table_st { i32 1090, i64 3, i64 3, i64 2, i64 2 }, %struct.asn1_string_table_st { i32 1091, i64 3, i64 3, i64 1, i64 2 }, %struct.asn1_string_table_st { i32 1092, i64 0, i64 -1, i64 8192, i64 2 }, %struct.asn1_string_table_st { i32 1208, i64 1, i64 128, i64 8192, i64 2 }], align 16
@.str.5 = private unnamed_addr constant [23 x i8] c"crypto/asn1/a_strnid.c\00", align 1
@__func__.ASN1_STRING_TABLE_add = private unnamed_addr constant [22 x i8] c"ASN1_STRING_TABLE_add\00", align 1
@__func__.stable_get = private unnamed_addr constant [11 x i8] c"stable_get\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @ASN1_STRING_set_default_mask(i64 noundef %mask) local_unnamed_addr #0 {
entry:
  store i64 %mask, i64* @global_mask, align 8, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @ASN1_STRING_get_default_mask() local_unnamed_addr #1 {
entry:
  %0 = load i64, i64* @global_mask, align 8, !tbaa !4
  ret i64 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_STRING_set_default_mask_asc(i8* noundef %p) local_unnamed_addr #2 {
entry:
  %end = alloca i8*, align 8
  %0 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %call = tail call i32 @strncmp(i8* noundef %p, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 noundef 5) #9
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds i8, i8* %p, i64 5
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %cmp1 = icmp eq i8 %1, 0
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %call4 = call i64 @strtoul(i8* noundef nonnull %arrayidx, i8** noundef nonnull %end, i32 noundef 0) #10
  %2 = load i8*, i8** %end, align 8, !tbaa !9
  %3 = load i8, i8* %2, align 1, !tbaa !8
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end31, label %cleanup

if.else:                                          ; preds = %entry
  %call7 = tail call i32 @strcmp(i8* noundef %p, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #9
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.end31, label %if.else11

if.else11:                                        ; preds = %if.else
  %call12 = tail call i32 @strcmp(i8* noundef %p, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.end31, label %if.else16

if.else16:                                        ; preds = %if.else11
  %call17 = tail call i32 @strcmp(i8* noundef %p, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #9
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.end31, label %if.else21

if.else21:                                        ; preds = %if.else16
  %call22 = tail call i32 @strcmp(i8* noundef %p, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #9
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.end31, label %cleanup

if.end31:                                         ; preds = %if.else21, %if.else16, %if.else11, %if.else, %if.end
  %mask.0 = phi i64 [ %call4, %if.end ], [ -10241, %if.else ], [ -5, %if.else11 ], [ 8192, %if.else16 ], [ 4294967295, %if.else21 ]
  call void @ASN1_STRING_set_default_mask(i64 noundef %mask.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else21, %if.end, %if.then, %if.end31
  %retval.0 = phi i32 [ 1, %if.end31 ], [ 0, %if.then ], [ 0, %if.end ], [ 0, %if.else21 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @strtoul(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_STRING_set_by_NID(%struct.asn1_string_st** noundef %out, i8* noundef %in, i32 noundef %inlen, i32 noundef %inform, i32 noundef %nid) local_unnamed_addr #2 {
entry:
  %str = alloca %struct.asn1_string_st*, align 8
  %0 = bitcast %struct.asn1_string_st** %str to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %str, align 8, !tbaa !9
  %cmp = icmp eq %struct.asn1_string_st** %out, null
  %spec.store.select = select i1 %cmp, %struct.asn1_string_st** %str, %struct.asn1_string_st** %out
  %call = tail call %struct.asn1_string_table_st* @ASN1_STRING_TABLE_get(i32 noundef %nid) #11
  %cmp1.not = icmp eq %struct.asn1_string_table_st* %call, null
  br i1 %cmp1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %entry
  %mask3 = getelementptr inbounds %struct.asn1_string_table_st, %struct.asn1_string_table_st* %call, i64 0, i32 3
  %1 = load i64, i64* %mask3, align 8, !tbaa !11
  %flags = getelementptr inbounds %struct.asn1_string_table_st, %struct.asn1_string_table_st* %call, i64 0, i32 4
  %2 = load i64, i64* %flags, align 8, !tbaa !14
  %and = and i64 %2, 2
  %tobool.not = icmp eq i64 %and, 0
  %3 = load i64, i64* @global_mask, align 8
  %and5 = select i1 %tobool.not, i64 %3, i64 -1
  %mask.0 = and i64 %and5, %1
  %minsize = getelementptr inbounds %struct.asn1_string_table_st, %struct.asn1_string_table_st* %call, i64 0, i32 1
  %4 = load i64, i64* %minsize, align 8, !tbaa !15
  %maxsize = getelementptr inbounds %struct.asn1_string_table_st, %struct.asn1_string_table_st* %call, i64 0, i32 2
  %5 = load i64, i64* %maxsize, align 8, !tbaa !16
  %call7 = call i32 @ASN1_mbstring_ncopy(%struct.asn1_string_st** noundef nonnull %spec.store.select, i8* noundef %in, i32 noundef %inlen, i32 noundef %inform, i64 noundef %mask.0, i64 noundef %4, i64 noundef %5) #10
  br label %if.end10

if.else:                                          ; preds = %entry
  %6 = load i64, i64* @global_mask, align 8, !tbaa !4
  %and8 = and i64 %6, 10246
  %call9 = call i32 @ASN1_mbstring_copy(%struct.asn1_string_st** noundef nonnull %spec.store.select, i8* noundef %in, i32 noundef %inlen, i32 noundef %inform, i64 noundef %and8) #10
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then2
  %ret.0 = phi i32 [ %call7, %if.then2 ], [ %call9, %if.else ]
  %cmp11 = icmp slt i32 %ret.0, 1
  br i1 %cmp11, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end10
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %spec.store.select, align 8, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end13
  %retval.0 = phi %struct.asn1_string_st* [ %7, %if.end13 ], [ null, %if.end10 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_table_st* @ASN1_STRING_TABLE_get(i32 noundef %nid) local_unnamed_addr #2 {
entry:
  %fnd = alloca %struct.asn1_string_table_st, align 8
  %0 = bitcast %struct.asn1_string_table_st* %fnd to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 64, %struct.ossl_init_settings_st* noundef null) #10
  %nid1 = getelementptr inbounds %struct.asn1_string_table_st, %struct.asn1_string_table_st* %fnd, i64 0, i32 0
  store i32 %nid, i32* %nid1, align 8, !tbaa !17
  %1 = load %struct.stack_st_ASN1_STRING_TABLE*, %struct.stack_st_ASN1_STRING_TABLE** @stable, align 8, !tbaa !9
  %tobool.not = icmp eq %struct.stack_st_ASN1_STRING_TABLE* %1, null
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_ASN1_STRING_TABLE_sk_type(%struct.stack_st_ASN1_STRING_TABLE* noundef nonnull %1) #11
  %call4 = call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %call2, i8* noundef nonnull %0) #10
  %cmp = icmp sgt i32 %call4, -1
  br i1 %cmp, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.then
  %2 = load %struct.stack_st_ASN1_STRING_TABLE*, %struct.stack_st_ASN1_STRING_TABLE** @stable, align 8, !tbaa !9
  %call6 = call fastcc %struct.stack_st* @ossl_check_const_ASN1_STRING_TABLE_sk_type(%struct.stack_st_ASN1_STRING_TABLE* noundef %2) #11
  %call7 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call6, i32 noundef %call4) #10
  %3 = bitcast i8* %call7 to %struct.asn1_string_table_st*
  br label %cleanup

if.end8:                                          ; preds = %if.then, %entry
  %call9 = call fastcc %struct.asn1_string_table_st* @OBJ_bsearch_table(%struct.asn1_string_table_st* noundef nonnull %fnd) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then5
  %retval.0 = phi %struct.asn1_string_table_st* [ %3, %if.then5 ], [ %call9, %if.end8 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8
  ret %struct.asn1_string_table_st* %retval.0
}

declare i32 @ASN1_mbstring_ncopy(%struct.asn1_string_st** noundef, i8* noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare i32 @ASN1_mbstring_copy(%struct.asn1_string_st** noundef, i8* noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

declare i32 @OPENSSL_init_crypto(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #6

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASN1_STRING_TABLE_sk_type(%struct.stack_st_ASN1_STRING_TABLE* noundef readnone %sk) unnamed_addr #7 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_STRING_TABLE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_STRING_TABLE_sk_type(%struct.stack_st_ASN1_STRING_TABLE* noundef readnone %sk) unnamed_addr #7 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_STRING_TABLE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.asn1_string_table_st* @OBJ_bsearch_table(%struct.asn1_string_table_st* noundef %key) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.asn1_string_table_st* %key to i8*
  %call = tail call i8* @OBJ_bsearch_(i8* noundef %0, i8* noundef bitcast ([28 x %struct.asn1_string_table_st]* @tbl_standard to i8*), i32 noundef 28, i32 noundef 40, i32 (i8*, i8*)* noundef nonnull @table_cmp_BSEARCH_CMP_FN) #10
  %1 = bitcast i8* %call to %struct.asn1_string_table_st*
  ret %struct.asn1_string_table_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_STRING_TABLE_add(i32 noundef %nid, i64 noundef %minsize, i64 noundef %maxsize, i64 noundef %mask, i64 noundef %flags) local_unnamed_addr #2 {
entry:
  %call = tail call fastcc %struct.asn1_string_table_st* @stable_get(i32 noundef %nid) #11
  %cmp = icmp eq %struct.asn1_string_table_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 noundef 193, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ASN1_STRING_TABLE_add, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp sgt i64 %minsize, -1
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %minsize3 = getelementptr inbounds %struct.asn1_string_table_st, %struct.asn1_string_table_st* %call, i64 0, i32 1
  store i64 %minsize, i64* %minsize3, align 8, !tbaa !15
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %cmp5 = icmp sgt i64 %maxsize, -1
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %maxsize7 = getelementptr inbounds %struct.asn1_string_table_st, %struct.asn1_string_table_st* %call, i64 0, i32 2
  store i64 %maxsize, i64* %maxsize7, align 8, !tbaa !16
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  %tobool.not = icmp eq i64 %mask, 0
  br i1 %tobool.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end8
  %mask10 = getelementptr inbounds %struct.asn1_string_table_st, %struct.asn1_string_table_st* %call, i64 0, i32 3
  store i64 %mask, i64* %mask10, align 8, !tbaa !11
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end8
  %tobool12.not = icmp eq i64 %flags, 0
  br i1 %tobool12.not, label %cleanup, label %if.then13

if.then13:                                        ; preds = %if.end11
  %or = or i64 %flags, 1
  %flags14 = getelementptr inbounds %struct.asn1_string_table_st, %struct.asn1_string_table_st* %call, i64 0, i32 4
  store i64 %or, i64* %flags14, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then13, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then13 ], [ 1, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.asn1_string_table_st* @stable_get(i32 noundef %nid) unnamed_addr #2 {
entry:
  %0 = load %struct.stack_st_ASN1_STRING_TABLE*, %struct.stack_st_ASN1_STRING_TABLE** @stable, align 8, !tbaa !9
  %cmp = icmp eq %struct.stack_st_ASN1_STRING_TABLE* %0, null
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.asn1_string_table_st**, %struct.asn1_string_table_st**)* @sk_table_cmp to i32 (i8*, i8*)*)) #10
  store %struct.stack_st* %call1, %struct.stack_st** bitcast (%struct.stack_st_ASN1_STRING_TABLE** @stable to %struct.stack_st**), align 8, !tbaa !9
  %cmp2 = icmp eq %struct.stack_st* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.then, %entry
  %call5 = tail call %struct.asn1_string_table_st* @ASN1_STRING_TABLE_get(i32 noundef %nid) #11
  %cmp6.not = icmp eq %struct.asn1_string_table_st* %call5, null
  br i1 %cmp6.not, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end4
  %flags = getelementptr inbounds %struct.asn1_string_table_st, %struct.asn1_string_table_st* %call5, i64 0, i32 4
  %1 = load i64, i64* %flags, align 8, !tbaa !14
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %land.lhs.true, %if.end4
  %call9 = tail call i8* @CRYPTO_zalloc(i64 noundef 40, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 noundef 162) #10
  %2 = bitcast i8* %call9 to %struct.asn1_string_table_st*
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.stable_get, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %3 = load %struct.stack_st_ASN1_STRING_TABLE*, %struct.stack_st_ASN1_STRING_TABLE** @stable, align 8, !tbaa !9
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_ASN1_STRING_TABLE_sk_type(%struct.stack_st_ASN1_STRING_TABLE* noundef %3) #11
  %call15 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call13, i8* noundef nonnull %call9) #10
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  tail call void @CRYPTO_free(i8* noundef nonnull %call9, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 noundef 167) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  br i1 %cmp6.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end18
  %nid21 = getelementptr inbounds %struct.asn1_string_table_st, %struct.asn1_string_table_st* %call5, i64 0, i32 0
  %4 = load i32, i32* %nid21, align 8, !tbaa !17
  %nid22 = bitcast i8* %call9 to i32*
  store i32 %4, i32* %nid22, align 8, !tbaa !17
  %minsize = getelementptr inbounds %struct.asn1_string_table_st, %struct.asn1_string_table_st* %call5, i64 0, i32 1
  %minsize23 = getelementptr inbounds i8, i8* %call9, i64 8
  %5 = bitcast i64* %minsize to <2 x i64>*
  %6 = load <2 x i64>, <2 x i64>* %5, align 8, !tbaa !4
  %7 = bitcast i8* %minsize23 to <2 x i64>*
  store <2 x i64> %6, <2 x i64>* %7, align 8, !tbaa !4
  %mask = getelementptr inbounds %struct.asn1_string_table_st, %struct.asn1_string_table_st* %call5, i64 0, i32 3
  %8 = load i64, i64* %mask, align 8, !tbaa !11
  %mask25 = getelementptr inbounds i8, i8* %call9, i64 24
  %9 = bitcast i8* %mask25 to i64*
  store i64 %8, i64* %9, align 8, !tbaa !11
  %flags26 = getelementptr inbounds %struct.asn1_string_table_st, %struct.asn1_string_table_st* %call5, i64 0, i32 4
  %10 = load i64, i64* %flags26, align 8, !tbaa !14
  %or = or i64 %10, 1
  %flags27 = getelementptr inbounds i8, i8* %call9, i64 32
  %11 = bitcast i8* %flags27 to i64*
  store i64 %or, i64* %11, align 8, !tbaa !14
  br label %cleanup

if.else:                                          ; preds = %if.end18
  %nid28 = bitcast i8* %call9 to i32*
  store i32 %nid, i32* %nid28, align 8, !tbaa !17
  %minsize29 = getelementptr inbounds i8, i8* %call9, i64 8
  %12 = bitcast i8* %minsize29 to <2 x i64>*
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %12, align 8, !tbaa !4
  %flags31 = getelementptr inbounds i8, i8* %call9, i64 32
  %13 = bitcast i8* %flags31 to i64*
  store i64 1, i64* %13, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.else, %land.lhs.true, %if.then, %if.then17, %if.then11
  %retval.0 = phi %struct.asn1_string_table_st* [ null, %if.then11 ], [ null, %if.then17 ], [ null, %if.then ], [ %call5, %land.lhs.true ], [ %2, %if.else ], [ %2, %if.then20 ]
  ret %struct.asn1_string_table_st* %retval.0
}

declare void @ERR_new() local_unnamed_addr #6

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #6

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define void @ASN1_STRING_TABLE_cleanup() local_unnamed_addr #2 {
entry:
  %0 = load %struct.stack_st_ASN1_STRING_TABLE*, %struct.stack_st_ASN1_STRING_TABLE** @stable, align 8, !tbaa !9
  %cmp = icmp eq %struct.stack_st_ASN1_STRING_TABLE* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store %struct.stack_st_ASN1_STRING_TABLE* null, %struct.stack_st_ASN1_STRING_TABLE** @stable, align 8, !tbaa !9
  %call = tail call fastcc %struct.stack_st* @ossl_check_ASN1_STRING_TABLE_sk_type(%struct.stack_st_ASN1_STRING_TABLE* noundef nonnull %0) #11
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.asn1_string_table_st*)* @st_free to void (i8*)*)) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal void @st_free(%struct.asn1_string_table_st* noundef %tbl) #2 {
entry:
  %flags = getelementptr inbounds %struct.asn1_string_table_st, %struct.asn1_string_table_st* %tbl, i64 0, i32 4
  %0 = load i64, i64* %flags, align 8, !tbaa !14
  %and = and i64 %0, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.asn1_string_table_st* %tbl to i8*
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 noundef 221) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @OBJ_bsearch_(i8* noundef, i8* noundef, i32 noundef, i32 noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @table_cmp_BSEARCH_CMP_FN(i8* nocapture noundef readonly %a_, i8* nocapture noundef readonly %b_) #1 {
entry:
  %0 = bitcast i8* %a_ to %struct.asn1_string_table_st*
  %1 = bitcast i8* %b_ to %struct.asn1_string_table_st*
  %call = tail call fastcc i32 @table_cmp(%struct.asn1_string_table_st* noundef %0, %struct.asn1_string_table_st* noundef %1) #11
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @table_cmp(%struct.asn1_string_table_st* nocapture noundef readonly %a, %struct.asn1_string_table_st* nocapture noundef readonly %b) unnamed_addr #1 {
entry:
  %nid = getelementptr inbounds %struct.asn1_string_table_st, %struct.asn1_string_table_st* %a, i64 0, i32 0
  %0 = load i32, i32* %nid, align 8, !tbaa !17
  %nid1 = getelementptr inbounds %struct.asn1_string_table_st, %struct.asn1_string_table_st* %b, i64 0, i32 0
  %1 = load i32, i32* %nid1, align 8, !tbaa !17
  %sub = sub nsw i32 %0, %1
  ret i32 %sub
}

declare %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @sk_table_cmp(%struct.asn1_string_table_st** nocapture noundef readonly %a, %struct.asn1_string_table_st** nocapture noundef readonly %b) #1 {
entry:
  %0 = load %struct.asn1_string_table_st*, %struct.asn1_string_table_st** %a, align 8, !tbaa !9
  %nid = getelementptr inbounds %struct.asn1_string_table_st, %struct.asn1_string_table_st* %0, i64 0, i32 0
  %1 = load i32, i32* %nid, align 8, !tbaa !17
  %2 = load %struct.asn1_string_table_st*, %struct.asn1_string_table_st** %b, align 8, !tbaa !9
  %nid1 = getelementptr inbounds %struct.asn1_string_table_st, %struct.asn1_string_table_st* %2, i64 0, i32 0
  %3 = load i32, i32* %nid1, align 8, !tbaa !17
  %sub = sub nsw i32 %1, %3
  ret i32 %sub
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #6

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #6

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !5, i64 24}
!12 = !{!"asn1_string_table_st", !13, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32}
!13 = !{!"int", !6, i64 0}
!14 = !{!12, !5, i64 32}
!15 = !{!12, !5, i64 8}
!16 = !{!12, !5, i64 16}
!17 = !{!12, !13, i64 0}
