; ModuleID = 'crypto/asn1/tasn_new.c'
source_filename = "crypto/asn1/tasn_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_VALUE_st = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ASN1_AUX_st = type { i8*, i32, i32, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* }
%struct.stack_st = type opaque
%struct.asn1_object_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ASN1_EXTERN_FUNCS_st = type { i8*, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, i32 (%struct.ASN1_VALUE_st**, i8**, i64, %struct.ASN1_ITEM_st*, i32, i32, i8, %struct.ASN1_TLC_st*)*, i32 (%struct.ASN1_VALUE_st**, i8**, %struct.ASN1_ITEM_st*, i32, i32)*, i32 (%struct.bio_st*, %struct.ASN1_VALUE_st**, i32, i8*, %struct.asn1_pctx_st*)*, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ASN1_VALUE_st**, i8**, i64, %struct.ASN1_ITEM_st*, i32, i32, i8, %struct.ASN1_TLC_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.ASN1_TLC_st = type { i8, i32, i64, i32, i32, i32 }
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/asn1/tasn_new.c\00", align 1
@__func__.asn1_item_embed_new = private unnamed_addr constant [20 x i8] c"asn1_item_embed_new\00", align 1
@__func__.asn1_template_new = private unnamed_addr constant [18 x i8] c"asn1_template_new\00", align 1
@__func__.asn1_primitive_new = private unnamed_addr constant [19 x i8] c"asn1_primitive_new\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef %it) local_unnamed_addr #0 {
entry:
  %ret = alloca %struct.ASN1_VALUE_st*, align 8
  %0 = bitcast %struct.ASN1_VALUE_st** %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %ret, align 8, !tbaa !4
  %call = call i32 @ASN1_item_ex_new(%struct.ASN1_VALUE_st** noundef nonnull %ret, %struct.ASN1_ITEM_st* noundef %it) #5
  %cmp = icmp sgt i32 %call, 0
  %1 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %ret, align 8
  %retval.0 = select i1 %cmp, %struct.ASN1_VALUE_st* %1, %struct.ASN1_VALUE_st* null
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret %struct.ASN1_VALUE_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_item_ex_new(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef %it) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @asn1_item_embed_new(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef %it, i32 noundef 0, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.ASN1_VALUE_st* @ASN1_item_new_ex(%struct.ASN1_ITEM_st* noundef %it, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %ret = alloca %struct.ASN1_VALUE_st*, align 8
  %0 = bitcast %struct.ASN1_VALUE_st** %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %ret, align 8, !tbaa !4
  %call = call fastcc i32 @asn1_item_embed_new(%struct.ASN1_VALUE_st** noundef nonnull %ret, %struct.ASN1_ITEM_st* noundef %it, i32 noundef 0, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  %cmp = icmp sgt i32 %call, 0
  %1 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %ret, align 8
  %retval.0 = select i1 %cmp, %struct.ASN1_VALUE_st* %1, %struct.ASN1_VALUE_st* null
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret %struct.ASN1_VALUE_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_item_embed_new(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef %it, i32 noundef %embed, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #0 {
entry:
  %funcs = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 4
  %0 = bitcast i8** %funcs to %struct.ASN1_AUX_st**
  %1 = load %struct.ASN1_AUX_st*, %struct.ASN1_AUX_st** %0, align 8, !tbaa !8
  %tobool.not = icmp eq %struct.ASN1_AUX_st* %1, null
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %asn1_cb1 = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %1, i64 0, i32 4
  %2 = load i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)** %asn1_cb1, align 8, !tbaa !11
  %tobool2.not = icmp eq i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* %2, null
  br i1 %tobool2.not, label %if.else, label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.else
  %asn1_cb.0 = phi i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* [ null, %if.else ], [ %2, %land.lhs.true ]
  %itype = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 0
  %3 = load i8, i8* %itype, align 8, !tbaa !14
  %conv = sext i8 %3 to i32
  switch i32 %conv, label %cleanup [
    i32 4, label %sw.bb
    i32 0, label %sw.bb26
    i32 5, label %sw.bb40
    i32 2, label %sw.bb45
    i32 6, label %sw.bb75
    i32 1, label %sw.bb75
  ]

sw.bb:                                            ; preds = %if.end
  %cmp.not = icmp eq %struct.ASN1_AUX_st* %1, null
  br i1 %cmp.not, label %cleanup, label %if.then6

if.then6:                                         ; preds = %sw.bb
  %asn1_ex_new_ex = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %1, i64 1, i32 1
  %4 = bitcast i32* %asn1_ex_new_ex to i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, %struct.ossl_lib_ctx_st*, i8*)**
  %5 = load i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, %struct.ossl_lib_ctx_st*, i8*)** %4, align 8, !tbaa !15
  %cmp7.not = icmp eq i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, %struct.ossl_lib_ctx_st*, i8*)* %5, null
  br i1 %cmp7.not, label %if.else14, label %if.then9

if.then9:                                         ; preds = %if.then6
  %call = tail call i32 %5(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef nonnull %it, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #6
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %cleanup.sink.split, label %cleanup

if.else14:                                        ; preds = %if.then6
  %asn1_ex_new = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %1, i64 0, i32 1
  %6 = bitcast i32* %asn1_ex_new to i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)**
  %7 = load i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)** %6, align 8, !tbaa !17
  %cmp15.not = icmp eq i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* %7, null
  br i1 %cmp15.not, label %cleanup, label %if.then17

