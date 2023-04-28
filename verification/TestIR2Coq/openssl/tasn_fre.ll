; ModuleID = 'crypto/asn1/tasn_fre.c'
source_filename = "crypto/asn1/tasn_fre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_VALUE_st = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.ASN1_AUX_st = type { i8*, i32, i32, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* }
%struct.stack_st_ASN1_VALUE = type opaque
%struct.stack_st = type opaque
%struct.ASN1_PRIMITIVE_FUNCS_st = type { i8*, i64, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, i32 (%struct.ASN1_VALUE_st**, i8*, i32, i32, i8*, %struct.ASN1_ITEM_st*)*, i32 (%struct.ASN1_VALUE_st**, i8*, i32*, %struct.ASN1_ITEM_st*)*, i32 (%struct.bio_st*, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i32, %struct.asn1_pctx_st*)* }
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_object_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }

@.str = private unnamed_addr constant [23 x i8] c"crypto/asn1/tasn_fre.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %val, %struct.ASN1_ITEM_st* noundef %it) local_unnamed_addr #0 {
entry:
  %val.addr = alloca %struct.ASN1_VALUE_st*, align 8
  store %struct.ASN1_VALUE_st* %val, %struct.ASN1_VALUE_st** %val.addr, align 8, !tbaa !4
  call void @ossl_asn1_item_embed_free(%struct.ASN1_VALUE_st** noundef nonnull %val.addr, %struct.ASN1_ITEM_st* noundef %it, i32 noundef 0) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_asn1_item_embed_free(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef %it, i32 noundef %embed) local_unnamed_addr #0 {
entry:
  %funcs = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 4
  %0 = bitcast i8** %funcs to %struct.ASN1_AUX_st**
  %1 = load %struct.ASN1_AUX_st*, %struct.ASN1_AUX_st** %0, align 8, !tbaa !8
  %cmp = icmp eq %struct.ASN1_VALUE_st** %pval, null
  br i1 %cmp, label %cleanup90, label %if.end

if.end:                                           ; preds = %entry
  %itype = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 0
  %2 = load i8, i8* %itype, align 8, !tbaa !11
  %cmp1.not = icmp eq i8 %2, 0
  br i1 %cmp1.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  %cmp3 = icmp eq %struct.ASN1_VALUE_st* %3, null
  br i1 %cmp3, label %cleanup90, label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %tobool.not = icmp eq %struct.ASN1_AUX_st* %1, null
  br i1 %tobool.not, label %if.else, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %if.end6
  %asn1_cb8 = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %1, i64 0, i32 4
  %4 = load i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)** %asn1_cb8, align 8, !tbaa !12
  %tobool9.not = icmp eq i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* %4, null
  br i1 %tobool9.not, label %if.else, label %if.end12

if.else:                                          ; preds = %land.lhs.true7, %if.end6
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true7, %if.else
  %asn1_cb.0 = phi i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* [ null, %if.else ], [ %4, %land.lhs.true7 ]
  %conv14 = sext i8 %2 to i32
  switch i32 %conv14, label %cleanup90 [
    i32 0, label %sw.bb
    i32 5, label %sw.bb20
    i32 2, label %sw.bb21
    i32 4, label %sw.bb48
    i32 6, label %sw.bb56
    i32 1, label %sw.bb56
  ]

sw.bb:                                            ; preds = %if.end12
  %templates = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 2
  %5 = load %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st** %templates, align 8, !tbaa !15
  %tobool15.not = icmp eq %struct.ASN1_TEMPLATE_st* %5, null
  br i1 %tobool15.not, label %if.else18, label %if.then16

if.then16:                                        ; preds = %sw.bb
  tail call void @ossl_asn1_template_free(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_TEMPLATE_st* noundef nonnull %5) #4
  br label %cleanup90

if.else18:                                        ; preds = %sw.bb
  tail call void @ossl_asn1_primitive_free(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef nonnull %it, i32 noundef %embed) #4
  br label %cleanup90

sw.bb20:                                          ; preds = %if.end12
  tail call void @ossl_asn1_primitive_free(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef nonnull %it, i32 noundef %embed) #4
  br label %cleanup90

sw.bb21:                                          ; preds = %if.end12
  %tobool22.not = icmp eq i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* %asn1_cb.0, null
  br i1 %tobool22.not, label %if.end28, label %if.then23

if.then23:                                        ; preds = %sw.bb21
  %call = tail call i32 %asn1_cb.0(i32 noundef 2, %struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef nonnull %it, i8* noundef null) #5
  %cmp24 = icmp eq i32 %call, 2
  br i1 %cmp24, label %cleanup90, label %if.end28

