; ModuleID = 'crypto/asn1/evp_asn1.c'
source_filename = "crypto/asn1/evp_asn1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.asn1_int_oct = type { i32, %struct.asn1_string_st* }
%struct.ASN1_VALUE_st = type opaque
%struct.asn1_oct_int = type { %struct.asn1_string_st*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"crypto/asn1/evp_asn1.c\00", align 1
@__func__.ASN1_TYPE_get_octetstring = private unnamed_addr constant [26 x i8] c"ASN1_TYPE_get_octetstring\00", align 1
@__func__.ASN1_TYPE_get_int_octetstring = private unnamed_addr constant [30 x i8] c"ASN1_TYPE_get_int_octetstring\00", align 1
@__func__.ossl_asn1_type_get_octetstring_int = private unnamed_addr constant [35 x i8] c"ossl_asn1_type_get_octetstring_int\00", align 1
@asn1_int_oct_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* @asn1_int_oct_seq_tt, i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0) }, align 8
@asn1_int_oct_seq_tt = internal constant [2 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }], align 16
@.str.1 = private unnamed_addr constant [13 x i8] c"asn1_int_oct\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"oct\00", align 1
@asn1_oct_int_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* @asn1_oct_int_seq_tt, i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0) }, align 8
@asn1_oct_int_seq_tt = internal constant [2 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, %struct.ASN1_TEMPLATE_st { i64 4096, i64 0, i64 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }], align 16
@.str.4 = private unnamed_addr constant [13 x i8] c"asn1_oct_int\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_TYPE_set_octetstring(%struct.asn1_type_st* noundef %a, i8* noundef %data, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #5
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef nonnull %call, i8* noundef %data, i32 noundef %len) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef nonnull %call) #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = bitcast %struct.asn1_string_st* %call to i8*
  tail call void @ASN1_TYPE_set(%struct.asn1_type_st* noundef %a, i32 noundef 4, i8* noundef nonnull %0) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3, %if.then2
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 0, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #2

declare i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare void @ASN1_TYPE_set(%struct.asn1_type_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_TYPE_get_octetstring(%struct.asn1_type_st* nocapture noundef readonly %a, i8* noundef %data, i32 noundef %max_len) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %a, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !4
  %cmp.not = icmp eq i32 %0, 4
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %a, i64 0, i32 1
  %octet_string = bitcast %union.anon* %value to %struct.asn1_string_st**
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %octet_string, align 8, !tbaa !9
  %cmp1 = icmp eq %struct.asn1_string_st* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ASN1_TYPE_get_octetstring, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 109, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef nonnull %1) #5
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %octet_string, align 8, !tbaa !9
  %call6 = tail call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef %2) #5
  %cmp7 = icmp slt i32 %call6, %max_len
  %call6.max_len = select i1 %cmp7, i32 %call6, i32 %max_len
  %cmp10 = icmp sgt i32 %call6.max_len, 0
  %cmp11 = icmp ne i8* %data, null
  %or.cond = and i1 %cmp11, %cmp10
  br i1 %or.cond, label %if.then12, label %cleanup

