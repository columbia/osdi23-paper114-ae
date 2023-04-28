; ModuleID = 'crypto/asn1/tasn_dec.c'
source_filename = "crypto/asn1/tasn_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_VALUE_st = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.ASN1_TLC_st = type { i8, i32, i64, i32, i32, i32 }
%struct.ossl_lib_ctx_st = type opaque
%struct.ASN1_AUX_st = type { i8*, i32, i32, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* }
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.stack_st = type opaque
%struct.stack_st_ASN1_VALUE = type opaque
%struct.ASN1_PRIMITIVE_FUNCS_st = type { i8*, i64, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, i32 (%struct.ASN1_VALUE_st**, i8*, i32, i32, i8*, %struct.ASN1_ITEM_st*)*, i32 (%struct.ASN1_VALUE_st**, i8*, i32*, %struct.ASN1_ITEM_st*)*, i32 (%struct.bio_st*, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i32, %struct.asn1_pctx_st*)* }
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_object_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }

@tag2bit = internal unnamed_addr constant [32 x i64] [i64 0, i64 0, i64 0, i64 1024, i64 512, i64 0, i64 0, i64 4096, i64 4096, i64 4096, i64 0, i64 4096, i64 8192, i64 4096, i64 4096, i64 4096, i64 65536, i64 0, i64 1, i64 2, i64 4, i64 8, i64 16, i64 16384, i64 32768, i64 32, i64 64, i64 128, i64 256, i64 4096, i64 2048, i64 4096], align 16
@.str = private unnamed_addr constant [23 x i8] c"crypto/asn1/tasn_dec.c\00", align 1
@__func__.asn1_item_ex_d2i_intern = private unnamed_addr constant [24 x i8] c"asn1_item_ex_d2i_intern\00", align 1
@__func__.asn1_item_embed_d2i = private unnamed_addr constant [20 x i8] c"asn1_item_embed_d2i\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Field=\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c", Type=\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Type=\00", align 1
@__func__.asn1_template_ex_d2i = private unnamed_addr constant [21 x i8] c"asn1_template_ex_d2i\00", align 1
@__func__.asn1_template_noexp_d2i = private unnamed_addr constant [24 x i8] c"asn1_template_noexp_d2i\00", align 1
@__func__.asn1_d2i_ex_primitive = private unnamed_addr constant [22 x i8] c"asn1_d2i_ex_primitive\00", align 1
@__func__.asn1_find_end = private unnamed_addr constant [14 x i8] c"asn1_find_end\00", align 1
@__func__.asn1_collect = private unnamed_addr constant [13 x i8] c"asn1_collect\00", align 1
@__func__.collect_data = private unnamed_addr constant [13 x i8] c"collect_data\00", align 1
@__func__.asn1_ex_c2i = private unnamed_addr constant [12 x i8] c"asn1_ex_c2i\00", align 1
@__func__.asn1_check_tlen = private unnamed_addr constant [16 x i8] c"asn1_check_tlen\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i64 @ASN1_tag2bit(i32 noundef %tag) local_unnamed_addr #0 {
entry:
  %0 = icmp ugt i32 %tag, 30
  br i1 %0, label %return, label %if.end

if.end:                                           ; preds = %entry
  %idxprom4 = zext i32 %tag to i64
  %arrayidx = getelementptr inbounds [32 x i64], [32 x i64]* @tag2bit, i64 0, i64 %idxprom4
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %1, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_item_ex_d2i(%struct.ASN1_VALUE_st** noundef %pval, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef %it, i32 noundef %tag, i32 noundef %aclass, i8 noundef signext %opt, %struct.ASN1_TLC_st* noundef %ctx) local_unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @asn1_item_ex_d2i_intern(%struct.ASN1_VALUE_st** noundef %pval, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef %it, i32 noundef %tag, i32 noundef %aclass, i8 noundef signext %opt, %struct.ASN1_TLC_st* noundef %ctx, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_item_ex_d2i_intern(%struct.ASN1_VALUE_st** noundef %pval, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef %it, i32 noundef %tag, i32 noundef %aclass, i8 noundef signext %opt, %struct.ASN1_TLC_st* noundef %ctx, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ASN1_VALUE_st** %pval, null
  %cmp1 = icmp eq %struct.ASN1_ITEM_st* %it, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.asn1_item_ex_d2i_intern, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786690, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @asn1_item_embed_d2i(%struct.ASN1_VALUE_st** noundef nonnull %pval, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull %it, i32 noundef %tag, i32 noundef %aclass, i8 noundef signext %opt, %struct.ASN1_TLC_st* noundef %ctx, i32 noundef 0, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #7
  %cmp2 = icmp slt i32 %call, 1
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  tail call void @ASN1_item_ex_free(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef nonnull %it) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.then3 ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ASN1_VALUE_st* @ASN1_item_d2i_ex(%struct.ASN1_VALUE_st** noundef %pval, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef %it, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #1 {
entry:
  %c = alloca %struct.ASN1_TLC_st, align 8
  %ptmpval = alloca %struct.ASN1_VALUE_st*, align 8
  %0 = getelementptr inbounds %struct.ASN1_TLC_st, %struct.ASN1_TLC_st* %c, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #9
  %1 = bitcast %struct.ASN1_VALUE_st** %ptmpval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %ptmpval, align 8, !tbaa !8
  %cmp = icmp eq %struct.ASN1_VALUE_st** %pval, null
  %spec.store.select = select i1 %cmp, %struct.ASN1_VALUE_st** %ptmpval, %struct.ASN1_VALUE_st** %pval
  store i8 0, i8* %0, align 8, !tbaa !10
  %call = call fastcc i32 @asn1_item_ex_d2i_intern(%struct.ASN1_VALUE_st** noundef %spec.store.select, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef %it, i32 noundef -1, i32 noundef 0, i8 noundef signext 0, %struct.ASN1_TLC_st* noundef nonnull %c, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #7
  %cmp1 = icmp sgt i32 %call, 0
  br i1 %cmp1, label %if.then2, label %cleanup

if.then2:                                         ; preds = %entry
  %2 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %spec.store.select, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi %struct.ASN1_VALUE_st* [ %2, %if.then2 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #9
  ret %struct.ASN1_VALUE_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %pval, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef %it) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i_ex(%struct.ASN1_VALUE_st** noundef %pval, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef %it, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #7
  ret %struct.ASN1_VALUE_st* %call
}

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_item_embed_d2i(%struct.ASN1_VALUE_st** noundef %pval, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef %it, i32 noundef %tag, i32 noundef %aclass, i8 noundef signext %opt, %struct.ASN1_TLC_st* noundef %ctx, i32 noundef %depth, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #1 {
entry:
  %len.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %oclass = alloca i8, align 1
  %seq_eoc = alloca i8, align 1
  %cst = alloca i8, align 1
  %otag = alloca i32, align 4
  store i64 %len, i64* %len.addr, align 8, !tbaa !4
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %oclass) #9
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %seq_eoc) #9
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %cst) #9
  %1 = bitcast i32* %otag to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  %cmp = icmp eq %struct.ASN1_VALUE_st** %pval, null
  %cmp1 = icmp eq %struct.ASN1_ITEM_st* %it, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.asn1_item_embed_d2i, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786690, i8* noundef null) #8
  br label %cleanup301

if.end:                                           ; preds = %entry
  %cmp2 = icmp slt i64 %len, 1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.asn1_item_embed_d2i, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 224, i8* noundef null) #8
  br label %cleanup301

if.end4:                                          ; preds = %if.end
  %funcs = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 4
  %2 = bitcast i8** %funcs to %struct.ASN1_AUX_st**
  %3 = load %struct.ASN1_AUX_st*, %struct.ASN1_AUX_st** %2, align 8, !tbaa !13
  %tobool.not = icmp eq %struct.ASN1_AUX_st* %3, null
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end4
  %asn1_cb5 = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %3, i64 0, i32 4
  %4 = load i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)** %asn1_cb5, align 8, !tbaa !15
  %tobool6.not = icmp eq i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* %4, null
  br i1 %tobool6.not, label %if.else, label %if.end9

if.else:                                          ; preds = %land.lhs.true, %if.end4
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %if.else
  %asn1_cb.0 = phi i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* [ null, %if.else ], [ %4, %land.lhs.true ]
  %inc = add nsw i32 %depth, 1
  %cmp10 = icmp sgt i32 %depth, 29
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 196, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.asn1_item_embed_d2i, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 201, i8* noundef null) #8
  br label %if.else298

if.end12:                                         ; preds = %if.end9
  %itype = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 0
  %5 = load i8, i8* %itype, align 8, !tbaa !17
  %conv = sext i8 %5 to i32
  switch i32 %conv, label %cleanup301 [
    i32 0, label %sw.bb
    i32 5, label %sw.bb25
    i32 4, label %sw.bb50
    i32 2, label %sw.bb59
    i32 6, label %sw.bb122
    i32 1, label %sw.bb122
  ]

sw.bb:                                            ; preds = %if.end12
  %templates = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 2
  %6 = load %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st** %templates, align 8, !tbaa !18
  %tobool13.not = icmp eq %struct.ASN1_TEMPLATE_st* %6, null
  br i1 %tobool13.not, label %if.end23, label %if.then14

if.then14:                                        ; preds = %sw.bb
  %cmp15 = icmp ne i32 %tag, -1
  %tobool19 = icmp ne i8 %opt, 0
  %or.cond318 = or i1 %cmp15, %tobool19
  br i1 %or.cond318, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then14
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 211, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.asn1_item_embed_d2i, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 170, i8* noundef null) #8
  br label %if.else298

if.end21:                                         ; preds = %if.then14
  %call = tail call fastcc i32 @asn1_template_ex_d2i(%struct.ASN1_VALUE_st** noundef nonnull %pval, i8** noundef %in, i64 noundef %len, %struct.ASN1_TEMPLATE_st* noundef nonnull %6, i8 noundef signext 0, %struct.ASN1_TLC_st* noundef %ctx, i32 noundef %inc, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #7
  br label %cleanup301

if.end23:                                         ; preds = %sw.bb
  %call24 = tail call fastcc i32 @asn1_d2i_ex_primitive(%struct.ASN1_VALUE_st** noundef nonnull %pval, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull %it, i32 noundef %tag, i32 noundef %aclass, i8 noundef signext %opt, %struct.ASN1_TLC_st* noundef %ctx) #7
  br label %cleanup301

sw.bb25:                                          ; preds = %if.end12
  %cmp26.not = icmp eq i32 %tag, -1
  br i1 %cmp26.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %sw.bb25
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 226, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.asn1_item_embed_d2i, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 230, i8* noundef null) #8
  br label %if.else298

if.end29:                                         ; preds = %sw.bb25
  %7 = load i8*, i8** %in, align 8, !tbaa !8
  store i8* %7, i8** %p, align 8, !tbaa !8
  %call30 = call fastcc i32 @asn1_check_tlen(i64* noundef null, i32* noundef nonnull %otag, i8* noundef nonnull %oclass, i8* noundef null, i8* noundef null, i8** noundef nonnull %p, i64 noundef %len, i32 noundef -1, i32 noundef 0, i8 noundef signext 1, %struct.ASN1_TLC_st* noundef %ctx) #7
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end29
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 235, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.asn1_item_embed_d2i, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524554, i8* noundef null) #8
  br label %if.else298

if.end33:                                         ; preds = %if.end29
  %8 = load i8, i8* %oclass, align 1, !tbaa !19
  %cmp35.not = icmp eq i8 %8, 0
  br i1 %cmp35.not, label %if.end41, label %if.then37

if.then37:                                        ; preds = %if.end33
  %tobool38.not = icmp eq i8 %opt, 0
  br i1 %tobool38.not, label %if.end40, label %cleanup301

if.end40:                                         ; preds = %if.then37
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 244, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.asn1_item_embed_d2i, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 139, i8* noundef null) #8
  br label %if.else298

if.end41:                                         ; preds = %if.end33
  %9 = load i32, i32* %otag, align 4, !tbaa !20
  %call42 = call i64 @ASN1_tag2bit(i32 noundef %9) #7
  %utype = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 1
  %10 = load i64, i64* %utype, align 8, !tbaa !21
  %and = and i64 %10, %call42
  %tobool43.not = icmp eq i64 %and, 0
  br i1 %tobool43.not, label %if.then44, label %if.end48

if.then44:                                        ; preds = %if.end41
  %tobool45.not = icmp eq i8 %opt, 0
  br i1 %tobool45.not, label %if.end47, label %cleanup301

if.end47:                                         ; preds = %if.then44
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 253, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.asn1_item_embed_d2i, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 140, i8* noundef null) #8
  br label %if.else298

if.end48:                                         ; preds = %if.end41
  %11 = load i64, i64* %len.addr, align 8, !tbaa !4
  %call49 = call fastcc i32 @asn1_d2i_ex_primitive(%struct.ASN1_VALUE_st** noundef nonnull %pval, i8** noundef nonnull %in, i64 noundef %11, %struct.ASN1_ITEM_st* noundef nonnull %it, i32 noundef %9, i32 noundef 0, i8 noundef signext 0, %struct.ASN1_TLC_st* noundef %ctx) #7
  br label %cleanup301

sw.bb50:                                          ; preds = %if.end12
  %asn1_ex_d2i_ex = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %3, i64 1, i32 3
  %12 = bitcast i32* %asn1_ex_d2i_ex to i32 (%struct.ASN1_VALUE_st**, i8**, i64, %struct.ASN1_ITEM_st*, i32, i32, i8, %struct.ASN1_TLC_st*, %struct.ossl_lib_ctx_st*, i8*)**
  %13 = load i32 (%struct.ASN1_VALUE_st**, i8**, i64, %struct.ASN1_ITEM_st*, i32, i32, i8, %struct.ASN1_TLC_st*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ASN1_VALUE_st**, i8**, i64, %struct.ASN1_ITEM_st*, i32, i32, i8, %struct.ASN1_TLC_st*, %struct.ossl_lib_ctx_st*, i8*)** %12, align 8, !tbaa !22
  %cmp52.not = icmp eq i32 (%struct.ASN1_VALUE_st**, i8**, i64, %struct.ASN1_ITEM_st*, i32, i32, i8, %struct.ASN1_TLC_st*, %struct.ossl_lib_ctx_st*, i8*)* %13, null
  br i1 %cmp52.not, label %if.end57, label %if.then54