if.end28:                                         ; preds = %if.then23, %sw.bb21
  %call29 = tail call i32 @ossl_asn1_get_choice_selector(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef nonnull %it) #5
  %cmp30 = icmp sgt i32 %call29, -1
  br i1 %cmp30, label %land.lhs.true32, label %if.end39

land.lhs.true32:                                  ; preds = %if.end28
  %conv33174 = zext i32 %call29 to i64
  %tcount = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 3
  %6 = load i64, i64* %tcount, align 8, !tbaa !16
  %cmp34 = icmp sgt i64 %6, %conv33174
  br i1 %cmp34, label %if.then36, label %if.end39

if.then36:                                        ; preds = %land.lhs.true32
  %templates37 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 2
  %7 = load %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st** %templates37, align 8, !tbaa !15
  %add.ptr = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %7, i64 %conv33174
  %call38 = tail call %struct.ASN1_VALUE_st** @ossl_asn1_get_field_ptr(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_TEMPLATE_st* noundef %add.ptr) #5
  tail call void @ossl_asn1_template_free(%struct.ASN1_VALUE_st** noundef %call38, %struct.ASN1_TEMPLATE_st* noundef %add.ptr) #4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %land.lhs.true32, %if.end28
  br i1 %tobool22.not, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.end39
  %call42 = tail call i32 %asn1_cb.0(i32 noundef 3, %struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef nonnull %it, i8* noundef null) #5
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end39
  %cmp44 = icmp eq i32 %embed, 0
  br i1 %cmp44, label %if.then46, label %cleanup90

if.then46:                                        ; preds = %if.end43
  %8 = bitcast %struct.ASN1_VALUE_st** %pval to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 75) #5
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  br label %cleanup90

sw.bb48:                                          ; preds = %if.end12
  %tobool50.not = icmp eq %struct.ASN1_AUX_st* %1, null
  br i1 %tobool50.not, label %cleanup90, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %sw.bb48
  %asn1_ex_free = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %1, i64 0, i32 3
  %10 = bitcast i32* %asn1_ex_free to void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)**
  %11 = load void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)** %10, align 8, !tbaa !17
  %tobool52.not = icmp eq void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* %11, null
  br i1 %tobool52.not, label %cleanup90, label %if.then53

if.then53:                                        ; preds = %land.lhs.true51
  tail call void %11(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef nonnull %it) #5
  br label %cleanup90

sw.bb56:                                          ; preds = %if.end12, %if.end12
  %call57 = tail call i32 @ossl_asn1_do_lock(%struct.ASN1_VALUE_st** noundef nonnull %pval, i32 noundef -1, %struct.ASN1_ITEM_st* noundef nonnull %it) #5
  %cmp58.not = icmp eq i32 %call57, 0
  br i1 %cmp58.not, label %if.end61, label %cleanup90

if.end61:                                         ; preds = %sw.bb56
  %tobool62.not = icmp eq i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* %asn1_cb.0, null
  br i1 %tobool62.not, label %if.end69, label %if.then63

if.then63:                                        ; preds = %if.end61
  %call64 = tail call i32 %asn1_cb.0(i32 noundef 2, %struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef nonnull %it, i8* noundef null) #5
  %cmp65 = icmp eq i32 %call64, 2
  br i1 %cmp65, label %cleanup90, label %if.end69

if.end69:                                         ; preds = %if.then63, %if.end61
  tail call void @ossl_asn1_enc_free(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef nonnull %it) #5
  %tcount71 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 3
  %12 = load i64, i64* %tcount71, align 8, !tbaa !16
  %cmp75175 = icmp sgt i64 %12, 0
  br i1 %cmp75175, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end69
  %templates70 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 2
  %13 = load %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st** %templates70, align 8, !tbaa !15
  %add.ptr72 = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %13, i64 %12
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %cleanup
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %cleanup ]
  %tt.0177 = phi %struct.ASN1_TEMPLATE_st* [ %add.ptr72, %for.body.preheader ], [ %incdec.ptr, %cleanup ]
  %incdec.ptr = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt.0177, i64 -1
  %14 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  %call77 = tail call %struct.ASN1_TEMPLATE_st* @ossl_asn1_do_adb(%struct.ASN1_VALUE_st* noundef %14, %struct.ASN1_TEMPLATE_st* noundef nonnull %incdec.ptr, i32 noundef 0) #5
  %tobool78.not = icmp eq %struct.ASN1_TEMPLATE_st* %call77, null
  br i1 %tobool78.not, label %cleanup, label %if.end80