if.then12:                                        ; preds = %if.end
  %conv28 = zext i32 %call6.max_len to i64
  %call13 = tail call i8* @memcpy(i8* noundef nonnull %data, i8* noundef %call, i64 noundef %conv28) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then12, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %call6, %if.then12 ], [ %call6, %if.end ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_TYPE_set_int_octetstring(%struct.asn1_type_st* noundef %a, i64 noundef %num, i8* noundef %data, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %a.addr = alloca %struct.asn1_type_st*, align 8
  %atmp = alloca %struct.asn1_int_oct, align 8
  %oct = alloca %struct.asn1_string_st, align 8
  store %struct.asn1_type_st* %a, %struct.asn1_type_st** %a.addr, align 8, !tbaa !10
  %0 = bitcast %struct.asn1_int_oct* %atmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #6
  %1 = bitcast %struct.asn1_string_st* %oct to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #6
  %conv = trunc i64 %num to i32
  %num1 = getelementptr inbounds %struct.asn1_int_oct, %struct.asn1_int_oct* %atmp, i64 0, i32 0
  store i32 %conv, i32* %num1, align 8, !tbaa !12
  %oct2 = getelementptr inbounds %struct.asn1_int_oct, %struct.asn1_int_oct* %atmp, i64 0, i32 1
  store %struct.asn1_string_st* %oct, %struct.asn1_string_st** %oct2, align 8, !tbaa !14
  call fastcc void @asn1_type_init_oct(%struct.asn1_string_st* noundef nonnull %oct, i8* noundef %data, i32 noundef %len) #7
  %call3 = call %struct.asn1_type_st* @ASN1_TYPE_pack_sequence(%struct.ASN1_ITEM_st* noundef nonnull @asn1_int_oct_it.local_it, i8* noundef nonnull %0, %struct.asn1_type_st** noundef nonnull %a.addr) #5
  %tobool.not = icmp ne %struct.asn1_type_st* %call3, null
  %. = zext i1 %tobool.not to i32
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #6
  ret i32 %.
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @asn1_type_init_oct(%struct.asn1_string_st* nocapture noundef writeonly %oct, i8* noundef %data, i32 noundef %len) unnamed_addr #4 {
entry:
  %data1 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %oct, i64 0, i32 2
  store i8* %data, i8** %data1, align 8, !tbaa !15
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %oct, i64 0, i32 1
  store i32 4, i32* %type, align 4, !tbaa !18
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %oct, i64 0, i32 0
  store i32 %len, i32* %length, align 8, !tbaa !19
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %oct, i64 0, i32 3
  store i64 0, i64* %flags, align 8, !tbaa !20
  ret void
}

declare %struct.asn1_type_st* @ASN1_TYPE_pack_sequence(%struct.ASN1_ITEM_st* noundef, i8* noundef, %struct.asn1_type_st** noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_TYPE_get_int_octetstring(%struct.asn1_type_st* noundef %a, i64* noundef %num, i8* noundef %data, i32 noundef %max_len) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %a, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !4
  %cmp.not = icmp eq i32 %0, 16
  br i1 %cmp.not, label %lor.lhs.false, label %err

lor.lhs.false:                                    ; preds = %entry
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %a, i64 0, i32 1
  %sequence = bitcast %union.anon* %value to %struct.asn1_string_st**
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %sequence, align 8, !tbaa !9
  %cmp1 = icmp eq %struct.asn1_string_st* %1, null
  br i1 %cmp1, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call i8* @ASN1_TYPE_unpack_sequence(%struct.ASN1_ITEM_st* noundef nonnull @asn1_int_oct_it.local_it, %struct.asn1_type_st* noundef nonnull %a) #5
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %oct = getelementptr inbounds i8, i8* %call2, i64 8
  %2 = bitcast i8* %oct to %struct.asn1_string_st**
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %2, align 8, !tbaa !14
  %num6 = bitcast i8* %call2 to i32*
  %4 = load i32, i32* %num6, align 8, !tbaa !12
  %call7 = tail call fastcc i32 @asn1_type_get_int_oct(%struct.asn1_string_st* noundef %3, i32 noundef %4, i64* noundef %num, i8* noundef %data, i32 noundef %max_len) #7
  %cmp8 = icmp eq i32 %call7, -1
  br i1 %cmp8, label %err, label %if.end10

err:                                              ; preds = %if.end5, %if.end, %entry, %lor.lhs.false
  %5 = phi i8* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %if.end ], [ %call2, %if.end5 ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.ASN1_TYPE_get_int_octetstring, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 109, i8* noundef null) #5
  br label %if.end10

if.end10:                                         ; preds = %err, %if.end5
  %6 = phi i8* [ %5, %err ], [ %call2, %if.end5 ]
  %ret.1 = phi i32 [ -1, %err ], [ %call7, %if.end5 ]
  %7 = bitcast i8* %6 to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %7, %struct.ASN1_ITEM_st* noundef nonnull @asn1_int_oct_it.local_it) #5
  ret i32 %ret.1
}

declare i8* @ASN1_TYPE_unpack_sequence(%struct.ASN1_ITEM_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_type_get_int_oct(%struct.asn1_string_st* noundef %oct, i32 noundef %anum, i64* noundef writeonly %num, i8* noundef %data, i32 noundef %max_len) unnamed_addr #0 {
entry:
  %call = tail call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef %oct) #5
  %cmp.not = icmp eq i64* %num, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %anum to i64
  store i64 %conv, i64* %num, align 8, !tbaa !21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp5.not = icmp eq i8* %data, null
  br i1 %cmp5.not, label %if.end11, label %if.then7

