; ModuleID = 'crypto/asn1/bio_ndef.c'
source_filename = "crypto/asn1/bio_ndef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.ASN1_VALUE_st = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.ASN1_STREAM_ARG_st = type { %struct.bio_st*, %struct.bio_st*, i8** }
%struct.ASN1_AUX_st = type { i8*, i32, i32, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* }
%struct.bio_method_st = type opaque
%struct.ndef_aux_st = type { %struct.ASN1_VALUE_st*, %struct.ASN1_ITEM_st*, %struct.bio_st*, %struct.bio_st*, i8**, i8* }

@.str = private unnamed_addr constant [23 x i8] c"crypto/asn1/bio_ndef.c\00", align 1
@__func__.BIO_new_NDEF = private unnamed_addr constant [13 x i8] c"BIO_new_NDEF\00", align 1
@__func__.ndef_prefix = private unnamed_addr constant [12 x i8] c"ndef_prefix\00", align 1
@__func__.ndef_suffix = private unnamed_addr constant [12 x i8] c"ndef_suffix\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @BIO_new_NDEF(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st* noundef %val, %struct.ASN1_ITEM_st* noundef %it) local_unnamed_addr #0 {
entry:
  %val.addr = alloca %struct.ASN1_VALUE_st*, align 8
  %sarg = alloca %struct.ASN1_STREAM_ARG_st, align 8
  store %struct.ASN1_VALUE_st* %val, %struct.ASN1_VALUE_st** %val.addr, align 8, !tbaa !4
  %funcs = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 4
  %0 = bitcast i8** %funcs to %struct.ASN1_AUX_st**
  %1 = load %struct.ASN1_AUX_st*, %struct.ASN1_AUX_st** %0, align 8, !tbaa !8
  %2 = bitcast %struct.ASN1_STREAM_ARG_st* %sarg to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #3
  %tobool.not = icmp eq %struct.ASN1_AUX_st* %1, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %asn1_cb = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %1, i64 0, i32 4
  %3 = load i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)** %asn1_cb, align 8, !tbaa !11
  %tobool1.not = icmp eq i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* %3, null
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.BIO_new_NDEF, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 202, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 48, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 64) #4
  %call2 = tail call %struct.bio_method_st* @BIO_f_asn1() #4
  %call3 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call2) #4
  %cmp = icmp eq i8* %call, null
  %cmp5 = icmp eq %struct.bio_st* %call3, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp5
  br i1 %or.cond, label %err, label %if.end7

if.end7:                                          ; preds = %if.end
  %call8 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %call3, %struct.bio_st* noundef %out) #4
  %cmp9 = icmp eq %struct.bio_st* %call8, null
  br i1 %cmp9, label %err, label %if.end11

if.end11:                                         ; preds = %if.end7
  %call12 = tail call i32 @BIO_asn1_set_prefix(%struct.bio_st* noundef nonnull %call3, i32 (%struct.bio_st*, i8**, i32*, i8*)* noundef nonnull @ndef_prefix, i32 (%struct.bio_st*, i8**, i32*, i8*)* noundef nonnull @ndef_prefix_free) #4
  %call13 = tail call i32 @BIO_asn1_set_suffix(%struct.bio_st* noundef nonnull %call3, i32 (%struct.bio_st*, i8**, i32*, i8*)* noundef nonnull @ndef_suffix, i32 (%struct.bio_st*, i8**, i32*, i8*)* noundef nonnull @ndef_suffix_free) #4
  %out14 = getelementptr inbounds %struct.ASN1_STREAM_ARG_st, %struct.ASN1_STREAM_ARG_st* %sarg, i64 0, i32 0
  store %struct.bio_st* %call8, %struct.bio_st** %out14, align 8, !tbaa !14
  %ndef_bio = getelementptr inbounds %struct.ASN1_STREAM_ARG_st, %struct.ASN1_STREAM_ARG_st* %sarg, i64 0, i32 1
  store %struct.bio_st* null, %struct.bio_st** %ndef_bio, align 8, !tbaa !16
  %boundary = getelementptr inbounds %struct.ASN1_STREAM_ARG_st, %struct.ASN1_STREAM_ARG_st* %sarg, i64 0, i32 2
  store i8** null, i8*** %boundary, align 8, !tbaa !17
  %4 = load i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)** %asn1_cb, align 8, !tbaa !11
  %call16 = call i32 %4(i32 noundef 10, %struct.ASN1_VALUE_st** noundef nonnull %val.addr, %struct.ASN1_ITEM_st* noundef nonnull %it, i8* noundef nonnull %2) #4
  %cmp17 = icmp slt i32 %call16, 1
  br i1 %cmp17, label %err, label %if.end19