if.end80:                                         ; preds = %for.body
  %call81 = tail call %struct.ASN1_VALUE_st** @ossl_asn1_get_field_ptr(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_TEMPLATE_st* noundef nonnull %call77) #5
  tail call void @ossl_asn1_template_free(%struct.ASN1_VALUE_st** noundef %call81, %struct.ASN1_TEMPLATE_st* noundef nonnull %call77) #4
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %15 = load i64, i64* %tcount71, align 8, !tbaa !16
  %cmp75 = icmp sgt i64 %15, %indvars.iv.next
  br i1 %cmp75, label %for.body, label %for.end, !llvm.loop !19

for.end:                                          ; preds = %cleanup, %if.end69
  br i1 %tobool62.not, label %if.end85, label %if.then83

if.then83:                                        ; preds = %for.end
  %call84 = tail call i32 %asn1_cb.0(i32 noundef 3, %struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef nonnull %it, i8* noundef null) #5
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %for.end
  %cmp86 = icmp eq i32 %embed, 0
  br i1 %cmp86, label %if.then88, label %cleanup90

if.then88:                                        ; preds = %if.end85
  %16 = bitcast %struct.ASN1_VALUE_st** %pval to i8**
  %17 = load i8*, i8** %16, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %17, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 115) #5
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  br label %cleanup90

cleanup90:                                        ; preds = %sw.bb20, %if.end12, %if.else18, %if.then16, %if.then46, %if.end43, %if.then53, %land.lhs.true51, %sw.bb48, %if.then88, %if.end85, %if.then63, %sw.bb56, %if.then23, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ASN1_item_ex_free(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef %it) local_unnamed_addr #0 {
entry:
  tail call void @ossl_asn1_item_embed_free(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef %it, i32 noundef 0) #4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @ossl_asn1_template_free(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_TEMPLATE_st* nocapture noundef readonly %tt) local_unnamed_addr #0 {
entry:
  %tval = alloca %struct.ASN1_VALUE_st*, align 8
  %vtmp = alloca %struct.ASN1_VALUE_st*, align 8
  %flags = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 0
  %0 = load i64, i64* %flags, align 8, !tbaa !21
  %1 = trunc i64 %0 to i32
  %conv = and i32 %1, 4096
  %2 = bitcast %struct.ASN1_VALUE_st** %tval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = bitcast %struct.ASN1_VALUE_st** %tval to %struct.ASN1_VALUE_st***
  store %struct.ASN1_VALUE_st** %pval, %struct.ASN1_VALUE_st*** %3, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %pval.addr.0 = phi %struct.ASN1_VALUE_st** [ %tval, %if.then ], [ %pval, %entry ]
  %and2 = and i64 %0, 6
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %4 = bitcast %struct.ASN1_VALUE_st** %pval.addr.0 to %struct.stack_st_ASN1_VALUE**
  %5 = load %struct.stack_st_ASN1_VALUE*, %struct.stack_st_ASN1_VALUE** %4, align 8, !tbaa !4
  %call = call fastcc %struct.stack_st* @ossl_check_const_ASN1_VALUE_sk_type(%struct.stack_st_ASN1_VALUE* noundef %5) #4
  %call529 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %cmp30 = icmp sgt i32 %call529, 0
  br i1 %cmp30, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.then4
  %6 = bitcast %struct.ASN1_VALUE_st** %vtmp to i8*
  %7 = bitcast %struct.ASN1_VALUE_st** %vtmp to i8**
  %item = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6
  %call8 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.031) #5
  store i8* %call8, i8** %7, align 8, !tbaa !4
  %8 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %item, align 8, !tbaa !23
  %call9 = call %struct.ASN1_ITEM_st* %8() #5
  call void @ossl_asn1_item_embed_free(%struct.ASN1_VALUE_st** noundef nonnull %vtmp, %struct.ASN1_ITEM_st* noundef %call9, i32 noundef %conv) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6
  %inc = add nuw nsw i32 %i.031, 1
  %call5 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %cmp = icmp slt i32 %inc, %call5
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !24

for.end:                                          ; preds = %for.body, %if.then4
  %call10 = call fastcc %struct.stack_st* @ossl_check_ASN1_VALUE_sk_type(%struct.stack_st_ASN1_VALUE* noundef %5) #4
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call10) #5
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %pval.addr.0, align 8, !tbaa !4
  br label %if.end13