if.then17:                                        ; preds = %if.else14
  %call19 = tail call i32 %7(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef nonnull %it) #6
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cleanup.sink.split, label %cleanup

sw.bb26:                                          ; preds = %if.end
  %templates = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 2
  %8 = load %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st** %templates, align 8, !tbaa !18
  %tobool27.not = icmp eq %struct.ASN1_TEMPLATE_st* %8, null
  br i1 %tobool27.not, label %if.else34, label %if.then28

if.then28:                                        ; preds = %sw.bb26
  %call30 = tail call fastcc i32 @asn1_template_new(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_TEMPLATE_st* noundef nonnull %8, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup.sink.split, label %cleanup

if.else34:                                        ; preds = %sw.bb26
  %call35 = tail call fastcc i32 @asn1_primitive_new(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef nonnull %it, i32 noundef %embed) #5
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %cleanup.sink.split, label %cleanup

sw.bb40:                                          ; preds = %if.end
  %call41 = tail call fastcc i32 @asn1_primitive_new(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef nonnull %it, i32 noundef %embed) #5
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %cleanup.sink.split, label %cleanup

sw.bb45:                                          ; preds = %if.end
  %tobool46.not = icmp eq i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* %asn1_cb.0, null
  br i1 %tobool46.not, label %if.end56, label %if.then47

if.then47:                                        ; preds = %sw.bb45
  %call48 = tail call i32 %asn1_cb.0(i32 noundef 0, %struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef nonnull %it, i8* noundef null) #6
  switch i32 %call48, label %if.end56 [
    i32 0, label %cleanup.sink.split
    i32 2, label %cleanup
  ]

if.end56:                                         ; preds = %if.then47, %sw.bb45
  %tobool57.not = icmp eq i32 %embed, 0
  br i1 %tobool57.not, label %if.else60, label %if.then58

if.then58:                                        ; preds = %if.end56
  %9 = bitcast %struct.ASN1_VALUE_st** %pval to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 5
  %11 = load i64, i64* %size, align 8, !tbaa !19
  %call59 = tail call i8* @memset(i8* noundef %10, i32 noundef 0, i64 noundef %11) #6
  br label %if.end67

if.else60:                                        ; preds = %if.end56
  %size61 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 5
  %12 = load i64, i64* %size61, align 8, !tbaa !19
  %call62 = tail call i8* @CRYPTO_zalloc(i64 noundef %12, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 114) #6
  %13 = bitcast %struct.ASN1_VALUE_st** %pval to i8**
  store i8* %call62, i8** %13, align 8, !tbaa !4
  %cmp63 = icmp eq i8* %call62, null
  br i1 %cmp63, label %cleanup.sink.split, label %if.end67

if.end67:                                         ; preds = %if.else60, %if.then58
  %call68 = tail call i32 @ossl_asn1_set_choice_selector(%struct.ASN1_VALUE_st** noundef nonnull %pval, i32 noundef -1, %struct.ASN1_ITEM_st* noundef nonnull %it) #6
  br i1 %tobool46.not, label %cleanup, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %if.end67
  %call71 = tail call i32 %asn1_cb.0(i32 noundef 1, %struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef nonnull %it, i8* noundef null) #6
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %auxerr2, label %cleanup

sw.bb75:                                          ; preds = %if.end, %if.end
  %tobool76.not = icmp eq i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* %asn1_cb.0, null
  br i1 %tobool76.not, label %if.end86, label %if.then77

if.then77:                                        ; preds = %sw.bb75
  %call78 = tail call i32 %asn1_cb.0(i32 noundef 0, %struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef nonnull %it, i8* noundef null) #6
  switch i32 %call78, label %if.end86 [
    i32 0, label %cleanup.sink.split
    i32 2, label %cleanup
  ]

if.end86:                                         ; preds = %if.then77, %sw.bb75
  %tobool87.not = icmp eq i32 %embed, 0
  br i1 %tobool87.not, label %if.else91, label %if.end98.thread

if.else91:                                        ; preds = %if.end86
  %size92 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 5
  %14 = load i64, i64* %size92, align 8, !tbaa !19
  %call93 = tail call i8* @CRYPTO_zalloc(i64 noundef %14, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 136) #6
  %15 = bitcast %struct.ASN1_VALUE_st** %pval to i8**
  store i8* %call93, i8** %15, align 8, !tbaa !4
  %cmp94 = icmp eq i8* %call93, null
  br i1 %cmp94, label %cleanup.sink.split, label %if.end98

if.end98:                                         ; preds = %if.else91
  %call99 = tail call i32 @ossl_asn1_do_lock(%struct.ASN1_VALUE_st** noundef nonnull %pval, i32 noundef 0, %struct.ASN1_ITEM_st* noundef nonnull %it) #6
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %if.then104, label %if.end106

if.end98.thread:                                  ; preds = %if.end86
  %16 = bitcast %struct.ASN1_VALUE_st** %pval to i8**
  %17 = load i8*, i8** %16, align 8, !tbaa !4
  %size89 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 5
  %18 = load i64, i64* %size89, align 8, !tbaa !19
  %call90 = tail call i8* @memset(i8* noundef %17, i32 noundef 0, i64 noundef %18) #6
  %call99213 = tail call i32 @ossl_asn1_do_lock(%struct.ASN1_VALUE_st** noundef %pval, i32 noundef 0, %struct.ASN1_ITEM_st* noundef nonnull %it) #6
  %cmp100214 = icmp slt i32 %call99213, 0
  br i1 %cmp100214, label %cleanup.sink.split, label %if.end106

if.then104:                                       ; preds = %if.end98
  %19 = load i8*, i8** %15, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %19, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 143) #6
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  br label %cleanup.sink.split