if.end19:                                         ; preds = %if.end11
  %5 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %val.addr, align 8, !tbaa !4
  %val20 = bitcast i8* %call to %struct.ASN1_VALUE_st**
  store %struct.ASN1_VALUE_st* %5, %struct.ASN1_VALUE_st** %val20, align 8, !tbaa !18
  %it21 = getelementptr inbounds i8, i8* %call, i64 8
  %6 = bitcast i8* %it21 to %struct.ASN1_ITEM_st**
  store %struct.ASN1_ITEM_st* %it, %struct.ASN1_ITEM_st** %6, align 8, !tbaa !20
  %7 = load %struct.bio_st*, %struct.bio_st** %ndef_bio, align 8, !tbaa !16
  %ndef_bio23 = getelementptr inbounds i8, i8* %call, i64 16
  %8 = bitcast i8* %ndef_bio23 to %struct.bio_st**
  store %struct.bio_st* %7, %struct.bio_st** %8, align 8, !tbaa !21
  %9 = load i8**, i8*** %boundary, align 8, !tbaa !17
  %boundary25 = getelementptr inbounds i8, i8* %call, i64 32
  %10 = bitcast i8* %boundary25 to i8***
  store i8** %9, i8*** %10, align 8, !tbaa !22
  %out26 = getelementptr inbounds i8, i8* %call, i64 24
  %11 = bitcast i8* %out26 to %struct.bio_st**
  store %struct.bio_st* %call8, %struct.bio_st** %11, align 8, !tbaa !23
  %call27 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call3, i32 noundef 153, i64 noundef 0, i8* noundef nonnull %call) #4
  %12 = load %struct.bio_st*, %struct.bio_st** %ndef_bio, align 8, !tbaa !16
  br label %cleanup