if.else:                                          ; preds = %if.end
  %item11 = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 4
  %9 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %item11, align 8, !tbaa !23
  %call12 = tail call %struct.ASN1_ITEM_st* %9() #5
  call void @ossl_asn1_item_embed_free(%struct.ASN1_VALUE_st** noundef %pval.addr.0, %struct.ASN1_ITEM_st* noundef %call12, i32 noundef %conv) #4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %for.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_asn1_primitive_free(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef %it, i32 noundef %embed) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.ASN1_ITEM_st* %it, null
  br i1 %tobool.not, label %if.then16, label %if.then

if.then:                                          ; preds = %entry
  %funcs = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 4
  %0 = bitcast i8** %funcs to %struct.ASN1_PRIMITIVE_FUNCS_st**
  %1 = load %struct.ASN1_PRIMITIVE_FUNCS_st*, %struct.ASN1_PRIMITIVE_FUNCS_st** %0, align 8, !tbaa !8
  %tobool1.not = icmp eq i32 %embed, 0
  %tobool7.not = icmp eq %struct.ASN1_PRIMITIVE_FUNCS_st* %1, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  br i1 %tobool7.not, label %if.else22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then2
  %prim_clear = getelementptr inbounds %struct.ASN1_PRIMITIVE_FUNCS_st, %struct.ASN1_PRIMITIVE_FUNCS_st* %1, i64 0, i32 4
  %2 = load void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)** %prim_clear, align 8, !tbaa !25
  %tobool4.not = icmp eq void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* %2, null
  br i1 %tobool4.not, label %if.else22, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  tail call void %2(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef nonnull %it) #5
  br label %cleanup49

if.else:                                          ; preds = %if.then
  br i1 %tobool7.not, label %if.else22, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %if.else
  %prim_free = getelementptr inbounds %struct.ASN1_PRIMITIVE_FUNCS_st, %struct.ASN1_PRIMITIVE_FUNCS_st* %1, i64 0, i32 3
  %3 = load void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)** %prim_free, align 8, !tbaa !27
  %tobool9.not = icmp eq void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* %3, null
  br i1 %tobool9.not, label %if.else22, label %if.then10

if.then10:                                        ; preds = %land.lhs.true8
  tail call void %3(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef nonnull %it) #5
  br label %cleanup49

if.then16:                                        ; preds = %entry
  %4 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.asn1_type_st**
  %5 = load %struct.asn1_type_st*, %struct.asn1_type_st** %4, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %5, i64 0, i32 0
  %6 = load i32, i32* %type, align 8, !tbaa !28
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %5, i64 0, i32 1
  %asn1_value = bitcast %union.anon* %value to %struct.ASN1_VALUE_st**
  %7 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %asn1_value, align 8, !tbaa !4
  %cmp = icmp eq %struct.ASN1_VALUE_st* %7, null
  br i1 %cmp, label %cleanup49, label %if.end41

if.else22:                                        ; preds = %land.lhs.true, %if.then2, %land.lhs.true8, %if.else
  %itype = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 0
  %8 = load i8, i8* %itype, align 8, !tbaa !11
  %cmp23 = icmp eq i8 %8, 5
  br i1 %cmp23, label %if.then25, label %if.else30

if.then25:                                        ; preds = %if.else22
  %9 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  %cmp26 = icmp eq %struct.ASN1_VALUE_st* %9, null
  br i1 %cmp26, label %cleanup49, label %sw.default

if.else30:                                        ; preds = %if.else22
  %utype31 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 1
  %10 = load i64, i64* %utype31, align 8, !tbaa !30
  %conv32 = trunc i64 %10 to i32
  %cmp33.not = icmp eq i32 %conv32, 1
  br i1 %cmp33.not, label %if.then44, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %if.else30
  %11 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  %cmp36 = icmp eq %struct.ASN1_VALUE_st* %11, null
  br i1 %cmp36, label %cleanup49, label %if.end41

if.end41:                                         ; preds = %land.lhs.true35, %if.then16
  %utype.0 = phi i32 [ %conv32, %land.lhs.true35 ], [ %6, %if.then16 ]
  %pval.addr.0 = phi %struct.ASN1_VALUE_st** [ %pval, %land.lhs.true35 ], [ %asn1_value, %if.then16 ]
  switch i32 %utype.0, label %sw.default [
    i32 6, label %sw.bb
    i32 1, label %sw.bb42
    i32 5, label %sw.epilog
    i32 -4, label %sw.bb48
  ]

sw.bb:                                            ; preds = %if.end41
  %12 = bitcast %struct.ASN1_VALUE_st** %pval.addr.0 to %struct.asn1_object_st**
  %13 = load %struct.asn1_object_st*, %struct.asn1_object_st** %12, align 8, !tbaa !4
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %13) #5
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end41
  br i1 %tobool.not, label %if.else46, label %if.then44