if.then54:                                        ; preds = %sw.bb50
  %call56 = tail call i32 %13(%struct.ASN1_VALUE_st** noundef nonnull %pval, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull %it, i32 noundef %tag, i32 noundef %aclass, i8 noundef signext %opt, %struct.ASN1_TLC_st* noundef %ctx, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #8
  br label %cleanup301

if.end57:                                         ; preds = %sw.bb50
  %asn1_ex_d2i = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %3, i64 0, i32 5
  %14 = bitcast i32* %asn1_ex_d2i to i32 (%struct.ASN1_VALUE_st**, i8**, i64, %struct.ASN1_ITEM_st*, i32, i32, i8, %struct.ASN1_TLC_st*)**
  %15 = load i32 (%struct.ASN1_VALUE_st**, i8**, i64, %struct.ASN1_ITEM_st*, i32, i32, i8, %struct.ASN1_TLC_st*)*, i32 (%struct.ASN1_VALUE_st**, i8**, i64, %struct.ASN1_ITEM_st*, i32, i32, i8, %struct.ASN1_TLC_st*)** %14, align 8, !tbaa !24
  %call58 = tail call i32 %15(%struct.ASN1_VALUE_st** noundef nonnull %pval, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull %it, i32 noundef %tag, i32 noundef %aclass, i8 noundef signext %opt, %struct.ASN1_TLC_st* noundef %ctx) #8
  br label %cleanup301

sw.bb59:                                          ; preds = %if.end12
  %cmp60.not = icmp eq i32 %tag, -1
  br i1 %cmp60.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %sw.bb59
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 272, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.asn1_item_embed_d2i, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 230, i8* noundef null) #8
  br label %if.else298

if.end63:                                         ; preds = %sw.bb59
  %tobool64.not = icmp eq i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* %asn1_cb.0, null
  br i1 %tobool64.not, label %if.end69, label %land.lhs.true65

land.lhs.true65:                                  ; preds = %if.end63
  %call66 = tail call i32 %asn1_cb.0(i32 noundef 4, %struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef nonnull %it, i8* noundef null) #8
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err.thread, label %if.end69

if.end69:                                         ; preds = %land.lhs.true65, %if.end63
  %16 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !8
  %tobool70.not = icmp eq %struct.ASN1_VALUE_st* %16, null
  br i1 %tobool70.not, label %if.else84, label %if.then71

if.then71:                                        ; preds = %if.end69
  %call72 = tail call i32 @ossl_asn1_get_choice_selector(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef nonnull %it) #8
  %cmp73 = icmp sgt i32 %call72, -1
  br i1 %cmp73, label %land.lhs.true75, label %if.end89

land.lhs.true75:                                  ; preds = %if.then71
  %conv76539 = zext i32 %call72 to i64
  %tcount = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 3
  %17 = load i64, i64* %tcount, align 8, !tbaa !25
  %cmp77 = icmp sgt i64 %17, %conv76539
  br i1 %cmp77, label %if.then79, label %if.end89

if.then79:                                        ; preds = %land.lhs.true75
  %templates80 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 2
  %18 = load %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st** %templates80, align 8, !tbaa !18
  %add.ptr = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %18, i64 %conv76539
  %call81 = tail call %struct.ASN1_VALUE_st** @ossl_asn1_get_field_ptr(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_TEMPLATE_st* noundef %add.ptr) #8
  tail call void @ossl_asn1_template_free(%struct.ASN1_VALUE_st** noundef %call81, %struct.ASN1_TEMPLATE_st* noundef %add.ptr) #8
  %call82 = tail call i32 @ossl_asn1_set_choice_selector(%struct.ASN1_VALUE_st** noundef nonnull %pval, i32 noundef -1, %struct.ASN1_ITEM_st* noundef nonnull %it) #8
  br label %if.end89

if.else84:                                        ; preds = %if.end69
  %call85 = tail call i32 @ossl_asn1_item_ex_new_intern(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef nonnull %it, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #8
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then87, label %if.end89

if.then87:                                        ; preds = %if.else84
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 288, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.asn1_item_embed_d2i, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524554, i8* noundef null) #8
  br label %if.else298

if.end89:                                         ; preds = %if.else84, %if.then71, %land.lhs.true75, %if.then79
  %19 = load i8*, i8** %in, align 8, !tbaa !8
  store i8* %19, i8** %p, align 8, !tbaa !8
  %tcount92 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 3
  %20 = load i64, i64* %tcount92, align 8, !tbaa !25
  %cmp93578 = icmp sgt i64 %20, 0
  br i1 %cmp93578, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end89
  %templates90 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 2
  %21 = load %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st** %templates90, align 8, !tbaa !18
  %call95716 = tail call %struct.ASN1_VALUE_st** @ossl_asn1_get_field_ptr(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_TEMPLATE_st* noundef %21) #8
  %call96717 = call fastcc i32 @asn1_template_ex_d2i(%struct.ASN1_VALUE_st** noundef %call95716, i8** noundef nonnull %p, i64 noundef %len, %struct.ASN1_TEMPLATE_st* noundef %21, i8 noundef signext 1, %struct.ASN1_TLC_st* noundef %ctx, i32 noundef %inc, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #7
  %cmp97718 = icmp eq i32 %call96717, -1
  br i1 %cmp97718, label %for.inc, label %if.end100

for.body.if.end100_crit_edge:                     ; preds = %for.inc.for.body_crit_edge
  %phi.cast = trunc i64 %indvars.iv.next609 to i32
  br label %if.end100

if.end100:                                        ; preds = %for.body.if.end100_crit_edge, %for.body.preheader
  %indvars.iv608.lcssa = phi i32 [ %phi.cast, %for.body.if.end100_crit_edge ], [ 0, %for.body.preheader ]
  %tt.0580.lcssa = phi %struct.ASN1_TEMPLATE_st* [ %incdec.ptr, %for.body.if.end100_crit_edge ], [ %21, %for.body.preheader ]
  %call95.lcssa = phi %struct.ASN1_VALUE_st** [ %call95, %for.body.if.end100_crit_edge ], [ %call95716, %for.body.preheader ]
  %call96.lcssa = phi i32 [ %call96, %for.body.if.end100_crit_edge ], [ %call96717, %for.body.preheader ]
  %cmp101 = icmp sgt i32 %call96.lcssa, 0
  br i1 %cmp101, label %if.end100.for.end_crit_edge, label %err

if.end100.for.end_crit_edge:                      ; preds = %if.end100
  %.pre612 = load i64, i64* %tcount92, align 8, !tbaa !25
  br label %for.end

for.inc:                                          ; preds = %for.body.preheader, %for.inc.for.body_crit_edge
  %tt.0580720 = phi %struct.ASN1_TEMPLATE_st* [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %21, %for.body.preheader ]
  %indvars.iv608719 = phi i64 [ %indvars.iv.next609, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %indvars.iv.next609 = add nuw nsw i64 %indvars.iv608719, 1
  %22 = load i64, i64* %tcount92, align 8, !tbaa !25
  %cmp93 = icmp sgt i64 %22, %indvars.iv.next609
  br i1 %cmp93, label %for.inc.for.body_crit_edge, label %for.end.loopexit.loopexit, !llvm.loop !26

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %incdec.ptr = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt.0580720, i64 1
  %.pre677 = load i64, i64* %len.addr, align 8, !tbaa !4
  %call95 = tail call %struct.ASN1_VALUE_st** @ossl_asn1_get_field_ptr(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_TEMPLATE_st* noundef nonnull %incdec.ptr) #8
  %call96 = call fastcc i32 @asn1_template_ex_d2i(%struct.ASN1_VALUE_st** noundef %call95, i8** noundef nonnull %p, i64 noundef %.pre677, %struct.ASN1_TEMPLATE_st* noundef nonnull %incdec.ptr, i8 noundef signext 1, %struct.ASN1_TLC_st* noundef %ctx, i32 noundef %inc, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #7
  %cmp97 = icmp eq i32 %call96, -1
  br i1 %cmp97, label %for.inc, label %for.body.if.end100_crit_edge

for.end.loopexit.loopexit:                        ; preds = %for.inc
  %23 = trunc i64 %indvars.iv.next609 to i32
  br label %for.end

for.end:                                          ; preds = %if.end89, %for.end.loopexit.loopexit, %if.end100.for.end_crit_edge
  %24 = phi i64 [ %.pre612, %if.end100.for.end_crit_edge ], [ %20, %if.end89 ], [ %22, %for.end.loopexit.loopexit ]
  %i.0547 = phi i32 [ %indvars.iv608.lcssa, %if.end100.for.end_crit_edge ], [ 0, %if.end89 ], [ %23, %for.end.loopexit.loopexit ]
  %conv91544 = zext i32 %i.0547 to i64
  %cmp108 = icmp eq i64 %24, %conv91544
  br i1 %cmp108, label %if.then110, label %if.end114

if.then110:                                       ; preds = %for.end
  %tobool111.not = icmp eq i8 %opt, 0
  br i1 %tobool111.not, label %if.end113, label %if.then112

if.then112:                                       ; preds = %if.then110
  tail call void @ASN1_item_ex_free(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef nonnull %it) #8
  br label %cleanup301

if.end113:                                        ; preds = %if.then110
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.asn1_item_embed_d2i, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 143, i8* noundef null) #8
  br label %if.else298

if.end114:                                        ; preds = %for.end
  %call115 = tail call i32 @ossl_asn1_set_choice_selector(%struct.ASN1_VALUE_st** noundef nonnull %pval, i32 noundef %i.0547, %struct.ASN1_ITEM_st* noundef nonnull %it) #8
  br i1 %tobool64.not, label %if.end121, label %land.lhs.true117

land.lhs.true117:                                 ; preds = %if.end114
  %call118 = tail call i32 %asn1_cb.0(i32 noundef 5, %struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef nonnull %it, i8* noundef null) #8
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %err.thread, label %if.end121

if.end121:                                        ; preds = %land.lhs.true117, %if.end114
  %25 = load i8*, i8** %p, align 8, !tbaa !8
  store i8* %25, i8** %in, align 8, !tbaa !8
  br label %cleanup301

sw.bb122:                                         ; preds = %if.end12, %if.end12
  %26 = load i8*, i8** %in, align 8, !tbaa !8
  store i8* %26, i8** %p, align 8, !tbaa !8
  %cmp123 = icmp eq i32 %tag, -1
  %spec.select = select i1 %cmp123, i32 0, i32 %aclass
  %spec.select513 = select i1 %cmp123, i32 16, i32 %tag
  %call127 = call fastcc i32 @asn1_check_tlen(i64* noundef nonnull %len.addr, i32* noundef null, i8* noundef null, i8* noundef nonnull %seq_eoc, i8* noundef nonnull %cst, i8** noundef nonnull %p, i64 noundef %len, i32 noundef %spec.select513, i32 noundef %spec.select, i8 noundef signext %opt, %struct.ASN1_TLC_st* noundef %ctx) #7
  switch i32 %call127, label %if.end135 [
    i32 0, label %if.then129
    i32 -1, label %cleanup301
  ]

if.then129:                                       ; preds = %sw.bb122
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 349, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.asn1_item_embed_d2i, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524554, i8* noundef null) #8
  br label %if.else298

if.end135:                                        ; preds = %sw.bb122
  br i1 %tobool.not, label %if.else141, label %land.lhs.true137

land.lhs.true137:                                 ; preds = %if.end135
  %flags = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %3, i64 0, i32 1
  %27 = load i32, i32* %flags, align 8, !tbaa !28
  %and138 = and i32 %27, 4
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %if.else141, label %if.then140

if.then140:                                       ; preds = %land.lhs.true137
  %28 = load i8*, i8** %p, align 8, !tbaa !8
  %29 = load i8*, i8** %in, align 8, !tbaa !8
  %sub.ptr.lhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.sub.neg = sub i64 %len, %sub.ptr.lhs.cast
  %sub = add i64 %sub.ptr.sub.neg, %sub.ptr.rhs.cast
  store i64 %sub, i64* %len.addr, align 8, !tbaa !4
  br label %if.end142

if.else141:                                       ; preds = %land.lhs.true137, %if.end135
  %30 = load i8, i8* %seq_eoc, align 1, !tbaa !19
  br label %if.end142

if.end142:                                        ; preds = %if.else141, %if.then140
  %seq_nolen.0 = phi i8 [ 1, %if.then140 ], [ %30, %if.else141 ]
  %31 = load i8, i8* %cst, align 1, !tbaa !19
  %tobool143.not = icmp eq i8 %31, 0
  br i1 %tobool143.not, label %if.then144, label %if.end145

if.then144:                                       ; preds = %if.end142
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 361, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.asn1_item_embed_d2i, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 149, i8* noundef null) #8
  br label %if.else298

if.end145:                                        ; preds = %if.end142
  %32 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !8
  %cmp146 = icmp eq %struct.ASN1_VALUE_st* %32, null
  br i1 %cmp146, label %land.lhs.true148, label %if.end152

land.lhs.true148:                                 ; preds = %if.end145
  %call149 = call i32 @ossl_asn1_item_ex_new_intern(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef nonnull %it, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #8
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.then151, label %if.end152

if.then151:                                       ; preds = %land.lhs.true148
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 367, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.asn1_item_embed_d2i, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524554, i8* noundef null) #8
  br label %if.else298

if.end152:                                        ; preds = %land.lhs.true148, %if.end145
  %tobool153.not = icmp eq i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* %asn1_cb.0, null
  br i1 %tobool153.not, label %if.end158, label %land.lhs.true154

land.lhs.true154:                                 ; preds = %if.end152
  %call155 = call i32 %asn1_cb.0(i32 noundef 4, %struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef nonnull %it, i8* noundef null) #8
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %err.thread, label %if.end158

if.end158:                                        ; preds = %land.lhs.true154, %if.end152
  %templates159 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 2
  %33 = load %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st** %templates159, align 8, !tbaa !18
  %tcount162 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 3
  %34 = load i64, i64* %tcount162, align 8, !tbaa !25
  %cmp163560 = icmp sgt i64 %34, 0
  br i1 %cmp163560, label %for.body165, label %for.end242

for.body165:                                      ; preds = %if.end158, %for.inc178
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc178 ], [ 0, %if.end158 ]
  %tt.1562 = phi %struct.ASN1_TEMPLATE_st* [ %incdec.ptr180, %for.inc178 ], [ %33, %if.end158 ]
  %flags166 = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt.1562, i64 0, i32 0
  %35 = load i64, i64* %flags166, align 8, !tbaa !29
  %and167 = and i64 %35, 768
  %tobool168.not = icmp eq i64 %and167, 0
  br i1 %tobool168.not, label %for.inc178, label %if.then169

if.then169:                                       ; preds = %for.body165
  %36 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !8
  %call170 = call %struct.ASN1_TEMPLATE_st* @ossl_asn1_do_adb(%struct.ASN1_VALUE_st* noundef %36, %struct.ASN1_TEMPLATE_st* noundef nonnull %tt.1562, i32 noundef 0) #8
  %cmp171 = icmp eq %struct.ASN1_TEMPLATE_st* %call170, null
  br i1 %cmp171, label %for.inc178, label %if.end174