if.end106:                                        ; preds = %if.end98.thread, %if.end98
  tail call void @ossl_asn1_enc_init(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef nonnull %it) #6
  %tcount = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 3
  %20 = load i64, i64* %tcount, align 8, !tbaa !20
  %cmp109215 = icmp sgt i64 %20, 0
  br i1 %cmp109215, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end106
  %templates107 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 2
  %21 = load %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st** %templates107, align 8, !tbaa !18
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %tt.0216 = phi %struct.ASN1_TEMPLATE_st* [ %21, %for.body.preheader ], [ %incdec.ptr, %for.inc ]
  %call111 = tail call %struct.ASN1_VALUE_st** @ossl_asn1_get_field_ptr(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_TEMPLATE_st* noundef %tt.0216) #6
  %call112 = tail call fastcc i32 @asn1_template_new(%struct.ASN1_VALUE_st** noundef %call111, %struct.ASN1_TEMPLATE_st* noundef %tt.0216, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %memerr2, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt.0216, i64 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %22 = load i64, i64* %tcount, align 8, !tbaa !20
  %cmp109 = icmp sgt i64 %22, %indvars.iv.next
  br i1 %cmp109, label %for.body, label %for.end, !llvm.loop !21

for.end:                                          ; preds = %for.inc, %if.end106
  br i1 %tobool76.not, label %cleanup, label %land.lhs.true117

land.lhs.true117:                                 ; preds = %for.end
  %call118 = tail call i32 %asn1_cb.0(i32 noundef 1, %struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef nonnull %it, i8* noundef null) #6
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %auxerr2, label %cleanup

memerr2:                                          ; preds = %for.body
  tail call void @ossl_asn1_item_embed_free(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef nonnull %it, i32 noundef %embed) #6
  br label %cleanup.sink.split

auxerr2:                                          ; preds = %land.lhs.true117, %land.lhs.true70
  tail call void @ossl_asn1_item_embed_free(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef nonnull %it, i32 noundef %embed) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %auxerr2, %if.then47, %if.then77, %memerr2, %if.then9, %if.then17, %if.then28, %if.else34, %sw.bb40, %if.else60, %if.else91, %if.then104, %if.end98.thread
  %.sink219 = phi i32 [ 163, %if.end98.thread ], [ 163, %if.then104 ], [ 163, %if.else91 ], [ 163, %if.else60 ], [ 163, %sw.bb40 ], [ 163, %if.else34 ], [ 163, %if.then28 ], [ 163, %if.then17 ], [ 163, %if.then9 ], [ 163, %memerr2 ], [ 169, %if.then77 ], [ 169, %if.then47 ], [ 169, %auxerr2 ]
  %.sink = phi i32 [ 786688, %if.end98.thread ], [ 786688, %if.then104 ], [ 786688, %if.else91 ], [ 786688, %if.else60 ], [ 786688, %sw.bb40 ], [ 786688, %if.else34 ], [ 786688, %if.then28 ], [ 786688, %if.then17 ], [ 786688, %if.then9 ], [ 786688, %memerr2 ], [ 100, %if.then77 ], [ 100, %if.then47 ], [ 100, %auxerr2 ]
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink219, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.asn1_item_embed_new, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef %.sink, i8* noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end, %if.then9, %if.then17, %if.else14, %sw.bb, %if.else34, %if.then28, %sw.bb40, %land.lhs.true70, %if.end67, %land.lhs.true117, %for.end, %if.then77, %if.then47
  %retval.0 = phi i32 [ 1, %if.then47 ], [ 1, %if.then77 ], [ 1, %for.end ], [ 1, %land.lhs.true117 ], [ 1, %if.end67 ], [ 1, %land.lhs.true70 ], [ 1, %sw.bb40 ], [ 1, %if.then28 ], [ 1, %if.else34 ], [ 1, %sw.bb ], [ 1, %if.else14 ], [ 1, %if.then17 ], [ 1, %if.then9 ], [ 1, %if.end ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_asn1_item_ex_new_intern(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef %it, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @asn1_item_embed_new(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef %it, i32 noundef 0, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_template_new(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_TEMPLATE_st* nocapture noundef readonly %tt, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #0 {
entry:
  %tval = alloca %struct.ASN1_VALUE_st*, align 8
  %item = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 4
  %0 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %item, align 8, !tbaa !23
  %call = tail call %struct.ASN1_ITEM_st* %0() #6
  %flags = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 0
  %1 = load i64, i64* %flags, align 8, !tbaa !25
  %2 = trunc i64 %1 to i32
  %conv = and i32 %2, 4096
  %3 = bitcast %struct.ASN1_VALUE_st** %tval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = bitcast %struct.ASN1_VALUE_st** %tval to %struct.ASN1_VALUE_st***
  store %struct.ASN1_VALUE_st** %pval, %struct.ASN1_VALUE_st*** %4, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %pval.addr.0 = phi %struct.ASN1_VALUE_st** [ %tval, %if.then ], [ %pval, %entry ]
  %and2 = and i64 %1, 1
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call fastcc void @asn1_template_clear(%struct.ASN1_VALUE_st** noundef %pval.addr.0, %struct.ASN1_TEMPLATE_st* noundef nonnull %tt) #5
  br label %cleanup21

if.end5:                                          ; preds = %if.end
  %and7 = and i64 %1, 768
  %tobool8.not = icmp eq i64 %and7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end5
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %pval.addr.0, align 8, !tbaa !4
  br label %cleanup21

if.end10:                                         ; preds = %if.end5
  %and12 = and i64 %1, 6
  %tobool13.not = icmp eq i64 %and12, 0
  br i1 %tobool13.not, label %if.end19, label %if.then14

if.then14:                                        ; preds = %if.end10
  %call15 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %tobool16.not = icmp eq %struct.stack_st* %call15, null
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then14
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.asn1_template_new, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup21

if.end18:                                         ; preds = %if.then14
  %5 = bitcast %struct.ASN1_VALUE_st** %pval.addr.0 to %struct.stack_st**
  store %struct.stack_st* %call15, %struct.stack_st** %5, align 8, !tbaa !4
  br label %cleanup21

if.end19:                                         ; preds = %if.end10
  %call20 = call fastcc i32 @asn1_item_embed_new(%struct.ASN1_VALUE_st** noundef %pval.addr.0, %struct.ASN1_ITEM_st* noundef %call, i32 noundef %conv, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  br label %cleanup21

cleanup21:                                        ; preds = %if.end19, %if.end18, %if.then17, %if.then9, %if.then4
  %retval.0 = phi i32 [ 1, %if.then4 ], [ 1, %if.then9 ], [ %call20, %if.end19 ], [ 1, %if.end18 ], [ 0, %if.then17 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_primitive_new(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef %it, i32 noundef %embed) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.ASN1_ITEM_st* %it, null
  br i1 %tobool.not, label %cleanup50, label %if.end

if.end:                                           ; preds = %entry
  %funcs = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 4
  %0 = load i8*, i8** %funcs, align 8, !tbaa !8
  %tobool1.not = icmp eq i8* %0, null
  br i1 %tobool1.not, label %if.end15, label %if.then2

if.then2:                                         ; preds = %if.end
  %tobool4.not = icmp eq i32 %embed, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then2
  %prim_clear = getelementptr inbounds i8, i8* %0, i64 32
  %1 = bitcast i8* %prim_clear to void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)**
  %2 = load void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)** %1, align 8, !tbaa !26
  %tobool6.not = icmp eq void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* %2, null
  br i1 %tobool6.not, label %if.end15, label %if.then7

if.then7:                                         ; preds = %if.then5
  tail call void %2(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef nonnull %it) #6
  br label %cleanup50

if.else:                                          ; preds = %if.then2
  %prim_new = getelementptr inbounds i8, i8* %0, i64 16
  %3 = bitcast i8* %prim_new to i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)**
  %4 = load i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)** %3, align 8, !tbaa !28
  %tobool10.not = icmp eq i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* %4, null
  br i1 %tobool10.not, label %if.end15, label %if.then11

if.then11:                                        ; preds = %if.else
  %call = tail call i32 %4(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef nonnull %it) #6
  br label %cleanup50

if.end15:                                         ; preds = %if.then5, %if.else, %if.end
  %itype = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 0
  %5 = load i8, i8* %itype, align 8, !tbaa !14
  %cmp = icmp eq i8 %5, 5
  br i1 %cmp, label %sw.default, label %if.end21

if.end21:                                         ; preds = %if.end15
  %utype19 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 1
  %6 = load i64, i64* %utype19, align 8, !tbaa !29
  %conv20 = trunc i64 %6 to i32
  switch i32 %conv20, label %sw.default [
    i32 6, label %sw.bb
    i32 1, label %sw.bb23
    i32 5, label %sw.bb25
    i32 -4, label %sw.bb26
  ]

sw.bb:                                            ; preds = %if.end21
  %call22 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 0) #6
  %7 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.asn1_object_st**
  store %struct.asn1_object_st* %call22, %struct.asn1_object_st** %7, align 8, !tbaa !4
  br label %cleanup50

sw.bb23:                                          ; preds = %if.end21
  %size = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 5
  %8 = load i64, i64* %size, align 8, !tbaa !19
  %conv24 = trunc i64 %8 to i32
  %9 = bitcast %struct.ASN1_VALUE_st** %pval to i32*
  store i32 %conv24, i32* %9, align 4, !tbaa !30
  br label %cleanup50

sw.bb25:                                          ; preds = %if.end21
  store %struct.ASN1_VALUE_st* inttoptr (i64 1 to %struct.ASN1_VALUE_st*), %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  br label %cleanup50

sw.bb26:                                          ; preds = %if.end21
  %call27 = tail call i8* @CRYPTO_malloc(i64 noundef 16, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 301) #6
  %cmp28 = icmp eq i8* %call27, null
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %sw.bb26
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 302, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.asn1_primitive_new, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup50

if.end31:                                         ; preds = %sw.bb26
  %value = getelementptr inbounds i8, i8* %call27, i64 8
  %ptr = bitcast i8* %value to i8**
  store i8* null, i8** %ptr, align 8, !tbaa !31
  %type = bitcast i8* %call27 to i32*
  store i32 -1, i32* %type, align 8, !tbaa !32
  %10 = bitcast %struct.ASN1_VALUE_st** %pval to i8**
  store i8* %call27, i8** %10, align 8, !tbaa !4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end15, %if.end21
  %utype.092 = phi i32 [ %conv20, %if.end21 ], [ -1, %if.end15 ]
  %tobool32.not = icmp eq i32 %embed, 0
  br i1 %tobool32.not, label %if.else36, label %if.then33

if.then33:                                        ; preds = %sw.default
  %11 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.asn1_string_st**
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %11, align 8, !tbaa !4
  %13 = bitcast %struct.asn1_string_st* %12 to i8*
  %call34 = tail call i8* @memset(i8* noundef %13, i32 noundef 0, i64 noundef 24) #6
  %type35 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %12, i64 0, i32 1
  store i32 %utype.092, i32* %type35, align 4, !tbaa !34
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %12, i64 0, i32 3
  store i64 128, i64* %flags, align 8, !tbaa !36
  br label %if.end38

if.else36:                                        ; preds = %sw.default
  %call37 = tail call %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef %utype.092) #6
  %14 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.asn1_string_st**
  store %struct.asn1_string_st* %call37, %struct.asn1_string_st** %14, align 8, !tbaa !4
  br label %if.end38

if.end38:                                         ; preds = %if.else36, %if.then33
  %str.0 = phi %struct.asn1_string_st* [ %12, %if.then33 ], [ %call37, %if.else36 ]
  %15 = load i8, i8* %itype, align 8, !tbaa !14
  %cmp41 = icmp eq i8 %15, 5
  %tobool43 = icmp ne %struct.asn1_string_st* %str.0, null
  %or.cond = select i1 %cmp41, i1 %tobool43, i1 false
  br i1 %or.cond, label %if.then44, label %sw.epilog

if.then44:                                        ; preds = %if.end38
  %flags45 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str.0, i64 0, i32 3
  %16 = load i64, i64* %flags45, align 8, !tbaa !36
  %or = or i64 %16, 64
  store i64 %or, i64* %flags45, align 8, !tbaa !36
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end38, %if.then44, %if.end31
  %17 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  %tobool47.not = icmp ne %struct.ASN1_VALUE_st* %17, null
  %. = zext i1 %tobool47.not to i32
  br label %cleanup50

cleanup50:                                        ; preds = %if.then7, %if.then11, %sw.epilog, %entry, %if.then30, %sw.bb25, %sw.bb23, %sw.bb
  %retval.1 = phi i32 [ 0, %if.then30 ], [ 1, %sw.bb25 ], [ 1, %sw.bb23 ], [ 1, %sw.bb ], [ 0, %entry ], [ %., %sw.epilog ], [ %call, %if.then11 ], [ 1, %if.then7 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ossl_asn1_set_choice_selector(%struct.ASN1_VALUE_st** noundef, i32 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #3

declare i32 @ossl_asn1_do_lock(%struct.ASN1_VALUE_st** noundef, i32 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @ossl_asn1_enc_init(%struct.ASN1_VALUE_st** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #3

declare %struct.ASN1_VALUE_st** @ossl_asn1_get_field_ptr(%struct.ASN1_VALUE_st** noundef, %struct.ASN1_TEMPLATE_st* noundef) local_unnamed_addr #3

declare void @ossl_asn1_item_embed_free(%struct.ASN1_VALUE_st** noundef, %struct.ASN1_ITEM_st* noundef, i32 noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @asn1_template_clear(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_TEMPLATE_st* nocapture noundef readonly %tt) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 0
  %0 = load i64, i64* %flags, align 8, !tbaa !25
  %and = and i64 %0, 774
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %entry
  %item = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 4
  %1 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %item, align 8, !tbaa !23
  %call = tail call %struct.ASN1_ITEM_st* %1() #6
  tail call fastcc void @asn1_item_clear(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef %call) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @asn1_item_clear(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef %it) unnamed_addr #0 {
entry:
  %itype = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 0
  %0 = load i8, i8* %itype, align 8, !tbaa !14
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.epilog [
    i32 4, label %sw.bb
    i32 0, label %sw.bb3
    i32 5, label %sw.bb9
    i32 2, label %sw.bb10
    i32 1, label %sw.bb10
    i32 6, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  %funcs = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 4
  %1 = bitcast i8** %funcs to %struct.ASN1_EXTERN_FUNCS_st**
  %2 = load %struct.ASN1_EXTERN_FUNCS_st*, %struct.ASN1_EXTERN_FUNCS_st** %1, align 8, !tbaa !8
  %tobool.not = icmp eq %struct.ASN1_EXTERN_FUNCS_st* %2, null
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb
  %asn1_ex_clear = getelementptr inbounds %struct.ASN1_EXTERN_FUNCS_st, %struct.ASN1_EXTERN_FUNCS_st* %2, i64 0, i32 3
  %3 = load void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)** %asn1_ex_clear, align 8, !tbaa !37
  %tobool1.not = icmp eq void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* %3, null
  br i1 %tobool1.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  tail call void %3(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef nonnull %it) #6
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true, %sw.bb
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %templates = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 2
  %4 = load %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st** %templates, align 8, !tbaa !18
  %tobool4.not = icmp eq %struct.ASN1_TEMPLATE_st* %4, null
  br i1 %tobool4.not, label %if.else7, label %if.then5

if.then5:                                         ; preds = %sw.bb3
  tail call fastcc void @asn1_template_clear(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_TEMPLATE_st* noundef nonnull %4) #5
  br label %sw.epilog

if.else7:                                         ; preds = %sw.bb3
  tail call fastcc void @asn1_primitive_clear(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef nonnull %it) #5
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  tail call fastcc void @asn1_primitive_clear(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef nonnull %it) #5
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry, %entry, %entry
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then5, %if.else7, %if.then, %if.else, %entry, %sw.bb10, %sw.bb9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @asn1_primitive_clear(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef %it) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.ASN1_ITEM_st* %it, null
  br i1 %tobool.not, label %if.else18, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 4
  %0 = load i8*, i8** %funcs, align 8, !tbaa !8
  %tobool1.not = icmp eq i8* %0, null
  br i1 %tobool1.not, label %lor.lhs.false, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %prim_clear = getelementptr inbounds i8, i8* %0, i64 32
  %1 = bitcast i8* %prim_clear to void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)**
  %2 = load void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)** %1, align 8, !tbaa !26
  %tobool3.not = icmp eq void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* %2, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  tail call void %2(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef nonnull %it) #6
  br label %cleanup

if.else:                                          ; preds = %if.then
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %itype = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 0
  %3 = load i8, i8* %itype, align 8, !tbaa !14
  %cmp = icmp eq i8 %3, 5
  br i1 %cmp, label %if.else18, label %if.else10

if.else10:                                        ; preds = %lor.lhs.false
  %utype11 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 1
  %4 = load i64, i64* %utype11, align 8, !tbaa !29
  %conv12 = trunc i64 %4 to i32
  %phi.cmp = icmp eq i32 %conv12, 1
  br i1 %phi.cmp, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.else10
  %size = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 5
  %5 = load i64, i64* %size, align 8, !tbaa !19
  %conv17 = trunc i64 %5 to i32
  %6 = bitcast %struct.ASN1_VALUE_st** %pval to i32*
  store i32 %conv17, i32* %6, align 4, !tbaa !30
  br label %cleanup

if.else18:                                        ; preds = %lor.lhs.false, %entry, %if.else10
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.else18, %if.then4, %if.else
  ret void
}

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #3

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }

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
!14 = !{!9, !6, i64 0}
!15 = !{!16, !5, i64 56}
!16 = !{!"ASN1_EXTERN_FUNCS_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64}
!17 = !{!16, !5, i64 8}
!18 = !{!9, !5, i64 16}
!19 = !{!9, !10, i64 40}
!20 = !{!9, !10, i64 24}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!24, !5, i64 32}
!24 = !{!"ASN1_TEMPLATE_st", !10, i64 0, !10, i64 8, !10, i64 16, !5, i64 24, !5, i64 32}
!25 = !{!24, !10, i64 0}
!26 = !{!27, !5, i64 32}
!27 = !{!"ASN1_PRIMITIVE_FUNCS_st", !5, i64 0, !10, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56}
!28 = !{!27, !5, i64 16}
!29 = !{!9, !10, i64 8}
!30 = !{!13, !13, i64 0}
!31 = !{!6, !6, i64 0}
!32 = !{!33, !13, i64 0}
!33 = !{!"asn1_type_st", !13, i64 0, !6, i64 8}
!34 = !{!35, !13, i64 4}
!35 = !{!"asn1_string_st", !13, i64 0, !13, i64 4, !5, i64 8, !10, i64 16}
!36 = !{!35, !10, i64 16}
!37 = !{!16, !5, i64 24}