if.then44:                                        ; preds = %if.else30, %sw.bb42
  %pval.addr.09597 = phi %struct.ASN1_VALUE_st** [ %pval.addr.0, %sw.bb42 ], [ %pval, %if.else30 ]
  %size = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 5
  %14 = load i64, i64* %size, align 8, !tbaa !31
  %conv45 = trunc i64 %14 to i32
  %15 = bitcast %struct.ASN1_VALUE_st** %pval.addr.09597 to i32*
  store i32 %conv45, i32* %15, align 4, !tbaa !32
  br label %cleanup49

if.else46:                                        ; preds = %sw.bb42
  %16 = bitcast %struct.ASN1_VALUE_st** %pval.addr.0 to i32*
  store i32 -1, i32* %16, align 4, !tbaa !32
  br label %cleanup49

sw.bb48:                                          ; preds = %if.end41
  tail call void @ossl_asn1_primitive_free(%struct.ASN1_VALUE_st** noundef nonnull %pval.addr.0, %struct.ASN1_ITEM_st* noundef null, i32 noundef 0) #4
  %17 = bitcast %struct.ASN1_VALUE_st** %pval.addr.0 to i8**
  %18 = load i8*, i8** %17, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %18, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 200) #5
  br label %sw.epilog

sw.default:                                       ; preds = %if.then25, %if.end41
  %pval.addr.091 = phi %struct.ASN1_VALUE_st** [ %pval.addr.0, %if.end41 ], [ %pval, %if.then25 ]
  %19 = bitcast %struct.ASN1_VALUE_st** %pval.addr.091 to %struct.asn1_string_st**
  %20 = load %struct.asn1_string_st*, %struct.asn1_string_st** %19, align 8, !tbaa !4
  tail call void @ossl_asn1_string_embed_free(%struct.asn1_string_st* noundef %20, i32 noundef %embed) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb48, %if.end41, %sw.bb
  %pval.addr.090 = phi %struct.ASN1_VALUE_st** [ %pval.addr.091, %sw.default ], [ %pval.addr.0, %sw.bb48 ], [ %pval.addr.0, %if.end41 ], [ %pval.addr.0, %sw.bb ]
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %pval.addr.090, align 8, !tbaa !4
  br label %cleanup49

cleanup49:                                        ; preds = %if.then44, %if.else46, %land.lhs.true35, %if.then25, %if.then5, %if.then10, %if.then16, %sw.epilog
  ret void
}

declare i32 @ossl_asn1_get_choice_selector(%struct.ASN1_VALUE_st** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_VALUE_st** @ossl_asn1_get_field_ptr(%struct.ASN1_VALUE_st** noundef, %struct.ASN1_TEMPLATE_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_asn1_do_lock(%struct.ASN1_VALUE_st** noundef, i32 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare void @ossl_asn1_enc_free(%struct.ASN1_VALUE_st** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_TEMPLATE_st* @ossl_asn1_do_adb(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_TEMPLATE_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_VALUE_sk_type(%struct.stack_st_ASN1_VALUE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASN1_VALUE_sk_type(%struct.stack_st_ASN1_VALUE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare void @ossl_asn1_string_embed_free(%struct.asn1_string_st* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }

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
!11 = !{!9, !6, i64 0}
!12 = !{!13, !5, i64 24}
!13 = !{!"ASN1_AUX_st", !5, i64 0, !14, i64 8, !14, i64 12, !14, i64 16, !5, i64 24, !14, i64 32, !5, i64 40}
!14 = !{!"int", !6, i64 0}
!15 = !{!9, !5, i64 16}
!16 = !{!9, !10, i64 24}
!17 = !{!18, !5, i64 16}
!18 = !{!"ASN1_EXTERN_FUNCS_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!22, !10, i64 0}
!22 = !{!"ASN1_TEMPLATE_st", !10, i64 0, !10, i64 8, !10, i64 16, !5, i64 24, !5, i64 32}
!23 = !{!22, !5, i64 32}
!24 = distinct !{!24, !20}
!25 = !{!26, !5, i64 32}
!26 = !{!"ASN1_PRIMITIVE_FUNCS_st", !5, i64 0, !10, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56}
!27 = !{!26, !5, i64 24}
!28 = !{!29, !14, i64 0}
!29 = !{!"asn1_type_st", !14, i64 0, !6, i64 8}
!30 = !{!9, !10, i64 8}
!31 = !{!9, !10, i64 40}
!32 = !{!14, !14, i64 0}