if.end174:                                        ; preds = %if.then169
  %call175 = call %struct.ASN1_VALUE_st** @ossl_asn1_get_field_ptr(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_TEMPLATE_st* noundef nonnull %call170) #8
  call void @ossl_asn1_template_free(%struct.ASN1_VALUE_st** noundef %call175, %struct.ASN1_TEMPLATE_st* noundef nonnull %call170) #8
  br label %for.inc178

for.inc178:                                       ; preds = %if.end174, %if.then169, %for.body165
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %incdec.ptr180 = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt.1562, i64 1
  %37 = load i64, i64* %tcount162, align 8, !tbaa !25
  %cmp163 = icmp sgt i64 %37, %indvars.iv.next
  br i1 %cmp163, label %for.body165, label %for.end181, !llvm.loop !31

for.end181:                                       ; preds = %for.inc178
  %.pre = load %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st** %templates159, align 8, !tbaa !18
  %cmp186563 = icmp sgt i64 %37, 0
  br i1 %cmp186563, label %for.body188, label %for.end242

for.body188:                                      ; preds = %for.end181, %for.inc239
  %indvars.iv601 = phi i64 [ %indvars.iv.next602, %for.inc239 ], [ 0, %for.end181 ]
  %tt.2565 = phi %struct.ASN1_TEMPLATE_st* [ %incdec.ptr241, %for.inc239 ], [ %.pre, %for.end181 ]
  %38 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !8
  %call191 = call %struct.ASN1_TEMPLATE_st* @ossl_asn1_do_adb(%struct.ASN1_VALUE_st* noundef %38, %struct.ASN1_TEMPLATE_st* noundef %tt.2565, i32 noundef 1) #8
  %cmp192 = icmp eq %struct.ASN1_TEMPLATE_st* %call191, null
  br i1 %cmp192, label %if.else298, label %if.end195

if.end195:                                        ; preds = %for.body188
  %call196 = call %struct.ASN1_VALUE_st** @ossl_asn1_get_field_ptr(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_TEMPLATE_st* noundef nonnull %call191) #8
  %39 = load i64, i64* %len.addr, align 8, !tbaa !4
  %tobool197.not = icmp eq i64 %39, 0
  br i1 %tobool197.not, label %for.end242.loopexit, label %if.end199

if.end199:                                        ; preds = %if.end195
  %40 = load i8*, i8** %p, align 8, !tbaa !8
  %call200 = call fastcc i32 @asn1_check_eoc(i8** noundef nonnull %p, i64 noundef %39) #7
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %if.end210, label %if.then202

if.then202:                                       ; preds = %if.end199
  %41 = load i8, i8* %seq_eoc, align 1, !tbaa !19
  %tobool203.not = icmp eq i8 %41, 0
  br i1 %tobool203.not, label %if.then204, label %for.end242.thread

if.then204:                                       ; preds = %if.then202
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 401, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.asn1_item_embed_d2i, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 159, i8* noundef null) #8
  br label %if.else298

for.end242.thread:                                ; preds = %if.then202
  %42 = trunc i64 %indvars.iv601 to i32
  %43 = load i8*, i8** %p, align 8, !tbaa !8
  %sub.ptr.lhs.cast206 = ptrtoint i8* %43 to i64
  %sub.ptr.rhs.cast207 = ptrtoint i8* %40 to i64
  %sub.ptr.sub208.neg = sub i64 %sub.ptr.rhs.cast207, %sub.ptr.lhs.cast206
  %44 = load i64, i64* %len.addr, align 8, !tbaa !4
  %sub209 = add i64 %sub.ptr.sub208.neg, %44
  store i64 %sub209, i64* %len.addr, align 8, !tbaa !4
  store i8 0, i8* %seq_eoc, align 1, !tbaa !19
  br label %if.end249

if.end210:                                        ; preds = %if.end199
  %45 = load i64, i64* %tcount162, align 8, !tbaa !25
  %sub213 = add nsw i64 %45, -1
  %cmp214 = icmp eq i64 %sub213, %indvars.iv601
  br i1 %cmp214, label %if.end221, label %if.else217

if.else217:                                       ; preds = %if.end210
  %flags218 = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %call191, i64 0, i32 0
  %46 = load i64, i64* %flags218, align 8, !tbaa !29
  %47 = trunc i64 %46 to i8
  %conv220 = and i8 %47, 1
  br label %if.end221

if.end221:                                        ; preds = %if.end210, %if.else217
  %isopt.0 = phi i8 [ %conv220, %if.else217 ], [ 0, %if.end210 ]
  %48 = load i64, i64* %len.addr, align 8, !tbaa !4
  %call222 = call fastcc i32 @asn1_template_ex_d2i(%struct.ASN1_VALUE_st** noundef %call196, i8** noundef nonnull %p, i64 noundef %48, %struct.ASN1_TEMPLATE_st* noundef nonnull %call191, i8 noundef signext %isopt.0, %struct.ASN1_TLC_st* noundef %ctx, i32 noundef %inc, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #7
  switch i32 %call222, label %if.end230 [
    i32 0, label %if.then297
    i32 -1, label %if.then228
  ]

if.then228:                                       ; preds = %if.end221
  call void @ossl_asn1_template_free(%struct.ASN1_VALUE_st** noundef %call196, %struct.ASN1_TEMPLATE_st* noundef nonnull %call191) #8
  br label %for.inc239

if.end230:                                        ; preds = %if.end221
  %49 = load i8*, i8** %p, align 8, !tbaa !8
  %sub.ptr.lhs.cast231 = ptrtoint i8* %49 to i64
  %sub.ptr.rhs.cast232 = ptrtoint i8* %40 to i64
  %sub.ptr.sub233.neg = sub i64 %sub.ptr.rhs.cast232, %sub.ptr.lhs.cast231
  %50 = load i64, i64* %len.addr, align 8, !tbaa !4
  %sub234 = add i64 %sub.ptr.sub233.neg, %50
  store i64 %sub234, i64* %len.addr, align 8, !tbaa !4
  br label %for.inc239

for.inc239:                                       ; preds = %if.then228, %if.end230
  %indvars.iv.next602 = add nuw nsw i64 %indvars.iv601, 1
  %incdec.ptr241 = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt.2565, i64 1
  %51 = load i64, i64* %tcount162, align 8, !tbaa !25
  %cmp186 = icmp sgt i64 %51, %indvars.iv.next602
  br i1 %cmp186, label %for.body188, label %for.end242.loopexit, !llvm.loop !32

for.end242.loopexit:                              ; preds = %for.inc239, %if.end195
  %indvars.iv.next602.lcssa.sink = phi i64 [ %indvars.iv601, %if.end195 ], [ %indvars.iv.next602, %for.inc239 ]
  %tt.2.lcssa.ph = phi %struct.ASN1_TEMPLATE_st* [ %tt.2565, %if.end195 ], [ %incdec.ptr241, %for.inc239 ]
  %indvars.le = trunc i64 %indvars.iv.next602.lcssa.sink to i32
  br label %for.end242

for.end242:                                       ; preds = %for.end242.loopexit, %if.end158, %for.end181
  %i.2.lcssa = phi i32 [ 0, %for.end181 ], [ 0, %if.end158 ], [ %indvars.le, %for.end242.loopexit ]
  %tt.2.lcssa = phi %struct.ASN1_TEMPLATE_st* [ %.pre, %for.end181 ], [ %33, %if.end158 ], [ %tt.2.lcssa.ph, %for.end242.loopexit ]
  %.pr = load i8, i8* %seq_eoc, align 1, !tbaa !19
  %tobool244.not = icmp eq i8 %.pr, 0
  br i1 %tobool244.not, label %if.end249, label %land.lhs.true245

land.lhs.true245:                                 ; preds = %for.end242
  %52 = load i64, i64* %len.addr, align 8, !tbaa !4
  %call246 = call fastcc i32 @asn1_check_eoc(i8** noundef nonnull %p, i64 noundef %52) #7
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %if.then248, label %if.end249

if.then248:                                       ; preds = %land.lhs.true245
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 440, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.asn1_item_embed_d2i, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 137, i8* noundef null) #8
  br label %if.else298

if.end249:                                        ; preds = %for.end242.thread, %land.lhs.true245, %for.end242
  %i.2556 = phi i32 [ %42, %for.end242.thread ], [ %i.2.lcssa, %land.lhs.true245 ], [ %i.2.lcssa, %for.end242 ]
  %tt.2552 = phi %struct.ASN1_TEMPLATE_st* [ %tt.2565, %for.end242.thread ], [ %tt.2.lcssa, %land.lhs.true245 ], [ %tt.2.lcssa, %for.end242 ]
  %tobool250 = icmp eq i8 %seq_nolen.0, 0
  %53 = load i64, i64* %len.addr, align 8
  %tobool252 = icmp ne i64 %53, 0
  %or.cond319 = select i1 %tobool250, i1 %tobool252, i1 false
  br i1 %or.cond319, label %if.then253, label %for.cond255.preheader

for.cond255.preheader:                            ; preds = %if.end249
  %conv256570 = zext i32 %i.2556 to i64
  %54 = load i64, i64* %tcount162, align 8, !tbaa !25
  %cmp258571 = icmp sgt i64 %54, %conv256570
  br i1 %cmp258571, label %for.body260, label %for.end281

if.then253:                                       ; preds = %if.end249
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 445, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.asn1_item_embed_d2i, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 148, i8* noundef null) #8
  br label %if.else298

for.body260:                                      ; preds = %for.cond255.preheader, %for.inc278
  %indvars.iv604 = phi i64 [ %indvars.iv.next605, %for.inc278 ], [ %conv256570, %for.cond255.preheader ]
  %tt.3573 = phi %struct.ASN1_TEMPLATE_st* [ %incdec.ptr279, %for.inc278 ], [ %tt.2552, %for.cond255.preheader ]
  %55 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !8
  %call262 = call %struct.ASN1_TEMPLATE_st* @ossl_asn1_do_adb(%struct.ASN1_VALUE_st* noundef %55, %struct.ASN1_TEMPLATE_st* noundef %tt.3573, i32 noundef 1) #8
  %cmp263 = icmp eq %struct.ASN1_TEMPLATE_st* %call262, null
  br i1 %cmp263, label %if.else298, label %if.end266

if.end266:                                        ; preds = %for.body260
  %flags267 = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %call262, i64 0, i32 0
  %56 = load i64, i64* %flags267, align 8, !tbaa !29
  %and268 = and i64 %56, 1
  %tobool269.not = icmp eq i64 %and268, 0
  br i1 %tobool269.not, label %if.else273, label %for.inc278

if.else273:                                       ; preds = %if.end266
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 465, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.asn1_item_embed_d2i, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 121, i8* noundef null) #8
  br label %if.then297

for.inc278:                                       ; preds = %if.end266
  %call272 = call %struct.ASN1_VALUE_st** @ossl_asn1_get_field_ptr(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_TEMPLATE_st* noundef nonnull %call262) #8
  call void @ossl_asn1_template_free(%struct.ASN1_VALUE_st** noundef %call272, %struct.ASN1_TEMPLATE_st* noundef nonnull %call262) #8
  %incdec.ptr279 = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt.3573, i64 1
  %indvars.iv.next605 = add nuw nsw i64 %indvars.iv604, 1
  %57 = load i64, i64* %tcount162, align 8, !tbaa !25
  %cmp258 = icmp sgt i64 %57, %indvars.iv.next605
  br i1 %cmp258, label %for.body260, label %for.end281, !llvm.loop !33

for.end281:                                       ; preds = %for.inc278, %for.cond255.preheader
  %58 = load i8*, i8** %in, align 8, !tbaa !8
  %59 = load i8*, i8** %p, align 8, !tbaa !8
  %sub.ptr.lhs.cast282 = ptrtoint i8* %59 to i64
  %sub.ptr.rhs.cast283 = ptrtoint i8* %58 to i64
  %sub.ptr.sub284 = sub i64 %sub.ptr.lhs.cast282, %sub.ptr.rhs.cast283
  %conv285 = trunc i64 %sub.ptr.sub284 to i32
  %call286 = call i32 @ossl_asn1_enc_save(%struct.ASN1_VALUE_st** noundef nonnull %pval, i8* noundef %58, i32 noundef %conv285, %struct.ASN1_ITEM_st* noundef nonnull %it) #8
  %tobool287.not = icmp eq i32 %call286, 0
  br i1 %tobool287.not, label %err.thread, label %if.end289

if.end289:                                        ; preds = %for.end281
  br i1 %tobool153.not, label %if.end295, label %land.lhs.true291

land.lhs.true291:                                 ; preds = %if.end289
  %call292 = call i32 %asn1_cb.0(i32 noundef 5, %struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef nonnull %it, i8* noundef null) #8
  %tobool293.not = icmp eq i32 %call292, 0
  br i1 %tobool293.not, label %err.thread, label %if.end295

if.end295:                                        ; preds = %land.lhs.true291, %if.end289
  store i8* %59, i8** %in, align 8, !tbaa !8
  br label %cleanup301

err.thread:                                       ; preds = %land.lhs.true65, %land.lhs.true117, %land.lhs.true154, %for.end281, %land.lhs.true291
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 481, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.asn1_item_embed_d2i, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 100, i8* noundef null) #8
  br label %if.else298

err:                                              ; preds = %if.end100
  tail call void @ossl_asn1_template_free(%struct.ASN1_VALUE_st** noundef %call95.lcssa, %struct.ASN1_TEMPLATE_st* noundef %tt.0580.lcssa) #8
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 312, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.asn1_item_embed_d2i, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524554, i8* noundef null) #8
  %tobool296.not = icmp eq %struct.ASN1_TEMPLATE_st* %tt.0580.lcssa, null
  br i1 %tobool296.not, label %if.else298, label %if.then297

if.then297:                                       ; preds = %if.end221, %if.else273, %err
  %errtt.6538 = phi %struct.ASN1_TEMPLATE_st* [ %tt.0580.lcssa, %err ], [ %call262, %if.else273 ], [ %call191, %if.end221 ]
  %field_name = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %errtt.6538, i64 0, i32 3
  %60 = load i8*, i8** %field_name, align 8, !tbaa !34
  %sname = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 6
  %61 = load i8*, i8** %sname, align 8, !tbaa !35
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* noundef %60, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* noundef %61) #8
  br label %cleanup301