if.then7:                                         ; preds = %if.end
  %cmp1 = icmp slt i32 %call, %max_len
  %call.max_len = select i1 %cmp1, i32 %call, i32 %max_len
  %call8 = tail call i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef %oct) #5
  %conv9 = sext i32 %call.max_len to i64
  %call10 = tail call i8* @memcpy(i8* noundef nonnull %data, i8* noundef %call8, i64 noundef %conv9) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end
  ret i32 %call
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_asn1_type_set_octetstring_int(%struct.asn1_type_st* noundef %a, i64 noundef %num, i8* noundef %data, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %a.addr = alloca %struct.asn1_type_st*, align 8
  %atmp = alloca %struct.asn1_oct_int, align 8
  %oct = alloca %struct.asn1_string_st, align 8
  store %struct.asn1_type_st* %a, %struct.asn1_type_st** %a.addr, align 8, !tbaa !10
  %0 = bitcast %struct.asn1_oct_int* %atmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #6
  %1 = bitcast %struct.asn1_string_st* %oct to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #6
  %conv = trunc i64 %num to i32
  %num1 = getelementptr inbounds %struct.asn1_oct_int, %struct.asn1_oct_int* %atmp, i64 0, i32 1
  store i32 %conv, i32* %num1, align 8, !tbaa !22
  %oct2 = getelementptr inbounds %struct.asn1_oct_int, %struct.asn1_oct_int* %atmp, i64 0, i32 0
  store %struct.asn1_string_st* %oct, %struct.asn1_string_st** %oct2, align 8, !tbaa !24
  call fastcc void @asn1_type_init_oct(%struct.asn1_string_st* noundef nonnull %oct, i8* noundef %data, i32 noundef %len) #7
  %call3 = call %struct.asn1_type_st* @ASN1_TYPE_pack_sequence(%struct.ASN1_ITEM_st* noundef nonnull @asn1_oct_int_it.local_it, i8* noundef nonnull %0, %struct.asn1_type_st** noundef nonnull %a.addr) #5
  %tobool.not = icmp ne %struct.asn1_type_st* %call3, null
  %. = zext i1 %tobool.not to i32
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #6
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_asn1_type_get_octetstring_int(%struct.asn1_type_st* noundef %a, i64* noundef %num, i8* noundef %data, i32 noundef %max_len) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %a, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !4
  %cmp.not = icmp eq i32 %0, 16
  br i1 %cmp.not, label %lor.lhs.false, label %err

lor.lhs.false:                                    ; preds = %entry
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %a, i64 0, i32 1
  %sequence = bitcast %union.anon* %value to %struct.asn1_string_st**
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %sequence, align 8, !tbaa !9
  %cmp1 = icmp eq %struct.asn1_string_st* %1, null
  br i1 %cmp1, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call i8* @ASN1_TYPE_unpack_sequence(%struct.ASN1_ITEM_st* noundef nonnull @asn1_oct_int_it.local_it, %struct.asn1_type_st* noundef nonnull %a) #5
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %oct = bitcast i8* %call2 to %struct.asn1_string_st**
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %oct, align 8, !tbaa !24
  %num6 = getelementptr inbounds i8, i8* %call2, i64 8
  %3 = bitcast i8* %num6 to i32*
  %4 = load i32, i32* %3, align 8, !tbaa !22
  %call7 = tail call fastcc i32 @asn1_type_get_int_oct(%struct.asn1_string_st* noundef %2, i32 noundef %4, i64* noundef %num, i8* noundef %data, i32 noundef %max_len) #7
  %cmp8 = icmp eq i32 %call7, -1
  br i1 %cmp8, label %err, label %if.end10

err:                                              ; preds = %if.end5, %if.end, %entry, %lor.lhs.false
  %5 = phi i8* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %if.end ], [ %call2, %if.end5 ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 183, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.ossl_asn1_type_get_octetstring_int, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 109, i8* noundef null) #5
  br label %if.end10

if.end10:                                         ; preds = %err, %if.end5
  %6 = phi i8* [ %5, %err ], [ %call2, %if.end5 ]
  %ret.1 = phi i32 [ -1, %err ], [ %call7, %if.end5 ]
  %7 = bitcast i8* %6 to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %7, %struct.ASN1_ITEM_st* noundef nonnull @asn1_oct_int_it.local_it) #5
  ret i32 %ret.1
}

declare %struct.ASN1_ITEM_st* @INT32_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"asn1_type_st", !6, i64 0, !7, i64 8}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !6, i64 0}
!13 = !{!"", !6, i64 0, !11, i64 8}
!14 = !{!13, !11, i64 8}
!15 = !{!16, !11, i64 8}
!16 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !11, i64 8, !17, i64 16}
!17 = !{!"long", !7, i64 0}
!18 = !{!16, !6, i64 4}
!19 = !{!16, !6, i64 0}
!20 = !{!16, !17, i64 16}
!21 = !{!17, !17, i64 0}
!22 = !{!23, !6, i64 8}
!23 = !{!"", !11, i64 0, !6, i64 8}
!24 = !{!23, !11, i64 0}