err:                                              ; preds = %if.end11, %if.end7, %if.end
  %call29 = call i32 @BIO_free(%struct.bio_st* noundef %call3) #4
  call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 101) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end19, %if.then
  %retval.0 = phi %struct.bio_st* [ null, %err ], [ %12, %if.end19 ], [ null, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #3
  ret %struct.bio_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_f_asn1() local_unnamed_addr #2

declare %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @BIO_asn1_set_prefix(%struct.bio_st* noundef, i32 (%struct.bio_st*, i8**, i32*, i8*)* noundef, i32 (%struct.bio_st*, i8**, i32*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ndef_prefix(%struct.bio_st* nocapture noundef readnone %b, i8** nocapture noundef %pbuf, i32* nocapture noundef writeonly %plen, i8* noundef readonly %parg) #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  %cmp = icmp eq i8* %parg, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %parg to %struct.ndef_aux_st**
  %2 = load %struct.ndef_aux_st*, %struct.ndef_aux_st** %1, align 8, !tbaa !4
  %val = getelementptr inbounds %struct.ndef_aux_st, %struct.ndef_aux_st* %2, i64 0, i32 0
  %3 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %val, align 8, !tbaa !18
  %it = getelementptr inbounds %struct.ndef_aux_st, %struct.ndef_aux_st* %2, i64 0, i32 1
  %4 = load %struct.ASN1_ITEM_st*, %struct.ASN1_ITEM_st** %it, align 8, !tbaa !20
  %call = tail call i32 @ASN1_item_ndef_i2d(%struct.ASN1_VALUE_st* noundef %3, i8** noundef null, %struct.ASN1_ITEM_st* noundef %4) #4
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %conv31 = zext i32 %call to i64
  %call4 = tail call i8* @CRYPTO_malloc(i64 noundef %conv31, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 119) #4
  store i8* %call4, i8** %p, align 8, !tbaa !4
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.ndef_prefix, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %derbuf = getelementptr inbounds %struct.ndef_aux_st, %struct.ndef_aux_st* %2, i64 0, i32 5
  store i8* %call4, i8** %derbuf, align 8, !tbaa !24
  store i8* %call4, i8** %pbuf, align 8, !tbaa !4
  %5 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %val, align 8, !tbaa !18
  %6 = load %struct.ASN1_ITEM_st*, %struct.ASN1_ITEM_st** %it, align 8, !tbaa !20
  %call11 = call i32 @ASN1_item_ndef_i2d(%struct.ASN1_VALUE_st* noundef %5, i8** noundef nonnull %p, %struct.ASN1_ITEM_st* noundef %6) #4
  %boundary = getelementptr inbounds %struct.ndef_aux_st, %struct.ndef_aux_st* %2, i64 0, i32 4
  %7 = load i8**, i8*** %boundary, align 8, !tbaa !22
  %8 = load i8*, i8** %7, align 8, !tbaa !4
  %cmp12 = icmp eq i8* %8, null
  br i1 %cmp12, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.end8
  %9 = load i8*, i8** %pbuf, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv17 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv17, i32* %plen, align 4, !tbaa !25
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end, %entry, %if.end15, %if.then7
  %retval.0 = phi i32 [ 0, %if.then7 ], [ 1, %if.end15 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end8 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ndef_prefix_free(%struct.bio_st* nocapture noundef readnone %b, i8** nocapture noundef writeonly %pbuf, i32* nocapture noundef writeonly %plen, i8* noundef readonly %parg) #0 {
entry:
  %cmp = icmp eq i8* %parg, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %parg to %struct.ndef_aux_st**
  %1 = load %struct.ndef_aux_st*, %struct.ndef_aux_st** %0, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ndef_aux_st* %1, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %derbuf = getelementptr inbounds %struct.ndef_aux_st, %struct.ndef_aux_st* %1, i64 0, i32 5
  %2 = load i8*, i8** %derbuf, align 8, !tbaa !24
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 149) #4
  store i8* null, i8** %derbuf, align 8, !tbaa !24
  store i8* null, i8** %pbuf, align 8, !tbaa !4
  store i32 0, i32* %plen, align 4, !tbaa !25
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare i32 @BIO_asn1_set_suffix(%struct.bio_st* noundef, i32 (%struct.bio_st*, i8**, i32*, i8*)* noundef, i32 (%struct.bio_st*, i8**, i32*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ndef_suffix(%struct.bio_st* nocapture noundef readnone %b, i8** nocapture noundef writeonly %pbuf, i32* nocapture noundef writeonly %plen, i8* noundef readonly %parg) #0 {
entry:
  %p = alloca i8*, align 8
  %sarg = alloca %struct.ASN1_STREAM_ARG_st, align 16
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  %1 = bitcast %struct.ASN1_STREAM_ARG_st* %sarg to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #3
  %cmp = icmp eq i8* %parg, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast i8* %parg to %struct.ndef_aux_st**
  %3 = load %struct.ndef_aux_st*, %struct.ndef_aux_st** %2, align 8, !tbaa !4
  %it = getelementptr inbounds %struct.ndef_aux_st, %struct.ndef_aux_st* %3, i64 0, i32 1
  %4 = load %struct.ASN1_ITEM_st*, %struct.ASN1_ITEM_st** %it, align 8, !tbaa !20
  %funcs = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %4, i64 0, i32 4
  %5 = bitcast i8** %funcs to %struct.ASN1_AUX_st**
  %6 = load %struct.ASN1_AUX_st*, %struct.ASN1_AUX_st** %5, align 8, !tbaa !8
  %ndef_bio = getelementptr inbounds %struct.ndef_aux_st, %struct.ndef_aux_st* %3, i64 0, i32 2
  %7 = bitcast %struct.bio_st** %ndef_bio to <2 x %struct.bio_st*>*
  %8 = load <2 x %struct.bio_st*>, <2 x %struct.bio_st*>* %7, align 8, !tbaa !4
  %shuffle = shufflevector <2 x %struct.bio_st*> %8, <2 x %struct.bio_st*> poison, <2 x i32> <i32 1, i32 0>
  %9 = bitcast %struct.ASN1_STREAM_ARG_st* %sarg to <2 x %struct.bio_st*>*
  store <2 x %struct.bio_st*> %shuffle, <2 x %struct.bio_st*>* %9, align 16, !tbaa !4
  %boundary = getelementptr inbounds %struct.ndef_aux_st, %struct.ndef_aux_st* %3, i64 0, i32 4
  %10 = load i8**, i8*** %boundary, align 8, !tbaa !22
  %boundary3 = getelementptr inbounds %struct.ASN1_STREAM_ARG_st, %struct.ASN1_STREAM_ARG_st* %sarg, i64 0, i32 2
  store i8** %10, i8*** %boundary3, align 16, !tbaa !17
  %asn1_cb = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %6, i64 0, i32 4
  %11 = load i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)** %asn1_cb, align 8, !tbaa !11
  %val = getelementptr inbounds %struct.ndef_aux_st, %struct.ndef_aux_st* %3, i64 0, i32 0
  %call = call i32 %11(i32 noundef 11, %struct.ASN1_VALUE_st** noundef %val, %struct.ASN1_ITEM_st* noundef %4, i8* noundef nonnull %1) #4
  %cmp5 = icmp slt i32 %call, 1
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %12 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %val, align 8, !tbaa !18
  %13 = load %struct.ASN1_ITEM_st*, %struct.ASN1_ITEM_st** %it, align 8, !tbaa !20
  %call10 = call i32 @ASN1_item_ndef_i2d(%struct.ASN1_VALUE_st* noundef %12, i8** noundef null, %struct.ASN1_ITEM_st* noundef %13) #4
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end7
  %conv58 = zext i32 %call10 to i64
  %call14 = call i8* @CRYPTO_malloc(i64 noundef %conv58, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 194) #4
  store i8* %call14, i8** %p, align 8, !tbaa !4
  %cmp15 = icmp eq i8* %call14, null
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 195, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.ndef_suffix, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %derbuf = getelementptr inbounds %struct.ndef_aux_st, %struct.ndef_aux_st* %3, i64 0, i32 5
  store i8* %call14, i8** %derbuf, align 8, !tbaa !24
  store i8* %call14, i8** %pbuf, align 8, !tbaa !4
  %14 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %val, align 8, !tbaa !18
  %15 = load %struct.ASN1_ITEM_st*, %struct.ASN1_ITEM_st** %it, align 8, !tbaa !20
  %call21 = call i32 @ASN1_item_ndef_i2d(%struct.ASN1_VALUE_st* noundef %14, i8** noundef nonnull %p, %struct.ASN1_ITEM_st* noundef %15) #4
  %16 = load i8**, i8*** %boundary, align 8, !tbaa !22
  %17 = load i8*, i8** %16, align 8, !tbaa !4
  %cmp23 = icmp eq i8* %17, null
  br i1 %cmp23, label %cleanup, label %if.end26

if.end26:                                         ; preds = %if.end18
  store i8* %17, i8** %pbuf, align 8, !tbaa !4
  %18 = load i8**, i8*** %boundary, align 8, !tbaa !22
  %19 = load i8*, i8** %18, align 8, !tbaa !4
  %20 = load i8*, i8** %derbuf, align 8, !tbaa !24
  %sub.ptr.lhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.sub.neg = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %21 = trunc i64 %sub.ptr.sub.neg to i32
  %conv31 = add i32 %call21, %21
  store i32 %conv31, i32* %plen, align 4, !tbaa !25
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end7, %if.end, %entry, %if.end26, %if.then17
  %retval.0 = phi i32 [ 0, %if.then17 ], [ 1, %if.end26 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end7 ], [ 0, %if.end18 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ndef_suffix_free(%struct.bio_st* nocapture noundef readnone %b, i8** nocapture noundef writeonly %pbuf, i32* nocapture noundef writeonly %plen, i8* noundef %parg) #0 {
entry:
  %call = tail call i32 @ndef_prefix_free(%struct.bio_st* noundef %b, i8** noundef %pbuf, i32* noundef %plen, i8* noundef %parg) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %parg to %struct.ndef_aux_st**
  %1 = bitcast i8* %parg to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 163) #4
  store %struct.ndef_aux_st* null, %struct.ndef_aux_st** %0, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @ASN1_item_ndef_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

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
!8 = !{!9, !5, i64 32}
!9 = !{!"ASN1_ITEM_st", !6, i64 0, !10, i64 8, !5, i64 16, !10, i64 24, !5, i64 32, !10, i64 40, !5, i64 48}
!10 = !{!"long", !6, i64 0}
!11 = !{!12, !5, i64 24}
!12 = !{!"ASN1_AUX_st", !5, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !5, i64 24, !13, i64 32, !5, i64 40}
!13 = !{!"int", !6, i64 0}
!14 = !{!15, !5, i64 0}
!15 = !{!"ASN1_STREAM_ARG_st", !5, i64 0, !5, i64 8, !5, i64 16}
!16 = !{!15, !5, i64 8}
!17 = !{!15, !5, i64 16}
!18 = !{!19, !5, i64 0}
!19 = !{!"ndef_aux_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40}
!20 = !{!19, !5, i64 8}
!21 = !{!19, !5, i64 16}
!22 = !{!19, !5, i64 32}
!23 = !{!19, !5, i64 24}
!24 = !{!19, !5, i64 40}
!25 = !{!13, !13, i64 0}