if.else298:                                       ; preds = %for.body188, %for.body260, %err.thread, %if.then204, %if.then20, %if.then32, %if.end47, %if.end40, %if.then28, %if.then87, %if.end113, %if.then62, %if.then129, %if.then144, %if.then151, %if.then248, %if.then253, %if.then11, %err
  %sname299 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 6
  %62 = load i8*, i8** %sname299, align 8, !tbaa !35
  call void (i32, ...) @ERR_add_error_data(i32 noundef 2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %62) #8
  br label %cleanup301

cleanup301:                                       ; preds = %if.then297, %if.else298, %if.end12, %sw.bb122, %if.then44, %if.then37, %if.end295, %if.end121, %if.then112, %if.end57, %if.then54, %if.end48, %if.end23, %if.end21, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 1, %if.end295 ], [ -1, %if.then112 ], [ 1, %if.end121 ], [ %call56, %if.then54 ], [ %call58, %if.end57 ], [ %call49, %if.end48 ], [ %call, %if.end21 ], [ %call24, %if.end23 ], [ -1, %if.then37 ], [ -1, %if.then44 ], [ %call127, %sw.bb122 ], [ 0, %if.end12 ], [ 0, %if.else298 ], [ 0, %if.then297 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %cst) #9
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %seq_eoc) #9
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %oclass) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare void @ASN1_item_ex_free(%struct.ASN1_VALUE_st** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_template_ex_d2i(%struct.ASN1_VALUE_st** noundef %val, i8** nocapture noundef %in, i64 noundef %inlen, %struct.ASN1_TEMPLATE_st* nocapture noundef readonly %tt, i8 noundef signext %opt, %struct.ASN1_TLC_st* noundef %ctx, i32 noundef %depth, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #1 {
entry:
  %len = alloca i64, align 8
  %p = alloca i8*, align 8
  %exp_eoc = alloca i8, align 1
  %cst = alloca i8, align 1
  %0 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %exp_eoc) #9
  %tobool.not = icmp eq %struct.ASN1_VALUE_st** %val, null
  br i1 %tobool.not, label %cleanup33, label %if.end

if.end:                                           ; preds = %entry
  %flags1 = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 0
  %2 = load i64, i64* %flags1, align 8, !tbaa !29
  %conv = trunc i64 %2 to i32
  %3 = load i8*, i8** %in, align 8, !tbaa !8
  store i8* %3, i8** %p, align 8, !tbaa !8
  %and2 = and i32 %conv, 16
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else30, label %if.then4

if.then4:                                         ; preds = %if.end
  %and = and i32 %conv, 192
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %cst) #9
  %tag = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 1
  %4 = load i64, i64* %tag, align 8, !tbaa !36
  %conv5 = trunc i64 %4 to i32
  %call = call fastcc i32 @asn1_check_tlen(i64* noundef nonnull %len, i32* noundef null, i8* noundef null, i8* noundef nonnull %exp_eoc, i8* noundef nonnull %cst, i8** noundef nonnull %p, i64 noundef %inlen, i32 noundef %conv5, i32 noundef %and, i8 noundef signext %opt, %struct.ASN1_TLC_st* noundef %ctx) #7
  %5 = load i8*, i8** %p, align 8, !tbaa !8
  switch i32 %call, label %if.end11 [
    i32 0, label %cleanup.thread.sink.split
    i32 -1, label %cleanup.thread
  ]

if.end11:                                         ; preds = %if.then4
  %6 = load i8, i8* %cst, align 1, !tbaa !19
  %tobool12.not = icmp eq i8 %6, 0
  br i1 %tobool12.not, label %cleanup.thread.sink.split, label %if.end14

if.end14:                                         ; preds = %if.end11
  %7 = load i64, i64* %len, align 8, !tbaa !4
  %call15 = call fastcc i32 @asn1_template_noexp_d2i(%struct.ASN1_VALUE_st** noundef nonnull %val, i8** noundef nonnull %p, i64 noundef %7, %struct.ASN1_TEMPLATE_st* noundef nonnull %tt, i8 noundef signext 0, %struct.ASN1_TLC_st* noundef %ctx, i32 noundef %depth, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #7
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup.thread.sink.split, label %if.end18

if.end18:                                         ; preds = %if.end14
  %8 = load i8*, i8** %p, align 8, !tbaa !8
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub.neg = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %9 = load i64, i64* %len, align 8, !tbaa !4
  %sub = add i64 %sub.ptr.sub.neg, %9
  store i64 %sub, i64* %len, align 8, !tbaa !4
  %10 = load i8, i8* %exp_eoc, align 1, !tbaa !19
  %tobool19.not = icmp eq i8 %10, 0
  br i1 %tobool19.not, label %if.else25, label %if.then20

if.then20:                                        ; preds = %if.end18
  %call21 = call fastcc i32 @asn1_check_eoc(i8** noundef nonnull %p, i64 noundef %sub) #7
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %if.then20.if.end32_crit_edge

if.then20.if.end32_crit_edge:                     ; preds = %if.then20
  %.pre = load i8*, i8** %p, align 8, !tbaa !8
  br label %if.end32

if.else25:                                        ; preds = %if.end18
  %tobool26.not = icmp eq i64 %sub, 0
  br i1 %tobool26.not, label %if.end32, label %err

cleanup.thread.sink.split:                        ; preds = %if.end14, %if.end11, %if.then4
  %.sink67 = phi i32 [ 525, %if.then4 ], [ 530, %if.end11 ], [ 537, %if.end14 ]
  %.sink = phi i32 [ 524554, %if.then4 ], [ 120, %if.end11 ], [ 524554, %if.end14 ]
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink67, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.asn1_template_ex_d2i, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef %.sink, i8* noundef null) #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.sink.split, %if.then4
  %retval.0.ph = phi i32 [ %call, %if.then4 ], [ 0, %cleanup.thread.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %cst) #9
  br label %cleanup33

if.else30:                                        ; preds = %if.end
  %call31 = tail call fastcc i32 @asn1_template_noexp_d2i(%struct.ASN1_VALUE_st** noundef nonnull %val, i8** noundef nonnull %in, i64 noundef %inlen, %struct.ASN1_TEMPLATE_st* noundef nonnull %tt, i8 noundef signext %opt, %struct.ASN1_TLC_st* noundef %ctx, i32 noundef %depth, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #7
  br label %cleanup33

if.end32:                                         ; preds = %if.then20.if.end32_crit_edge, %if.else25
  %11 = phi i8* [ %.pre, %if.then20.if.end32_crit_edge ], [ %8, %if.else25 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %cst) #9
  store i8* %11, i8** %in, align 8, !tbaa !8
  br label %cleanup33

err:                                              ; preds = %if.else25, %if.then20
  %.sink69 = phi i32 [ 545, %if.then20 ], [ 553, %if.else25 ]
  %.sink68 = phi i32 [ 137, %if.then20 ], [ 119, %if.else25 ]
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink69, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.asn1_template_ex_d2i, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef %.sink68, i8* noundef null) #8
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %cst) #9
  br label %cleanup33

cleanup33:                                        ; preds = %cleanup.thread, %entry, %err, %if.end32, %if.else30
  %retval.1 = phi i32 [ 0, %err ], [ 1, %if.end32 ], [ %call31, %if.else30 ], [ 0, %entry ], [ %retval.0.ph, %cleanup.thread ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %exp_eoc) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_d2i_ex_primitive(%struct.ASN1_VALUE_st** noundef %pval, i8** nocapture noundef %in, i64 noundef %inlen, %struct.ASN1_ITEM_st* noundef %it, i32 noundef %tag, i32 noundef %aclass, i8 noundef signext %opt, %struct.ASN1_TLC_st* noundef %ctx) unnamed_addr #1 {
entry:
  %utype = alloca i32, align 4
  %plen = alloca i64, align 8
  %cst = alloca i8, align 1
  %inf = alloca i8, align 1
  %free_cont = alloca i8, align 1
  %p = alloca i8*, align 8
  %buf = alloca %struct.buf_mem_st, align 8
  %oclass = alloca i8, align 1
  %0 = bitcast i32* %utype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %1 = bitcast i64* %plen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %cst) #9
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %inf) #9
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %free_cont) #9
  store i8 0, i8* %free_cont, align 1, !tbaa !19
  %2 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  %3 = bitcast %struct.buf_mem_st* %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %cmp = icmp eq %struct.ASN1_VALUE_st** %pval, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 712, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.asn1_d2i_ex_primitive, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 125, i8* noundef null) #8
  br label %cleanup111

if.end:                                           ; preds = %entry
  %itype = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 0
  %4 = load i8, i8* %itype, align 8, !tbaa !17
  %cmp1 = icmp eq i8 %4, 5
  br i1 %cmp1, label %if.end6.thread, label %if.end6

if.end6:                                          ; preds = %if.end
  %utype4 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 1
  %5 = load i64, i64* %utype4, align 8, !tbaa !21
  %conv5 = trunc i64 %5 to i32
  store i32 %conv5, i32* %utype, align 4, !tbaa !20
  %cmp7 = icmp eq i32 %conv5, -4
  br i1 %cmp7, label %if.then9, label %if.end24

if.end6.thread:                                   ; preds = %if.end
  store i32 %tag, i32* %utype, align 4, !tbaa !20
  %cmp7156 = icmp eq i32 %tag, -4
  br i1 %cmp7156, label %if.then9.thread, label %if.end24

if.then9.thread:                                  ; preds = %if.end6.thread
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %oclass) #9
  br label %if.end13

if.then9:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %oclass) #9
  %cmp10 = icmp sgt i32 %tag, -1
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then9
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 726, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.asn1_d2i_ex_primitive, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 127, i8* noundef null) #8
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %oclass) #9
  br label %cleanup111

if.end13:                                         ; preds = %if.then9.thread, %if.then9
  %tag.addr.0158161 = phi i32 [ -1, %if.then9.thread ], [ %tag, %if.then9 ]
  %tobool.not = icmp eq i8 %opt, 0
  br i1 %tobool.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end13
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 730, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.asn1_d2i_ex_primitive, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 126, i8* noundef null) #8
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %oclass) #9
  br label %cleanup111

if.end15:                                         ; preds = %if.end13
  %6 = load i8*, i8** %in, align 8, !tbaa !8
  store i8* %6, i8** %p, align 8, !tbaa !8
  %call = call fastcc i32 @asn1_check_tlen(i64* noundef null, i32* noundef nonnull %utype, i8* noundef nonnull %oclass, i8* noundef null, i8* noundef null, i8** noundef nonnull %p, i64 noundef %inlen, i32 noundef -1, i32 noundef 0, i8 noundef signext 0, %struct.ASN1_TLC_st* noundef %ctx) #7
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 737, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.asn1_d2i_ex_primitive, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524554, i8* noundef null) #8
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %oclass) #9
  br label %cleanup111

if.end18:                                         ; preds = %if.end15
  %7 = load i8, i8* %oclass, align 1, !tbaa !19
  %cmp20.not = icmp eq i8 %7, 0
  br i1 %cmp20.not, label %if.end18.cleanup_crit_edge, label %if.then22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  %.pre.pre = load i32, i32* %utype, align 4
  br label %cleanup

if.then22:                                        ; preds = %if.end18
  store i32 -3, i32* %utype, align 4, !tbaa !20
  br label %cleanup

cleanup:                                          ; preds = %if.end18.cleanup_crit_edge, %if.then22
  %.pre = phi i32 [ %.pre.pre, %if.end18.cleanup_crit_edge ], [ -3, %if.then22 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %oclass) #9
  br label %if.end24

if.end24:                                         ; preds = %if.end6.thread, %cleanup, %if.end6
  %8 = phi i32 [ %tag, %if.end6.thread ], [ %.pre, %cleanup ], [ %conv5, %if.end6 ]
  %tag.addr.0157 = phi i32 [ -1, %if.end6.thread ], [ %tag.addr.0158161, %cleanup ], [ %tag, %if.end6 ]
  %cmp25 = icmp eq i32 %tag.addr.0157, -1
  %spec.select = select i1 %cmp25, i32 0, i32 %aclass
  %spec.select153 = select i1 %cmp25, i32 %8, i32 %tag.addr.0157
  %9 = load i8*, i8** %in, align 8, !tbaa !8
  store i8* %9, i8** %p, align 8, !tbaa !8
  %call29 = call fastcc i32 @asn1_check_tlen(i64* noundef nonnull %plen, i32* noundef null, i8* noundef null, i8* noundef nonnull %inf, i8* noundef nonnull %cst, i8** noundef nonnull %p, i64 noundef %inlen, i32 noundef %spec.select153, i32 noundef %spec.select, i8 noundef signext %opt, %struct.ASN1_TLC_st* noundef %ctx) #7
  switch i32 %call29, label %if.end37 [
    i32 0, label %if.then31
    i32 -1, label %cleanup111
  ]

if.then31:                                        ; preds = %if.end24
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 752, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.asn1_d2i_ex_primitive, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524554, i8* noundef null) #8
  br label %cleanup111

if.end37:                                         ; preds = %if.end24
  %10 = load i32, i32* %utype, align 4, !tbaa !20
  switch i32 %10, label %if.else69 [
    i32 -3, label %do.body
    i32 16, label %if.else53
    i32 17, label %if.else53
  ]

do.body:                                          ; preds = %if.end37
  %cmp49.not = icmp eq %struct.ASN1_TLC_st* %ctx, null
  br i1 %cmp49.not, label %if.end57, label %if.then51

if.then51:                                        ; preds = %do.body
  %valid = getelementptr inbounds %struct.ASN1_TLC_st, %struct.ASN1_TLC_st* %ctx, i64 0, i32 0
  store i8 0, i8* %valid, align 8, !tbaa !10
  br label %if.end57

if.else53:                                        ; preds = %if.end37, %if.end37
  %11 = load i8, i8* %cst, align 1, !tbaa !19
  %tobool54.not = icmp eq i8 %11, 0
  br i1 %tobool54.not, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.else53
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 769, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.asn1_d2i_ex_primitive, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 156, i8* noundef null) #8
  br label %cleanup111

if.end57:                                         ; preds = %if.else53, %do.body, %if.then51
  %12 = load i8*, i8** %in, align 8, !tbaa !8
  %13 = load i8, i8* %inf, align 1, !tbaa !19
  %tobool58.not = icmp eq i8 %13, 0
  br i1 %tobool58.not, label %if.else64, label %if.then59

if.then59:                                        ; preds = %if.end57
  %14 = load i64, i64* %plen, align 8, !tbaa !4
  %call60 = call fastcc i32 @asn1_find_end(i8** noundef nonnull %p, i64 noundef %14, i8 noundef signext %13) #7
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %err, label %if.end63

if.end63:                                         ; preds = %if.then59
  %15 = load i8*, i8** %p, align 8, !tbaa !8
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %if.end101

if.else64:                                        ; preds = %if.end57
  %16 = load i8*, i8** %p, align 8, !tbaa !8
  %sub.ptr.lhs.cast65 = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast66 = ptrtoint i8* %12 to i64
  %sub.ptr.sub67 = sub i64 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast66
  %17 = load i64, i64* %plen, align 8, !tbaa !4
  %add = add nsw i64 %sub.ptr.sub67, %17
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %add.ptr, i8** %p, align 8, !tbaa !8
  br label %if.end101

if.else69:                                        ; preds = %if.end37
  %18 = load i8, i8* %cst, align 1, !tbaa !19
  %tobool70.not = icmp eq i8 %18, 0
  br i1 %tobool70.not, label %if.else98, label %if.then71

if.then71:                                        ; preds = %if.else69
  switch i32 %10, label %if.end87 [
    i32 10, label %if.then86
    i32 6, label %if.then86
    i32 5, label %if.then86
    i32 2, label %if.then86
    i32 1, label %if.then86
  ]

if.then86:                                        ; preds = %if.then71, %if.then71, %if.then71, %if.then71, %if.then71
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 787, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.asn1_d2i_ex_primitive, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 195, i8* noundef null) #8
  br label %cleanup111

if.end87:                                         ; preds = %if.then71
  store i8 1, i8* %free_cont, align 1, !tbaa !19
  %19 = load i64, i64* %plen, align 8, !tbaa !4
  %20 = load i8, i8* %inf, align 1, !tbaa !19
  %call88 = call fastcc i32 @asn1_collect(%struct.buf_mem_st* noundef nonnull %buf, i8** noundef nonnull %p, i64 noundef %19, i8 noundef signext %20, i32 noundef 0) #7
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %err, label %if.end91

if.end91:                                         ; preds = %if.end87
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %buf, i64 0, i32 0
  %21 = load i64, i64* %length, align 8, !tbaa !37
  %add92 = add nsw i64 %21, 1
  %call93 = call i64 @BUF_MEM_grow_clean(%struct.buf_mem_st* noundef nonnull %buf, i64 noundef %add92) #8
  %tobool94.not = icmp eq i64 %call93, 0
  br i1 %tobool94.not, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.end91
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 805, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.asn1_d2i_ex_primitive, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #8
  br label %err

if.end96:                                         ; preds = %if.end91
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %buf, i64 0, i32 1
  %22 = load i8*, i8** %data, align 8, !tbaa !39
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 %21
  store i8 0, i8* %arrayidx, align 1, !tbaa !19
  %23 = load i8*, i8** %data, align 8, !tbaa !39
  br label %if.end101

if.else98:                                        ; preds = %if.else69
  %24 = load i8*, i8** %p, align 8, !tbaa !8
  %25 = load i64, i64* %plen, align 8, !tbaa !4
  %add.ptr99 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %add.ptr99, i8** %p, align 8, !tbaa !8
  br label %if.end101

if.end101:                                        ; preds = %if.end96, %if.else98, %if.end63, %if.else64
  %cont.0 = phi i8* [ %12, %if.end63 ], [ %12, %if.else64 ], [ %23, %if.end96 ], [ %24, %if.else98 ]
  %len.0 = phi i64 [ %sub.ptr.sub, %if.end63 ], [ %add, %if.else64 ], [ %21, %if.end96 ], [ %25, %if.else98 ]
  %conv102 = trunc i64 %len.0 to i32
  %26 = load i32, i32* %utype, align 4, !tbaa !20
  %call103 = call fastcc i32 @asn1_ex_c2i(%struct.ASN1_VALUE_st** noundef nonnull %pval, i8* noundef %cont.0, i32 noundef %conv102, i32 noundef %26, i8* noundef nonnull %free_cont, %struct.ASN1_ITEM_st* noundef nonnull %it) #7
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %err, label %if.end106

if.end106:                                        ; preds = %if.end101
  %27 = load i8*, i8** %p, align 8, !tbaa !8
  store i8* %27, i8** %in, align 8, !tbaa !8
  br label %err

err:                                              ; preds = %if.end101, %if.end87, %if.then59, %if.end106, %if.then95
  %ret.0 = phi i32 [ 1, %if.end106 ], [ 0, %if.end101 ], [ 0, %if.then59 ], [ 0, %if.then95 ], [ 0, %if.end87 ]
  %28 = load i8, i8* %free_cont, align 1, !tbaa !19
  %tobool107.not = icmp eq i8 %28, 0
  br i1 %tobool107.not, label %cleanup111, label %if.then108

if.then108:                                       ; preds = %err
  %data109 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %buf, i64 0, i32 1
  %29 = load i8*, i8** %data109, align 8, !tbaa !39
  call void @CRYPTO_free(i8* noundef %29, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 825) #8
  br label %cleanup111

cleanup111:                                       ; preds = %err, %if.then108, %if.end24, %if.then12, %if.then14, %if.then17, %if.then86, %if.then55, %if.then31, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ 0, %if.then55 ], [ 0, %if.then86 ], [ 0, %if.then31 ], [ 0, %if.then17 ], [ 0, %if.then14 ], [ 0, %if.then12 ], [ %call29, %if.end24 ], [ %ret.0, %if.then108 ], [ %ret.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %free_cont) #9
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %inf) #9
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %cst) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_check_tlen(i64* noundef writeonly %olen, i32* noundef writeonly %otag, i8* noundef writeonly %oclass, i8* noundef writeonly %inf, i8* noundef writeonly %cst, i8** nocapture noundef %in, i64 noundef %len, i32 noundef %exptag, i32 noundef %expclass, i8 noundef signext %opt, %struct.ASN1_TLC_st* noundef %ctx) unnamed_addr #1 {
entry:
  %ptag = alloca i32, align 4
  %pclass = alloca i32, align 4
  %plen = alloca i64, align 8
  %p = alloca i8*, align 8
  %0 = bitcast i32* %ptag to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %1 = bitcast i32* %pclass to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  %2 = bitcast i64* %plen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
  %4 = load i8*, i8** %in, align 8, !tbaa !8
  store i8* %4, i8** %p, align 8, !tbaa !8
  %cmp = icmp slt i64 %len, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1148, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.asn1_check_tlen, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 224, i8* noundef null) #8
  br label %do.body85

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq %struct.ASN1_TLC_st* %ctx, null
  br i1 %cmp1.not, label %if.else.thread, label %land.lhs.true

if.else.thread:                                   ; preds = %if.end
  %call134 = call i32 @ASN1_get_object(i8** noundef nonnull %p, i64* noundef nonnull %plen, i32* noundef nonnull %ptag, i32* noundef nonnull %pclass, i64 noundef %len) #8
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end
  %valid = getelementptr inbounds %struct.ASN1_TLC_st, %struct.ASN1_TLC_st* %ctx, i64 0, i32 0
  %5 = load i8, i8* %valid, align 8, !tbaa !10
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then8, label %if.then2

if.then2:                                         ; preds = %land.lhs.true
  %ret = getelementptr inbounds %struct.ASN1_TLC_st, %struct.ASN1_TLC_st* %ctx, i64 0, i32 1
  %6 = load i32, i32* %ret, align 4, !tbaa !40
  %plen3 = getelementptr inbounds %struct.ASN1_TLC_st, %struct.ASN1_TLC_st* %ctx, i64 0, i32 2
  %7 = load i64, i64* %plen3, align 8, !tbaa !41
  store i64 %7, i64* %plen, align 8, !tbaa !4
  %pclass4 = getelementptr inbounds %struct.ASN1_TLC_st, %struct.ASN1_TLC_st* %ctx, i64 0, i32 4
  %8 = load i32, i32* %pclass4, align 4, !tbaa !42
  store i32 %8, i32* %pclass, align 4, !tbaa !20
  %ptag5 = getelementptr inbounds %struct.ASN1_TLC_st, %struct.ASN1_TLC_st* %ctx, i64 0, i32 3
  %9 = load i32, i32* %ptag5, align 8, !tbaa !43
  store i32 %9, i32* %ptag, align 4, !tbaa !20
  %hdrlen = getelementptr inbounds %struct.ASN1_TLC_st, %struct.ASN1_TLC_st* %ctx, i64 0, i32 5
  %10 = load i32, i32* %hdrlen, align 8, !tbaa !44
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8, !tbaa !8
  br label %if.end26

if.then8:                                         ; preds = %land.lhs.true
  %call = call i32 @ASN1_get_object(i8** noundef nonnull %p, i64* noundef nonnull %plen, i32* noundef nonnull %ptag, i32* noundef nonnull %pclass, i64 noundef %len) #8
  %ret9 = getelementptr inbounds %struct.ASN1_TLC_st, %struct.ASN1_TLC_st* %ctx, i64 0, i32 1
  store i32 %call, i32* %ret9, align 4, !tbaa !40
  %11 = load i64, i64* %plen, align 8, !tbaa !4
  %plen10 = getelementptr inbounds %struct.ASN1_TLC_st, %struct.ASN1_TLC_st* %ctx, i64 0, i32 2
  store i64 %11, i64* %plen10, align 8, !tbaa !41
  %12 = load i32, i32* %pclass, align 4, !tbaa !20
  %pclass11 = getelementptr inbounds %struct.ASN1_TLC_st, %struct.ASN1_TLC_st* %ctx, i64 0, i32 4
  store i32 %12, i32* %pclass11, align 4, !tbaa !42
  %13 = load i32, i32* %ptag, align 4, !tbaa !20
  %ptag12 = getelementptr inbounds %struct.ASN1_TLC_st, %struct.ASN1_TLC_st* %ctx, i64 0, i32 3
  store i32 %13, i32* %ptag12, align 8, !tbaa !43
  %14 = load i8*, i8** %p, align 8, !tbaa !8
  %sub.ptr.lhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv13 = trunc i64 %sub.ptr.sub to i32
  %hdrlen14 = getelementptr inbounds %struct.ASN1_TLC_st, %struct.ASN1_TLC_st* %ctx, i64 0, i32 5
  store i32 %conv13, i32* %hdrlen14, align 8, !tbaa !44
  store i8 1, i8* %valid, align 8, !tbaa !10
  %and = and i32 %call, 129
  %cmp16 = icmp eq i32 %and, 0
  br i1 %cmp16, label %land.lhs.true18, label %if.end26

land.lhs.true18:                                  ; preds = %if.then8
  %sext = shl i64 %sub.ptr.sub, 32
  %conv20 = ashr exact i64 %sext, 32
  %add = add nsw i64 %conv20, %11
  %cmp21 = icmp sgt i64 %add, %len
  br i1 %cmp21, label %do.body85.thread, label %if.end26

do.body85.thread:                                 ; preds = %land.lhs.true18
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1171, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.asn1_check_tlen, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 155, i8* noundef null) #8
  br label %if.then88

if.end26:                                         ; preds = %if.else.thread, %land.lhs.true18, %if.then8, %if.then2
  %i.0 = phi i32 [ %6, %if.then2 ], [ %call, %land.lhs.true18 ], [ %call, %if.then8 ], [ %call134, %if.else.thread ]
  %and27 = and i32 %i.0, 128
  %cmp28.not = icmp eq i32 %and27, 0
  br i1 %cmp28.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end26
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1178, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.asn1_check_tlen, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 102, i8* noundef null) #8
  br label %do.body85

if.end31:                                         ; preds = %if.end26
  %cmp32 = icmp sgt i32 %exptag, -1
  br i1 %cmp32, label %if.then34, label %if.end51

if.then34:                                        ; preds = %if.end31
  %15 = load i32, i32* %ptag, align 4, !tbaa !20
  %cmp35.not = icmp eq i32 %15, %exptag
  %16 = load i32, i32* %pclass, align 4
  %cmp37.not = icmp eq i32 %16, %expclass
  %or.cond = select i1 %cmp35.not, i1 %cmp37.not, i1 false
  br i1 %or.cond, label %do.body, label %if.then39

if.then39:                                        ; preds = %if.then34
  %cmp41.not = icmp eq i8 %opt, 0
  br i1 %cmp41.not, label %if.end44, label %cleanup

if.end44:                                         ; preds = %if.then39
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1188, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.asn1_check_tlen, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 168, i8* noundef null) #8
  br label %do.body85

do.body:                                          ; preds = %if.then34
  br i1 %cmp1.not, label %if.end51, label %if.then48

if.then48:                                        ; preds = %do.body
  %valid49 = getelementptr inbounds %struct.ASN1_TLC_st, %struct.ASN1_TLC_st* %ctx, i64 0, i32 0
  store i8 0, i8* %valid49, align 8, !tbaa !10
  br label %if.end51

if.end51:                                         ; preds = %do.body, %if.then48, %if.end31
  %and52 = and i32 %i.0, 1
  %cmp53.not = icmp eq i32 %and52, 0
  br i1 %cmp53.not, label %if.end59, label %if.then55

if.then55:                                        ; preds = %if.end51
  %17 = load i8*, i8** %p, align 8, !tbaa !8
  %sub.ptr.lhs.cast56 = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast57 = ptrtoint i8* %4 to i64
  %sub.ptr.sub58.neg = add i64 %sub.ptr.rhs.cast57, %len
  %sub = sub i64 %sub.ptr.sub58.neg, %sub.ptr.lhs.cast56
  store i64 %sub, i64* %plen, align 8, !tbaa !4
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.end51
  %cmp60.not = icmp eq i8* %inf, null
  br i1 %cmp60.not, label %if.end65, label %if.then62

if.then62:                                        ; preds = %if.end59
  %conv64 = trunc i32 %and52 to i8
  store i8 %conv64, i8* %inf, align 1, !tbaa !19
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end59
  %cmp66.not = icmp eq i8* %cst, null
  br i1 %cmp66.not, label %if.end71, label %if.then68

if.then68:                                        ; preds = %if.end65
  %18 = trunc i32 %i.0 to i8
  %conv70 = and i8 %18, 32
  store i8 %conv70, i8* %cst, align 1, !tbaa !19
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.end65
  %cmp72.not = icmp eq i64* %olen, null
  br i1 %cmp72.not, label %if.end75, label %if.then74

if.then74:                                        ; preds = %if.end71
  %19 = load i64, i64* %plen, align 8, !tbaa !4
  store i64 %19, i64* %olen, align 8, !tbaa !4
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end71
  %cmp76.not = icmp eq i8* %oclass, null
  br i1 %cmp76.not, label %if.end80, label %if.then78

if.then78:                                        ; preds = %if.end75
  %20 = load i32, i32* %pclass, align 4, !tbaa !20
  %conv79 = trunc i32 %20 to i8
  store i8 %conv79, i8* %oclass, align 1, !tbaa !19
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.end75
  %cmp81.not = icmp eq i32* %otag, null
  br i1 %cmp81.not, label %if.end84, label %if.then83

if.then83:                                        ; preds = %if.end80
  %21 = load i32, i32* %ptag, align 4, !tbaa !20
  store i32 %21, i32* %otag, align 4, !tbaa !20
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.end80
  %22 = load i8*, i8** %p, align 8, !tbaa !8
  store i8* %22, i8** %in, align 8, !tbaa !8
  br label %cleanup

do.body85:                                        ; preds = %if.then, %if.then30, %if.end44
  %cmp86.not = icmp eq %struct.ASN1_TLC_st* %ctx, null
  br i1 %cmp86.not, label %cleanup, label %if.then88

if.then88:                                        ; preds = %do.body85.thread, %do.body85
  %valid89 = getelementptr inbounds %struct.ASN1_TLC_st, %struct.ASN1_TLC_st* %ctx, i64 0, i32 0
  store i8 0, i8* %valid89, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %do.body85, %if.then88, %if.then39, %if.end84
  %retval.0 = phi i32 [ 1, %if.end84 ], [ -1, %if.then39 ], [ 0, %if.then88 ], [ 0, %do.body85 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare i32 @ossl_asn1_get_choice_selector(%struct.ASN1_VALUE_st** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #3

declare %struct.ASN1_VALUE_st** @ossl_asn1_get_field_ptr(%struct.ASN1_VALUE_st** noundef, %struct.ASN1_TEMPLATE_st* noundef) local_unnamed_addr #3

declare void @ossl_asn1_template_free(%struct.ASN1_VALUE_st** noundef, %struct.ASN1_TEMPLATE_st* noundef) local_unnamed_addr #3

declare i32 @ossl_asn1_set_choice_selector(%struct.ASN1_VALUE_st** noundef, i32 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #3

declare i32 @ossl_asn1_item_ex_new_intern(%struct.ASN1_VALUE_st** noundef, %struct.ASN1_ITEM_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare %struct.ASN1_TEMPLATE_st* @ossl_asn1_do_adb(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_TEMPLATE_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @asn1_check_eoc(i8** nocapture noundef %in, i64 noundef %len) unnamed_addr #4 {
entry:
  %cmp = icmp slt i64 %len, 2
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** %in, align 8, !tbaa !8
  %1 = load i8, i8* %0, align 1, !tbaa !19
  %cmp1 = icmp eq i8 %1, 0
  br i1 %cmp1, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %arrayidx3 = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %arrayidx3, align 1, !tbaa !19
  %cmp5 = icmp eq i8 %2, 0
  br i1 %cmp5, label %if.then7, label %cleanup

if.then7:                                         ; preds = %land.lhs.true
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 2
  store i8* %add.ptr, i8** %in, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true, %entry, %if.then7
  %retval.0 = phi i32 [ 1, %if.then7 ], [ 0, %entry ], [ 0, %land.lhs.true ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare i32 @ossl_asn1_enc_save(%struct.ASN1_VALUE_st** noundef, i8* noundef, i32 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #3

declare void @ERR_add_error_data(i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_template_noexp_d2i(%struct.ASN1_VALUE_st** noundef %val, i8** nocapture noundef %in, i64 noundef %len, %struct.ASN1_TEMPLATE_st* nocapture noundef readonly %tt, i8 noundef signext %opt, %struct.ASN1_TLC_st* noundef %ctx, i32 noundef %depth, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #1 {
entry:
  %len.addr = alloca i64, align 8
  %tval = alloca %struct.ASN1_VALUE_st*, align 8
  %p = alloca i8*, align 8
  %sk_eoc = alloca i8, align 1
  %vtmp = alloca %struct.ASN1_VALUE_st*, align 8
  %skfield = alloca %struct.ASN1_VALUE_st*, align 8
  store i64 %len, i64* %len.addr, align 8, !tbaa !4
  %0 = bitcast %struct.ASN1_VALUE_st** %tval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %tobool.not = icmp eq %struct.ASN1_VALUE_st** %val, null
  br i1 %tobool.not, label %cleanup115, label %if.end

if.end:                                           ; preds = %entry
  %flags1 = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 0
  %2 = load i64, i64* %flags1, align 8, !tbaa !29
  %conv = trunc i64 %2 to i32
  %and = and i32 %conv, 192
  %3 = load i8*, i8** %in, align 8, !tbaa !8
  store i8* %3, i8** %p, align 8, !tbaa !8
  %and3 = and i64 %2, 4096
  %tobool4.not = icmp eq i64 %and3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  %4 = bitcast %struct.ASN1_VALUE_st** %tval to %struct.ASN1_VALUE_st***
  store %struct.ASN1_VALUE_st** %val, %struct.ASN1_VALUE_st*** %4, align 8, !tbaa !8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %val.addr.0 = phi %struct.ASN1_VALUE_st** [ %tval, %if.then5 ], [ %val, %if.end ]
  %and7 = and i32 %conv, 6
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else84, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %sk_eoc) #9
  %and10 = and i32 %conv, 8
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then9
  %tag = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 1
  %5 = load i64, i64* %tag, align 8, !tbaa !36
  %conv13 = trunc i64 %5 to i32
  br label %if.end19

if.else:                                          ; preds = %if.then9
  %and14 = and i32 %conv, 2
  %tobool15.not = icmp eq i32 %and14, 0
  %. = select i1 %tobool15.not, i32 16, i32 17
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then12
  %sktag.0 = phi i32 [ %conv13, %if.then12 ], [ %., %if.else ]
  %skaclass.0 = phi i32 [ %and, %if.then12 ], [ 0, %if.else ]
  %call = call fastcc i32 @asn1_check_tlen(i64* noundef nonnull %len.addr, i32* noundef null, i8* noundef null, i8* noundef nonnull %sk_eoc, i8* noundef null, i8** noundef nonnull %p, i64 noundef %len, i32 noundef %sktag.0, i32 noundef %skaclass.0, i8 noundef signext %opt, %struct.ASN1_TLC_st* noundef %ctx) #7
  switch i32 %call, label %if.end26 [
    i32 0, label %if.then21
    i32 -1, label %cleanup79.thread178
  ]

if.then21:                                        ; preds = %if.end19
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 613, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.asn1_template_noexp_d2i, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524554, i8* noundef null) #8
  br label %cleanup79.thread178

if.end26:                                         ; preds = %if.end19
  %6 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %val.addr.0, align 8, !tbaa !8
  %cmp27 = icmp eq %struct.ASN1_VALUE_st* %6, null
  br i1 %cmp27, label %if.then29, label %if.else31

if.then29:                                        ; preds = %if.end26
  %call30 = call %struct.stack_st* @OPENSSL_sk_new_null() #8
  %7 = bitcast %struct.ASN1_VALUE_st** %val.addr.0 to %struct.stack_st**
  store %struct.stack_st* %call30, %struct.stack_st** %7, align 8, !tbaa !8
  %8 = bitcast %struct.stack_st* %call30 to %struct.ASN1_VALUE_st*
  br label %if.end39

if.else31:                                        ; preds = %if.end26
  %9 = bitcast %struct.ASN1_VALUE_st* %6 to %struct.stack_st_ASN1_VALUE*
  %10 = bitcast %struct.ASN1_VALUE_st** %vtmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #9
  %call32 = call fastcc %struct.stack_st* @ossl_check_const_ASN1_VALUE_sk_type(%struct.stack_st_ASN1_VALUE* noundef nonnull %9) #7
  %call33187 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call32) #8
  %cmp34188 = icmp sgt i32 %call33187, 0
  br i1 %cmp34188, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.else31
  %call36 = call fastcc %struct.stack_st* @ossl_check_ASN1_VALUE_sk_type(%struct.stack_st_ASN1_VALUE* noundef nonnull %9) #7
  %11 = bitcast %struct.ASN1_VALUE_st** %vtmp to i8**
  %item = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 4
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %call37 = call i8* @OPENSSL_sk_pop(%struct.stack_st* noundef %call36) #8
  store i8* %call37, i8** %11, align 8, !tbaa !8
  %12 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %item, align 8, !tbaa !45
  %call38 = call %struct.ASN1_ITEM_st* %12() #8
  call void @ASN1_item_ex_free(%struct.ASN1_VALUE_st** noundef nonnull %vtmp, %struct.ASN1_ITEM_st* noundef %call38) #8
  %call33 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call32) #8
  %cmp34 = icmp sgt i32 %call33, 0
  br i1 %cmp34, label %while.body, label %while.end, !llvm.loop !46

while.end:                                        ; preds = %while.body, %if.else31
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #9
  %.pr = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %val.addr.0, align 8, !tbaa !8
  br label %if.end39

if.end39:                                         ; preds = %while.end, %if.then29
  %13 = phi %struct.ASN1_VALUE_st* [ %.pr, %while.end ], [ %8, %if.then29 ]
  %cmp40 = icmp eq %struct.ASN1_VALUE_st* %13, null
  br i1 %cmp40, label %if.then42, label %while.cond44.preheader

while.cond44.preheader:                           ; preds = %if.end39
  %14 = load i64, i64* %len.addr, align 8, !tbaa !4
  %cmp45190 = icmp sgt i64 %14, 0
  br i1 %cmp45190, label %while.body47.lr.ph, label %while.end75

while.body47.lr.ph:                               ; preds = %while.cond44.preheader
  %15 = bitcast %struct.ASN1_VALUE_st** %skfield to i8*
  %item55 = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 4
  %16 = bitcast %struct.ASN1_VALUE_st** %val.addr.0 to %struct.stack_st_ASN1_VALUE**
  %17 = bitcast %struct.ASN1_VALUE_st** %skfield to i8**
  br label %while.body47

if.then42:                                        ; preds = %if.end39
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 632, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.asn1_template_noexp_d2i, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup79.thread

while.body47:                                     ; preds = %while.body47.lr.ph, %cleanup
  %18 = phi i64 [ %14, %while.body47.lr.ph ], [ %33, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #9
  %19 = load i8*, i8** %p, align 8, !tbaa !8
  %call48 = call fastcc i32 @asn1_check_eoc(i8** noundef nonnull %p, i64 noundef %18) #7
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end54, label %if.then50

if.then50:                                        ; preds = %while.body47
  %20 = load i8, i8* %sk_eoc, align 1, !tbaa !19
  %tobool51.not = icmp eq i8 %20, 0
  br i1 %tobool51.not, label %if.then52, label %while.end75.thread

if.then52:                                        ; preds = %if.then50
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 643, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.asn1_template_noexp_d2i, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 159, i8* noundef null) #8
  br label %cleanup.thread

while.end75.thread:                               ; preds = %if.then50
  %21 = load i8*, i8** %p, align 8, !tbaa !8
  %sub.ptr.lhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.sub.neg = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %22 = load i64, i64* %len.addr, align 8, !tbaa !4
  %sub = add i64 %sub.ptr.sub.neg, %22
  store i64 %sub, i64* %len.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #9
  br label %cleanup79

if.end54:                                         ; preds = %while.body47
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %skfield, align 8, !tbaa !8
  %23 = load i64, i64* %len.addr, align 8, !tbaa !4
  %24 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %item55, align 8, !tbaa !45
  %call56 = call %struct.ASN1_ITEM_st* %24() #8
  %call57 = call fastcc i32 @asn1_item_embed_d2i(%struct.ASN1_VALUE_st** noundef nonnull %skfield, i8** noundef nonnull %p, i64 noundef %23, %struct.ASN1_ITEM_st* noundef %call56, i32 noundef -1, i32 noundef 0, i8 noundef signext 0, %struct.ASN1_TLC_st* noundef %ctx, i32 noundef %depth, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #7
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then59, label %if.end62

if.then59:                                        ; preds = %if.end54
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 654, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.asn1_template_noexp_d2i, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524554, i8* noundef null) #8
  %25 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %skfield, align 8, !tbaa !8
  %26 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %item55, align 8, !tbaa !45
  %call61 = call %struct.ASN1_ITEM_st* %26() #8
  call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %25, %struct.ASN1_ITEM_st* noundef %call61) #8
  br label %cleanup.thread

if.end62:                                         ; preds = %if.end54
  %27 = load i8*, i8** %p, align 8, !tbaa !8
  %sub.ptr.lhs.cast63 = ptrtoint i8* %27 to i64
  %sub.ptr.rhs.cast64 = ptrtoint i8* %19 to i64
  %sub.ptr.sub65.neg = sub i64 %sub.ptr.rhs.cast64, %sub.ptr.lhs.cast63
  %28 = load i64, i64* %len.addr, align 8, !tbaa !4
  %sub66 = add i64 %sub.ptr.sub65.neg, %28
  store i64 %sub66, i64* %len.addr, align 8, !tbaa !4
  %29 = load %struct.stack_st_ASN1_VALUE*, %struct.stack_st_ASN1_VALUE** %16, align 8, !tbaa !8
  %call67 = call fastcc %struct.stack_st* @ossl_check_ASN1_VALUE_sk_type(%struct.stack_st_ASN1_VALUE* noundef %29) #7
  %30 = load i8*, i8** %17, align 8, !tbaa !8
  %call69 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call67, i8* noundef %30) #8
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then71, label %cleanup

if.then71:                                        ; preds = %if.end62
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 661, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.asn1_template_noexp_d2i, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #8
  %31 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %skfield, align 8, !tbaa !8
  %32 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %item55, align 8, !tbaa !45
  %call73 = call %struct.ASN1_ITEM_st* %32() #8
  call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %31, %struct.ASN1_ITEM_st* noundef %call73) #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then52, %if.then71, %if.then59
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #9
  br label %cleanup79.thread

cleanup:                                          ; preds = %if.end62
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #9
  %33 = load i64, i64* %len.addr, align 8, !tbaa !4
  %cmp45 = icmp sgt i64 %33, 0
  br i1 %cmp45, label %while.body47, label %while.end75

while.end75:                                      ; preds = %cleanup, %while.cond44.preheader
  %.pr173 = load i8, i8* %sk_eoc, align 1, !tbaa !19
  %tobool76.not = icmp eq i8 %.pr173, 0
  br i1 %tobool76.not, label %cleanup79, label %if.then77

if.then77:                                        ; preds = %while.end75
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 667, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.asn1_template_noexp_d2i, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 137, i8* noundef null) #8
  br label %cleanup79.thread

cleanup79.thread:                                 ; preds = %if.then42, %if.then77, %cleanup.thread
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %sk_eoc) #9
  br label %cleanup115

cleanup79.thread178:                              ; preds = %if.then21, %if.end19
  %retval.0.ph = phi i32 [ %call, %if.end19 ], [ 0, %if.then21 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %sk_eoc) #9
  br label %cleanup115

cleanup79:                                        ; preds = %while.end75.thread, %while.end75
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %sk_eoc) #9
  br label %if.end114

if.else84:                                        ; preds = %if.end6
  %and85 = and i32 %conv, 8
  %tobool86.not = icmp eq i32 %and85, 0
  %item102 = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 4
  %34 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %item102, align 8, !tbaa !45
  %call103 = tail call %struct.ASN1_ITEM_st* %34() #8
  br i1 %tobool86.not, label %if.else101, label %if.then87

if.then87:                                        ; preds = %if.else84
  %tag90 = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 1
  %35 = load i64, i64* %tag90, align 8, !tbaa !36
  %conv91 = trunc i64 %35 to i32
  %call92 = call fastcc i32 @asn1_item_embed_d2i(%struct.ASN1_VALUE_st** noundef nonnull %val.addr.0, i8** noundef nonnull %p, i64 noundef %len, %struct.ASN1_ITEM_st* noundef %call103, i32 noundef %conv91, i32 noundef %and, i8 noundef signext %opt, %struct.ASN1_TLC_st* noundef %ctx, i32 noundef %depth, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #7
  switch i32 %call92, label %if.end114 [
    i32 0, label %if.then94
    i32 -1, label %cleanup115
  ]

if.then94:                                        ; preds = %if.then87
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 676, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.asn1_template_noexp_d2i, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524554, i8* noundef null) #8
  br label %cleanup115

if.else101:                                       ; preds = %if.else84
  %call104 = call fastcc i32 @asn1_item_embed_d2i(%struct.ASN1_VALUE_st** noundef nonnull %val.addr.0, i8** noundef nonnull %p, i64 noundef %len, %struct.ASN1_ITEM_st* noundef %call103, i32 noundef -1, i32 noundef 0, i8 noundef signext %opt, %struct.ASN1_TLC_st* noundef %ctx, i32 noundef %depth, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #7
  switch i32 %call104, label %if.end114 [
    i32 0, label %if.then106
    i32 -1, label %cleanup115
  ]

if.then106:                                       ; preds = %if.else101
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 685, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.asn1_template_noexp_d2i, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524554, i8* noundef null) #8
  br label %cleanup115

if.end114:                                        ; preds = %cleanup79, %if.else101, %if.then87
  %36 = load i8*, i8** %p, align 8, !tbaa !8
  store i8* %36, i8** %in, align 8, !tbaa !8
  br label %cleanup115

cleanup115:                                       ; preds = %if.then94, %if.then106, %cleanup79.thread, %cleanup79.thread178, %if.else101, %if.then87, %entry, %if.end114
  %retval.1 = phi i32 [ 1, %if.end114 ], [ 0, %entry ], [ %call92, %if.then87 ], [ %call104, %if.else101 ], [ %retval.0.ph, %cleanup79.thread178 ], [ 0, %cleanup79.thread ], [ 0, %if.then106 ], [ 0, %if.then94 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.1
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #3

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_VALUE_sk_type(%struct.stack_st_ASN1_VALUE* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_pop(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASN1_VALUE_sk_type(%struct.stack_st_ASN1_VALUE* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #3

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_find_end(i8** nocapture noundef %in, i64 noundef %len, i8 noundef signext %inf) unnamed_addr #1 {
entry:
  %inf.addr = alloca i8, align 1
  %plen = alloca i64, align 8
  %p = alloca i8*, align 8
  store i8 %inf, i8* %inf.addr, align 1, !tbaa !19
  %0 = bitcast i64* %plen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %2 = load i8*, i8** %in, align 8, !tbaa !8
  store i8* %2, i8** %p, align 8, !tbaa !8
  %cmp = icmp eq i8 %inf, 0
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %cmp247 = icmp sgt i64 %len, 0
  br i1 %cmp247, label %while.body, label %if.then24

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %len
  store i8* %add.ptr, i8** %in, align 8, !tbaa !8
  br label %cleanup

while.body:                                       ; preds = %while.cond.preheader, %while.cond.backedge
  %expected_eoc.049 = phi i32 [ %expected_eoc.0.be, %while.cond.backedge ], [ 1, %while.cond.preheader ]
  %len.addr.048 = phi i64 [ %len.addr.0.be, %while.cond.backedge ], [ %len, %while.cond.preheader ]
  %call = call fastcc i32 @asn1_check_eoc(i8** noundef nonnull %p, i64 noundef %len.addr.048) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end9, label %if.then4

if.then4:                                         ; preds = %while.body
  %dec = add i32 %expected_eoc.049, -1
  %cmp5 = icmp eq i32 %dec, 0
  br i1 %cmp5, label %if.end25, label %if.end8

if.end8:                                          ; preds = %if.then4
  %sub = add nsw i64 %len.addr.048, -2
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end8, %if.end21
  %len.addr.0.be = phi i64 [ %sub, %if.end8 ], [ %sub22, %if.end21 ]
  %expected_eoc.0.be = phi i32 [ %dec, %if.end8 ], [ %expected_eoc.1, %if.end21 ]
  %cmp2 = icmp sgt i64 %len.addr.0.be, 0
  br i1 %cmp2, label %while.body, label %while.end, !llvm.loop !47

if.end9:                                          ; preds = %while.body
  %3 = load i8*, i8** %p, align 8, !tbaa !8
  %call10 = call fastcc i32 @asn1_check_tlen(i64* noundef nonnull %plen, i32* noundef null, i8* noundef null, i8* noundef nonnull %inf.addr, i8* noundef null, i8** noundef nonnull %p, i64 noundef %len.addr.048, i32 noundef -1, i32 noundef 0, i8 noundef signext 0, %struct.ASN1_TLC_st* noundef null) #7
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1002, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.asn1_find_end, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524554, i8* noundef null) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %4 = load i8, i8* %inf.addr, align 1, !tbaa !19
  %tobool14.not = icmp eq i8 %4, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end13
  %cmp16 = icmp eq i32 %expected_eoc.049, -1
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then15
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1007, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.asn1_find_end, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524554, i8* noundef null) #8
  br label %cleanup

if.end19:                                         ; preds = %if.then15
  %inc = add nuw i32 %expected_eoc.049, 1
  %.pre = load i8*, i8** %p, align 8, !tbaa !8
  br label %if.end21

if.else:                                          ; preds = %if.end13
  %5 = load i64, i64* %plen, align 8, !tbaa !4
  %6 = load i8*, i8** %p, align 8, !tbaa !8
  %add.ptr20 = getelementptr inbounds i8, i8* %6, i64 %5
  store i8* %add.ptr20, i8** %p, align 8, !tbaa !8
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.end19
  %7 = phi i8* [ %.pre, %if.end19 ], [ %add.ptr20, %if.else ]
  %expected_eoc.1 = phi i32 [ %inc, %if.end19 ], [ %expected_eoc.049, %if.else ]
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub.neg = add i64 %len.addr.048, %sub.ptr.rhs.cast
  %sub22 = sub i64 %sub.ptr.sub.neg, %sub.ptr.lhs.cast
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge
  %tobool23.not = icmp eq i32 %expected_eoc.0.be, 0
  br i1 %tobool23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %while.cond.preheader, %while.end
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1017, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.asn1_find_end, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 137, i8* noundef null) #8
  br label %cleanup

if.end25:                                         ; preds = %if.then4, %while.end
  %8 = load i8*, i8** %p, align 8, !tbaa !8
  store i8* %8, i8** %in, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then24, %if.then18, %if.then12, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.then24 ], [ 1, %if.end25 ], [ 0, %if.then18 ], [ 0, %if.then12 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_collect(%struct.buf_mem_st* noundef %buf, i8** nocapture noundef %in, i64 noundef %len, i8 noundef signext %inf, i32 noundef %depth) unnamed_addr #1 {
entry:
  %p = alloca i8*, align 8
  %plen = alloca i64, align 8
  %cst = alloca i8, align 1
  %ininf = alloca i8, align 1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = bitcast i64* %plen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %cst) #9
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %ininf) #9
  %2 = load i8*, i8** %in, align 8, !tbaa !8
  store i8* %2, i8** %p, align 8, !tbaa !8
  %3 = and i8 %inf, 1
  %tobool = icmp ne %struct.buf_mem_st* %buf, null
  %tobool2 = icmp ne i8 %3, 0
  %or.cond = or i1 %tobool, %tobool2
  br i1 %or.cond, label %while.cond.preheader, label %if.then

while.cond.preheader:                             ; preds = %entry
  %cmp5 = icmp sgt i64 %len, 0
  br i1 %cmp5, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %cmp16 = icmp sgt i32 %depth, 4
  %add = add nsw i32 %depth, 1
  br label %while.body

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %len
  store i8* %add.ptr, i8** %in, align 8, !tbaa !8
  br label %cleanup

while.body:                                       ; preds = %while.body.lr.ph, %if.end30
  %4 = phi i8* [ %2, %while.body.lr.ph ], [ %9, %if.end30 ]
  %len.addr.06 = phi i64 [ %len, %while.body.lr.ph ], [ %sub, %if.end30 ]
  %call = call fastcc i32 @asn1_check_eoc(i8** noundef nonnull %p, i64 noundef %len.addr.06) #7
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %while.body
  br i1 %tobool2, label %if.then5.if.end33_crit_edge, label %if.then7

if.then5.if.end33_crit_edge:                      ; preds = %if.then5
  %.pre = load i8*, i8** %p, align 8, !tbaa !8
  br label %if.end33

if.then7:                                         ; preds = %if.then5
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1064, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.asn1_collect, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 159, i8* noundef null) #8
  br label %cleanup

if.end9:                                          ; preds = %while.body
  %call10 = call fastcc i32 @asn1_check_tlen(i64* noundef nonnull %plen, i32* noundef null, i8* noundef null, i8* noundef nonnull %ininf, i8* noundef nonnull %cst, i8** noundef nonnull %p, i64 noundef %len.addr.06, i32 noundef -1, i32 noundef 0, i8 noundef signext 0, %struct.ASN1_TLC_st* noundef null) #7
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1073, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.asn1_collect, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524554, i8* noundef null) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %5 = load i8, i8* %cst, align 1, !tbaa !19
  %tobool14.not = icmp eq i8 %5, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end13
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then15
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1080, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.asn1_collect, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 197, i8* noundef null) #8
  br label %cleanup

if.end19:                                         ; preds = %if.then15
  %6 = load i64, i64* %plen, align 8, !tbaa !4
  %7 = load i8, i8* %ininf, align 1, !tbaa !19
  %call20 = call fastcc i32 @asn1_collect(%struct.buf_mem_st* noundef %buf, i8** noundef nonnull %p, i64 noundef %6, i8 noundef signext %7, i32 noundef %add) #7
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %if.end30

if.else:                                          ; preds = %if.end13
  %8 = load i64, i64* %plen, align 8, !tbaa !4
  %tobool24.not = icmp eq i64 %8, 0
  br i1 %tobool24.not, label %if.end30, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %if.else
  %call26 = call fastcc i32 @collect_data(%struct.buf_mem_st* noundef %buf, i8** noundef nonnull %p, i64 noundef %8) #7
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup, label %if.end30

if.end30:                                         ; preds = %if.else, %land.lhs.true25, %if.end19
  %9 = load i8*, i8** %p, align 8, !tbaa !8
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub.neg = add i64 %len.addr.06, %sub.ptr.rhs.cast
  %sub = sub i64 %sub.ptr.sub.neg, %sub.ptr.lhs.cast
  %cmp = icmp sgt i64 %sub, 0
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !48

while.end:                                        ; preds = %if.end30, %while.cond.preheader
  %10 = phi i8* [ %2, %while.cond.preheader ], [ %9, %if.end30 ]
  %tobool31.not = icmp eq i8 %3, 0
  br i1 %tobool31.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %while.end
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1090, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.asn1_collect, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 137, i8* noundef null) #8
  br label %cleanup

if.end33:                                         ; preds = %if.then5.if.end33_crit_edge, %while.end
  %11 = phi i8* [ %.pre, %if.then5.if.end33_crit_edge ], [ %10, %while.end ]
  store i8* %11, i8** %in, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true25, %if.end19, %if.end33, %if.then32, %if.then18, %if.then12, %if.then7, %if.then
  %retval.0 = phi i32 [ 0, %if.then32 ], [ 1, %if.end33 ], [ 0, %if.then7 ], [ 0, %if.then18 ], [ 0, %if.then12 ], [ 1, %if.then ], [ 0, %if.end19 ], [ 0, %land.lhs.true25 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %ininf) #9
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %cst) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare i64 @BUF_MEM_grow_clean(%struct.buf_mem_st* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_ex_c2i(%struct.ASN1_VALUE_st** noundef %pval, i8* noundef %cont, i32 noundef %len, i32 noundef %utype, i8* noundef %free_cont, %struct.ASN1_ITEM_st* noundef %it) unnamed_addr #1 {
entry:
  %cont.addr = alloca i8*, align 8
  store i8* %cont, i8** %cont.addr, align 8, !tbaa !8
  %funcs = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 4
  %0 = bitcast i8** %funcs to %struct.ASN1_PRIMITIVE_FUNCS_st**
  %1 = load %struct.ASN1_PRIMITIVE_FUNCS_st*, %struct.ASN1_PRIMITIVE_FUNCS_st** %0, align 8, !tbaa !13
  %tobool.not = icmp eq %struct.ASN1_PRIMITIVE_FUNCS_st* %1, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %prim_c2i = getelementptr inbounds %struct.ASN1_PRIMITIVE_FUNCS_st, %struct.ASN1_PRIMITIVE_FUNCS_st* %1, i64 0, i32 5
  %2 = load i32 (%struct.ASN1_VALUE_st**, i8*, i32, i32, i8*, %struct.ASN1_ITEM_st*)*, i32 (%struct.ASN1_VALUE_st**, i8*, i32, i32, i8*, %struct.ASN1_ITEM_st*)** %prim_c2i, align 8, !tbaa !49
  %tobool1.not = icmp eq i32 (%struct.ASN1_VALUE_st**, i8*, i32, i32, i8*, %struct.ASN1_ITEM_st*)* %2, null
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 %2(%struct.ASN1_VALUE_st** noundef %pval, i8* noundef %cont, i32 noundef %len, i32 noundef %utype, i8* noundef %free_cont, %struct.ASN1_ITEM_st* noundef nonnull %it) #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %utype3 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 1
  %3 = load i64, i64* %utype3, align 8, !tbaa !21
  %cmp = icmp eq i64 %3, -4
  br i1 %cmp, label %if.then4, label %if.end15

if.then4:                                         ; preds = %if.end
  %4 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !8
  %cmp5 = icmp eq %struct.ASN1_VALUE_st* %4, null
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then4
  %call7 = tail call %struct.asn1_type_st* @ASN1_TYPE_new() #8
  %cmp8 = icmp eq %struct.asn1_type_st* %call7, null
  br i1 %cmp8, label %if.then88.thread, label %if.end10

if.then88.thread:                                 ; preds = %if.then6
  tail call void @ASN1_TYPE_free(%struct.asn1_type_st* noundef null) #8
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  %5 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.asn1_type_st**
  store %struct.asn1_type_st* %call7, %struct.asn1_type_st** %5, align 8, !tbaa !8
  br label %if.end11

if.else:                                          ; preds = %if.then4
  %6 = bitcast %struct.ASN1_VALUE_st* %4 to %struct.asn1_type_st*
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end10
  %typ.0 = phi %struct.asn1_type_st* [ %call7, %if.end10 ], [ %6, %if.else ]
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %typ.0, i64 0, i32 0
  %7 = load i32, i32* %type, align 8, !tbaa !51
  %cmp12.not = icmp eq i32 %7, %utype
  br i1 %cmp12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end11
  tail call void @ASN1_TYPE_set(%struct.asn1_type_st* noundef nonnull %typ.0, i32 noundef %utype, i8* noundef null) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %typ.0, i64 0, i32 1
  %asn1_value = bitcast %union.anon* %value to %struct.ASN1_VALUE_st**
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end
  %typ.1 = phi %struct.asn1_type_st* [ %typ.0, %if.end14 ], [ null, %if.end ]
  %opval.0 = phi %struct.ASN1_VALUE_st** [ %pval, %if.end14 ], [ null, %if.end ]
  %pval.addr.0 = phi %struct.ASN1_VALUE_st** [ %asn1_value, %if.end14 ], [ %pval, %if.end ]
  switch i32 %utype, label %if.end59 [
    i32 6, label %sw.bb
    i32 5, label %sw.bb20
    i32 1, label %sw.bb24
    i32 3, label %sw.bb31
    i32 2, label %sw.bb37
    i32 10, label %sw.bb37
    i32 30, label %land.lhs.true48
    i32 28, label %land.lhs.true55
  ]

sw.bb:                                            ; preds = %if.end15
  %8 = bitcast %struct.ASN1_VALUE_st** %pval.addr.0 to %struct.asn1_object_st**
  %conv = sext i32 %len to i64
  %call16 = call %struct.asn1_object_st* @ossl_c2i_ASN1_OBJECT(%struct.asn1_object_st** noundef %8, i8** noundef nonnull %cont.addr, i64 noundef %conv) #8
  %tobool17.not = icmp eq %struct.asn1_object_st* %call16, null
  br i1 %tobool17.not, label %if.then88, label %cleanup

sw.bb20:                                          ; preds = %if.end15
  %tobool21.not = icmp eq i32 %len, 0
  br i1 %tobool21.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %sw.bb20
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 867, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.asn1_ex_c2i, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 144, i8* noundef null) #8
  br label %if.then88

if.end23:                                         ; preds = %sw.bb20
  store %struct.ASN1_VALUE_st* inttoptr (i64 1 to %struct.ASN1_VALUE_st*), %struct.ASN1_VALUE_st** %pval.addr.0, align 8, !tbaa !8
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end15
  %cmp25.not = icmp eq i32 %len, 1
  br i1 %cmp25.not, label %if.else28, label %if.then27

if.then27:                                        ; preds = %sw.bb24
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 875, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.asn1_ex_c2i, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 106, i8* noundef null) #8
  br label %if.then88

if.else28:                                        ; preds = %sw.bb24
  %9 = bitcast %struct.ASN1_VALUE_st** %pval.addr.0 to i32*
  %10 = load i8, i8* %cont, align 1, !tbaa !19
  %conv29 = zext i8 %10 to i32
  store i32 %conv29, i32* %9, align 4, !tbaa !20
  br label %cleanup

sw.bb31:                                          ; preds = %if.end15
  %11 = bitcast %struct.ASN1_VALUE_st** %pval.addr.0 to %struct.asn1_string_st**
  %conv32 = sext i32 %len to i64
  %call33 = call %struct.asn1_string_st* @ossl_c2i_ASN1_BIT_STRING(%struct.asn1_string_st** noundef %11, i8** noundef nonnull %cont.addr, i64 noundef %conv32) #8
  %tobool34.not = icmp eq %struct.asn1_string_st* %call33, null
  br i1 %tobool34.not, label %if.then88, label %cleanup

sw.bb37:                                          ; preds = %if.end15, %if.end15
  %12 = bitcast %struct.ASN1_VALUE_st** %pval.addr.0 to %struct.asn1_string_st**
  %conv38 = sext i32 %len to i64
  %call39 = call %struct.asn1_string_st* @ossl_c2i_ASN1_INTEGER(%struct.asn1_string_st** noundef %12, i8** noundef nonnull %cont.addr, i64 noundef %conv38) #8
  %tobool40.not = icmp eq %struct.asn1_string_st* %call39, null
  br i1 %tobool40.not, label %if.then88, label %if.end42

if.end42:                                         ; preds = %sw.bb37
  %13 = load %struct.asn1_string_st*, %struct.asn1_string_st** %12, align 8, !tbaa !8
  %type43 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %13, i64 0, i32 1
  %14 = load i32, i32* %type43, align 4, !tbaa !53
  %and = and i32 %14, 256
  %or = or i32 %and, %utype
  store i32 %or, i32* %type43, align 4, !tbaa !53
  br label %sw.epilog

land.lhs.true48:                                  ; preds = %if.end15
  %and49 = and i32 %len, 1
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end59, label %if.then51

if.then51:                                        ; preds = %land.lhs.true48
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 917, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.asn1_ex_c2i, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 214, i8* noundef null) #8
  br label %if.then88

land.lhs.true55:                                  ; preds = %if.end15
  %and56.old = and i32 %len, 3
  %tobool57.not.old = icmp eq i32 %and56.old, 0
  br i1 %tobool57.not.old, label %if.end59, label %if.then58

if.then58:                                        ; preds = %land.lhs.true55
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 921, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.asn1_ex_c2i, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 215, i8* noundef null) #8
  br label %if.then88

if.end59:                                         ; preds = %land.lhs.true48, %if.end15, %land.lhs.true55
  %15 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval.addr.0, align 8, !tbaa !8
  %cmp60 = icmp eq %struct.ASN1_VALUE_st* %15, null
  br i1 %cmp60, label %if.then62, label %if.else68

if.then62:                                        ; preds = %if.end59
  %call63 = tail call %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef %utype) #8
  %cmp64 = icmp eq %struct.asn1_string_st* %call63, null
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.then62
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 928, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.asn1_ex_c2i, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #8
  br label %if.then88

if.end67:                                         ; preds = %if.then62
  %16 = bitcast %struct.ASN1_VALUE_st** %pval.addr.0 to %struct.asn1_string_st**
  store %struct.asn1_string_st* %call63, %struct.asn1_string_st** %16, align 8, !tbaa !8
  br label %if.end70

if.else68:                                        ; preds = %if.end59
  %17 = bitcast %struct.ASN1_VALUE_st* %15 to %struct.asn1_string_st*
  %type69 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %17, i64 0, i32 1
  store i32 %utype, i32* %type69, align 4, !tbaa !53
  br label %if.end70

if.end70:                                         ; preds = %if.else68, %if.end67
  %stmp.0 = phi %struct.asn1_string_st* [ %call63, %if.end67 ], [ %17, %if.else68 ]
  %18 = load i8, i8* %free_cont, align 1, !tbaa !19
  %tobool71.not = icmp eq i8 %18, 0
  br i1 %tobool71.not, label %if.else74, label %if.then72

if.then72:                                        ; preds = %if.end70
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %stmp.0, i64 0, i32 2
  %19 = load i8*, i8** %data, align 8, !tbaa !55
  tail call void @CRYPTO_free(i8* noundef %19, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 938) #8
  store i8* %cont, i8** %data, align 8, !tbaa !55
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %stmp.0, i64 0, i32 0
  store i32 %len, i32* %length, align 8, !tbaa !56
  store i8 0, i8* %free_cont, align 1, !tbaa !19
  br label %cleanup

if.else74:                                        ; preds = %if.end70
  %call75 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %stmp.0, i8* noundef %cont, i32 noundef %len) #8
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.then77, label %cleanup

if.then77:                                        ; preds = %if.else74
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 944, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.asn1_ex_c2i, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #8
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef nonnull %stmp.0) #8
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %pval.addr.0, align 8, !tbaa !8
  br label %if.then88

sw.epilog:                                        ; preds = %if.end42, %if.end23
  %tobool80 = icmp ne %struct.asn1_type_st* %typ.1, null
  %cmp82 = icmp eq i32 %utype, 5
  %or.cond = and i1 %cmp82, %tobool80
  br i1 %or.cond, label %if.then84, label %cleanup

if.then84:                                        ; preds = %sw.epilog
  %ptr = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %typ.1, i64 0, i32 1, i32 0
  store i8* null, i8** %ptr, align 8, !tbaa !19
  br label %cleanup

if.then88:                                        ; preds = %if.then51, %if.then58, %if.then66, %if.then77, %sw.bb37, %sw.bb31, %if.then27, %if.then22, %sw.bb
  call void @ASN1_TYPE_free(%struct.asn1_type_st* noundef %typ.1) #8
  %tobool89.not = icmp eq %struct.ASN1_VALUE_st** %opval.0, null
  br i1 %tobool89.not, label %cleanup, label %if.then90

if.then90:                                        ; preds = %if.then88
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %opval.0, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %if.else28, %sw.bb, %sw.bb31, %if.else74, %if.then72, %if.then88.thread, %if.then84, %sw.epilog, %if.then90, %if.then88, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.then88 ], [ 0, %if.then90 ], [ 1, %if.then84 ], [ 1, %sw.epilog ], [ 0, %if.then88.thread ], [ 1, %if.then72 ], [ 1, %if.else74 ], [ 1, %sw.bb31 ], [ 1, %sw.bb ], [ 1, %if.else28 ]
  ret i32 %retval.0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @collect_data(%struct.buf_mem_st* noundef %buf, i8** nocapture noundef %p, i64 noundef %plen) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.buf_mem_st* %buf, null
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %buf, i64 0, i32 0
  %0 = load i64, i64* %length, align 8, !tbaa !37
  %sext = shl i64 %0, 32
  %conv1 = ashr exact i64 %sext, 32
  %add = add nsw i64 %conv1, %plen
  %call = tail call i64 @BUF_MEM_grow_clean(%struct.buf_mem_st* noundef nonnull %buf, i64 noundef %add) #8
  %tobool2.not = icmp eq i64 %call, 0
  br i1 %tobool2.not, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1103, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.collect_data, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %buf, i64 0, i32 1
  %1 = load i8*, i8** %data, align 8, !tbaa !39
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %conv1
  %2 = load i8*, i8** %p, align 8, !tbaa !8
  %call4 = tail call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %2, i64 noundef %plen) #8
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %3 = load i8*, i8** %p, align 8, !tbaa !8
  %add.ptr6 = getelementptr inbounds i8, i8* %3, i64 %plen
  store i8* %add.ptr6, i8** %p, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3
  %retval.0 = phi i32 [ 1, %if.end5 ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

declare %struct.asn1_type_st* @ASN1_TYPE_new() local_unnamed_addr #3

declare void @ASN1_TYPE_set(%struct.asn1_type_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare %struct.asn1_object_st* @ossl_c2i_ASN1_OBJECT(%struct.asn1_object_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

declare %struct.asn1_string_st* @ossl_c2i_ASN1_BIT_STRING(%struct.asn1_string_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

declare %struct.asn1_string_st* @ossl_c2i_ASN1_INTEGER(%struct.asn1_string_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

declare %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef) local_unnamed_addr #3

declare i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @ASN1_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #3

declare void @ASN1_TYPE_free(%struct.asn1_type_st* noundef) local_unnamed_addr #3

declare i32 @ASN1_get_object(i8** noundef, i64* noundef, i32* noundef, i32* noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !6, i64 0}
!11 = !{!"ASN1_TLC_st", !6, i64 0, !12, i64 4, !5, i64 8, !12, i64 16, !12, i64 20, !12, i64 24}
!12 = !{!"int", !6, i64 0}
!13 = !{!14, !9, i64 32}
!14 = !{!"ASN1_ITEM_st", !6, i64 0, !5, i64 8, !9, i64 16, !5, i64 24, !9, i64 32, !5, i64 40, !9, i64 48}
!15 = !{!16, !9, i64 24}
!16 = !{!"ASN1_AUX_st", !9, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !9, i64 24, !12, i64 32, !9, i64 40}
!17 = !{!14, !6, i64 0}
!18 = !{!14, !9, i64 16}
!19 = !{!6, !6, i64 0}
!20 = !{!12, !12, i64 0}
!21 = !{!14, !5, i64 8}
!22 = !{!23, !9, i64 64}
!23 = !{!"ASN1_EXTERN_FUNCS_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64}
!24 = !{!23, !9, i64 32}
!25 = !{!14, !5, i64 24}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!16, !12, i64 8}
!29 = !{!30, !5, i64 0}
!30 = !{!"ASN1_TEMPLATE_st", !5, i64 0, !5, i64 8, !5, i64 16, !9, i64 24, !9, i64 32}
!31 = distinct !{!31, !27}
!32 = distinct !{!32, !27}
!33 = distinct !{!33, !27}
!34 = !{!30, !9, i64 24}
!35 = !{!14, !9, i64 48}
!36 = !{!30, !5, i64 8}
!37 = !{!38, !5, i64 0}
!38 = !{!"buf_mem_st", !5, i64 0, !9, i64 8, !5, i64 16, !5, i64 24}
!39 = !{!38, !9, i64 8}
!40 = !{!11, !12, i64 4}
!41 = !{!11, !5, i64 8}
!42 = !{!11, !12, i64 20}
!43 = !{!11, !12, i64 16}
!44 = !{!11, !12, i64 24}
!45 = !{!30, !9, i64 32}
!46 = distinct !{!46, !27}
!47 = distinct !{!47, !27}
!48 = distinct !{!48, !27}
!49 = !{!50, !9, i64 40}
!50 = !{!"ASN1_PRIMITIVE_FUNCS_st", !9, i64 0, !5, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56}
!51 = !{!52, !12, i64 0}
!52 = !{!"asn1_type_st", !12, i64 0, !6, i64 8}
!53 = !{!54, !12, i64 4}
!54 = !{!"asn1_string_st", !12, i64 0, !12, i64 4, !9, i64 8, !5, i64 16}
!55 = !{!54, !9, i64 8}
!56 = !{!54, !12, i64 0}
