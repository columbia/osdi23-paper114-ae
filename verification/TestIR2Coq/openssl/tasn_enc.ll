; ModuleID = 'crypto/asn1/tasn_enc.c'
source_filename = "crypto/asn1/tasn_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_VALUE_st = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.ASN1_AUX_st = type { i8*, i32, i32, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* }
%struct.stack_st_const_ASN1_VALUE = type opaque
%struct.stack_st = type opaque
%struct.DER_ENC = type { i8*, i32, %struct.ASN1_VALUE_st* }
%struct.ASN1_PRIMITIVE_FUNCS_st = type { i8*, i64, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, i32 (%struct.ASN1_VALUE_st**, i8*, i32, i32, i8*, %struct.ASN1_ITEM_st*)*, i32 (%struct.ASN1_VALUE_st**, i8*, i32*, %struct.ASN1_ITEM_st*)*, i32 (%struct.bio_st*, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i32, %struct.asn1_pctx_st*)* }
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type { i64, i64, i64, i64, i64 }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"crypto/asn1/tasn_enc.c\00", align 1
@__func__.ASN1_item_ex_i2d = private unnamed_addr constant [17 x i8] c"ASN1_item_ex_i2d\00", align 1
@__func__.asn1_item_flags_i2d = private unnamed_addr constant [20 x i8] c"asn1_item_flags_i2d\00", align 1
@__func__.asn1_template_ex_i2d = private unnamed_addr constant [21 x i8] c"asn1_template_ex_i2d\00", align 1
@__func__.asn1_set_seq_out = private unnamed_addr constant [17 x i8] c"asn1_set_seq_out\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_item_ndef_i2d(%struct.ASN1_VALUE_st* noundef %val, i8** noundef %out, %struct.ASN1_ITEM_st* noundef %it) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @asn1_item_flags_i2d(%struct.ASN1_VALUE_st* noundef %val, i8** noundef %out, %struct.ASN1_ITEM_st* noundef %it, i32 noundef 2048) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_item_flags_i2d(%struct.ASN1_VALUE_st* noundef %val, i8** noundef %out, %struct.ASN1_ITEM_st* noundef %it, i32 noundef %flags) unnamed_addr #0 {
entry:
  %val.addr = alloca %struct.ASN1_VALUE_st*, align 8
  %p = alloca i8*, align 8
  store %struct.ASN1_VALUE_st* %val, %struct.ASN1_VALUE_st** %val.addr, align 8, !tbaa !4
  %cmp.not = icmp eq i8** %out, null
  br i1 %cmp.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load i8*, i8** %out, align 8, !tbaa !4
  %cmp1 = icmp eq i8* %0, null
  br i1 %cmp1, label %if.then, label %if.end12

if.then:                                          ; preds = %land.lhs.true
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %call = call i32 @ASN1_item_ex_i2d(%struct.ASN1_VALUE_st** noundef nonnull %val.addr, i8** noundef null, %struct.ASN1_ITEM_st* noundef %it, i32 noundef -1, i32 noundef %flags) #6
  %cmp2 = icmp slt i32 %call, 1
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %conv27 = zext i32 %call to i64
  %call4 = call i8* @CRYPTO_malloc(i64 noundef %conv27, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 65) #8
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.asn1_item_flags_i2d, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  store i8* %call4, i8** %p, align 8, !tbaa !4
  %call9 = call i32 @ASN1_item_ex_i2d(%struct.ASN1_VALUE_st** noundef nonnull %val.addr, i8** noundef nonnull %p, %struct.ASN1_ITEM_st* noundef %it, i32 noundef -1, i32 noundef %flags) #6
  store i8* %call4, i8** %out, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end8, %if.then7
  %retval.0 = phi i32 [ -1, %if.then7 ], [ %call, %if.end8 ], [ %call, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  br label %return

if.end12:                                         ; preds = %land.lhs.true, %entry
  %call13 = call i32 @ASN1_item_ex_i2d(%struct.ASN1_VALUE_st** noundef nonnull %val.addr, i8** noundef %out, %struct.ASN1_ITEM_st* noundef %it, i32 noundef -1, i32 noundef %flags) #6
  br label %return

return:                                           ; preds = %if.end12, %cleanup
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ %call13, %if.end12 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %val, i8** noundef %out, %struct.ASN1_ITEM_st* noundef %it) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @asn1_item_flags_i2d(%struct.ASN1_VALUE_st* noundef %val, i8** noundef %out, %struct.ASN1_ITEM_st* noundef %it, i32 noundef 0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_item_ex_i2d(%struct.ASN1_VALUE_st** noundef %pval, i8** noundef %out, %struct.ASN1_ITEM_st* noundef %it, i32 noundef %tag, i32 noundef %aclass) local_unnamed_addr #0 {
entry:
  %seqcontlen = alloca i32, align 4
  %0 = bitcast i32* %seqcontlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  %funcs = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 4
  %1 = bitcast i8** %funcs to %struct.ASN1_AUX_st**
  %2 = load %struct.ASN1_AUX_st*, %struct.ASN1_AUX_st** %1, align 8, !tbaa !8
  %itype = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 0
  %3 = load i8, i8* %itype, align 8, !tbaa !11
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  %cmp2 = icmp eq %struct.ASN1_VALUE_st* %4, null
  br i1 %cmp2, label %cleanup141, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %cmp4.not = icmp eq %struct.ASN1_AUX_st* %2, null
  br i1 %cmp4.not, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %2, i64 0, i32 1
  %5 = load i32, i32* %flags, align 8, !tbaa !12
  %and = and i32 %5, 8
  %cmp7.not = icmp eq i32 %and, 0
  %asn1_const_cb = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %2, i64 0, i32 6
  %asn1_cb9 = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %2, i64 0, i32 4
  %cond.in = select i1 %cmp7.not, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)** %asn1_cb9, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)** %asn1_const_cb
  %cond = load i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)** %cond.in, align 8, !tbaa !4
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end
  %asn1_cb.0 = phi i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* [ %cond, %if.then6 ], [ null, %if.end ]
  %conv12 = sext i8 %3 to i32
  switch i32 %conv12, label %cleanup141 [
    i32 0, label %sw.bb
    i32 5, label %sw.bb17
    i32 2, label %sw.bb23
    i32 4, label %sw.bb52
    i32 6, label %sw.bb55
    i32 1, label %sw.bb60
  ]

sw.bb:                                            ; preds = %if.end10
  %templates = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 2
  %6 = load %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st** %templates, align 8, !tbaa !15
  %tobool.not = icmp eq %struct.ASN1_TEMPLATE_st* %6, null
  br i1 %tobool.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %sw.bb
  %call = tail call fastcc i32 @asn1_template_ex_i2d(%struct.ASN1_VALUE_st** noundef %pval, i8** noundef %out, %struct.ASN1_TEMPLATE_st* noundef nonnull %6, i32 noundef %tag, i32 noundef %aclass) #6
  br label %cleanup141

if.end15:                                         ; preds = %sw.bb
  %call16 = tail call fastcc i32 @asn1_i2d_ex_primitive(%struct.ASN1_VALUE_st** noundef %pval, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull %it, i32 noundef %tag, i32 noundef %aclass) #6
  br label %cleanup141

sw.bb17:                                          ; preds = %if.end10
  %cmp18.not = icmp eq i32 %tag, -1
  br i1 %cmp18.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %sw.bb17
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ASN1_item_ex_i2d, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 230, i8* noundef null) #8
  br label %cleanup141

if.end21:                                         ; preds = %sw.bb17
  %call22 = tail call fastcc i32 @asn1_i2d_ex_primitive(%struct.ASN1_VALUE_st** noundef %pval, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull %it, i32 noundef -1, i32 noundef %aclass) #6
  br label %cleanup141

sw.bb23:                                          ; preds = %if.end10
  %cmp24.not = icmp eq i32 %tag, -1
  br i1 %cmp24.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %sw.bb23
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ASN1_item_ex_i2d, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 230, i8* noundef null) #8
  br label %cleanup141

if.end27:                                         ; preds = %sw.bb23
  %tobool28.not = icmp eq i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* %asn1_cb.0, null
  br i1 %tobool28.not, label %if.end33, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %if.end27
  %call30 = tail call i32 %asn1_cb.0(i32 noundef 6, %struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef nonnull %it, i8* noundef null) #8
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup141, label %if.end33

if.end33:                                         ; preds = %land.lhs.true29, %if.end27
  %call34 = tail call i32 @ossl_asn1_get_choice_selector_const(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef nonnull %it) #8
  %cmp35 = icmp sgt i32 %call34, -1
  br i1 %cmp35, label %land.lhs.true37, label %if.end45

land.lhs.true37:                                  ; preds = %if.end33
  %conv38265 = zext i32 %call34 to i64
  %tcount = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 3
  %7 = load i64, i64* %tcount, align 8, !tbaa !16
  %cmp39 = icmp sgt i64 %7, %conv38265
  br i1 %cmp39, label %if.then41, label %if.end45

if.then41:                                        ; preds = %land.lhs.true37
  %templates42 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 2
  %8 = load %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st** %templates42, align 8, !tbaa !15
  %add.ptr = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %8, i64 %conv38265
  %call43 = tail call %struct.ASN1_VALUE_st** @ossl_asn1_get_const_field_ptr(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_TEMPLATE_st* noundef %add.ptr) #8
  %call44 = tail call fastcc i32 @asn1_template_ex_i2d(%struct.ASN1_VALUE_st** noundef %call43, i8** noundef %out, %struct.ASN1_TEMPLATE_st* noundef %add.ptr, i32 noundef -1, i32 noundef %aclass) #6
  br label %cleanup141

if.end45:                                         ; preds = %land.lhs.true37, %if.end33
  br i1 %tobool28.not, label %cleanup141, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %if.end45
  %call48 = tail call i32 %asn1_cb.0(i32 noundef 7, %struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef nonnull %it, i8* noundef null) #8
  br label %cleanup141

sw.bb52:                                          ; preds = %if.end10
  %asn1_ex_i2d = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %2, i64 0, i32 6
  %9 = bitcast i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)** %asn1_ex_i2d to i32 (%struct.ASN1_VALUE_st**, i8**, %struct.ASN1_ITEM_st*, i32, i32)**
  %10 = load i32 (%struct.ASN1_VALUE_st**, i8**, %struct.ASN1_ITEM_st*, i32, i32)*, i32 (%struct.ASN1_VALUE_st**, i8**, %struct.ASN1_ITEM_st*, i32, i32)** %9, align 8, !tbaa !17
  %call54 = tail call i32 %10(%struct.ASN1_VALUE_st** noundef %pval, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull %it, i32 noundef %tag, i32 noundef %aclass) #8
  br label %cleanup141

sw.bb55:                                          ; preds = %if.end10
  %and56 = and i32 %aclass, 2048
  %tobool57.not = icmp eq i32 %and56, 0
  %not.tobool57.not = xor i1 %tobool57.not, true
  %spec.select259 = select i1 %tobool57.not, i32 1, i32 2
  br label %sw.bb60

sw.bb60:                                          ; preds = %sw.bb55, %if.end10
  %cmp130 = phi i1 [ false, %if.end10 ], [ %not.tobool57.not, %sw.bb55 ]
  %ndef.0 = phi i32 [ %conv12, %if.end10 ], [ %spec.select259, %sw.bb55 ]
  %call61 = call i32 @ossl_asn1_enc_restore(i32* noundef nonnull %seqcontlen, i8** noundef %out, %struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef nonnull %it) #8
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %cleanup141, label %if.end65

if.end65:                                         ; preds = %sw.bb60
  %cmp66.not = icmp eq i32 %call61, 0
  br i1 %cmp66.not, label %if.end69, label %if.then68

if.then68:                                        ; preds = %if.end65
  %11 = load i32, i32* %seqcontlen, align 4, !tbaa !19
  br label %cleanup141

if.end69:                                         ; preds = %if.end65
  store i32 0, i32* %seqcontlen, align 4, !tbaa !19
  %cmp70 = icmp eq i32 %tag, -1
  %and73 = and i32 %aclass, -193
  %spec.select260 = select i1 %cmp70, i32 %and73, i32 %aclass
  %spec.select261 = select i1 %cmp70, i32 16, i32 %tag
  %tobool75.not = icmp eq i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* %asn1_cb.0, null
  br i1 %tobool75.not, label %if.end80, label %land.lhs.true76

land.lhs.true76:                                  ; preds = %if.end69
  %call77 = call i32 %asn1_cb.0(i32 noundef 6, %struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef nonnull %it, i8* noundef null) #8
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %cleanup141, label %if.end80

if.end80:                                         ; preds = %land.lhs.true76, %if.end69
  %templates81 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 2
  %tcount83 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 3
  %12 = load i64, i64* %tcount83, align 8, !tbaa !16
  %cmp84268 = icmp sgt i64 %12, 0
  br i1 %cmp84268, label %for.body.preheader, label %if.end80.for.end_crit_edge

if.end80.for.end_crit_edge:                       ; preds = %if.end80
  %.pre = load i32, i32* %seqcontlen, align 4, !tbaa !19
  br label %for.end

for.body.preheader:                               ; preds = %if.end80
  %13 = load %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st** %templates81, align 8, !tbaa !15
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %tt.0270 = phi %struct.ASN1_TEMPLATE_st* [ %13, %for.body.preheader ], [ %incdec.ptr, %for.inc ]
  %14 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  %call86 = call %struct.ASN1_TEMPLATE_st* @ossl_asn1_do_adb(%struct.ASN1_VALUE_st* noundef %14, %struct.ASN1_TEMPLATE_st* noundef %tt.0270, i32 noundef 1) #8
  %tobool87.not = icmp eq %struct.ASN1_TEMPLATE_st* %call86, null
  br i1 %tobool87.not, label %cleanup141, label %if.end89

if.end89:                                         ; preds = %for.body
  %call90 = call %struct.ASN1_VALUE_st** @ossl_asn1_get_const_field_ptr(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_TEMPLATE_st* noundef nonnull %call86) #8
  %call91 = call fastcc i32 @asn1_template_ex_i2d(%struct.ASN1_VALUE_st** noundef %call90, i8** noundef null, %struct.ASN1_TEMPLATE_st* noundef nonnull %call86, i32 noundef -1, i32 noundef %spec.select260) #6
  %cmp92 = icmp eq i32 %call91, -1
  br i1 %cmp92, label %cleanup141, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end89
  %15 = load i32, i32* %seqcontlen, align 4, !tbaa !19
  %sub = sub nsw i32 2147483647, %15
  %cmp94 = icmp sgt i32 %call91, %sub
  br i1 %cmp94, label %cleanup141, label %for.inc

for.inc:                                          ; preds = %lor.lhs.false
  %add = add nsw i32 %15, %call91
  store i32 %add, i32* %seqcontlen, align 4, !tbaa !19
  %incdec.ptr = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt.0270, i64 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %16 = load i64, i64* %tcount83, align 8, !tbaa !16
  %cmp84 = icmp sgt i64 %16, %indvars.iv.next
  br i1 %cmp84, label %for.body, label %for.end, !llvm.loop !20

for.end:                                          ; preds = %for.inc, %if.end80.for.end_crit_edge
  %17 = phi i32 [ %.pre, %if.end80.for.end_crit_edge ], [ %add, %for.inc ]
  %call100 = call i32 @ASN1_object_size(i32 noundef %ndef.0, i32 noundef %17, i32 noundef %spec.select261) #8
  %tobool101 = icmp eq i8** %out, null
  %cmp103 = icmp eq i32 %call100, -1
  %or.cond = select i1 %tobool101, i1 true, i1 %cmp103
  br i1 %or.cond, label %cleanup141, label %if.end106

if.end106:                                        ; preds = %for.end
  %18 = load i32, i32* %seqcontlen, align 4, !tbaa !19
  call void @ASN1_put_object(i8** noundef nonnull %out, i32 noundef %ndef.0, i32 noundef %18, i32 noundef %spec.select261, i32 noundef %spec.select260) #8
  %19 = load i64, i64* %tcount83, align 8, !tbaa !16
  %cmp111271 = icmp sgt i64 %19, 0
  br i1 %cmp111271, label %for.body113.preheader, label %for.end129

for.body113.preheader:                            ; preds = %if.end106
  %20 = load %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st** %templates81, align 8, !tbaa !15
  br label %for.body113

for.body113:                                      ; preds = %for.body113.preheader, %for.inc126
  %indvars.iv276 = phi i64 [ 0, %for.body113.preheader ], [ %indvars.iv.next277, %for.inc126 ]
  %tt.1273 = phi %struct.ASN1_TEMPLATE_st* [ %20, %for.body113.preheader ], [ %incdec.ptr127, %for.inc126 ]
  %21 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  %call116 = call %struct.ASN1_TEMPLATE_st* @ossl_asn1_do_adb(%struct.ASN1_VALUE_st* noundef %21, %struct.ASN1_TEMPLATE_st* noundef %tt.1273, i32 noundef 1) #8
  %tobool117.not = icmp eq %struct.ASN1_TEMPLATE_st* %call116, null
  br i1 %tobool117.not, label %cleanup141, label %for.inc126

for.inc126:                                       ; preds = %for.body113
  %call120 = call %struct.ASN1_VALUE_st** @ossl_asn1_get_const_field_ptr(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_TEMPLATE_st* noundef nonnull %call116) #8
  %call121 = call fastcc i32 @asn1_template_ex_i2d(%struct.ASN1_VALUE_st** noundef %call120, i8** noundef %out, %struct.ASN1_TEMPLATE_st* noundef nonnull %call116, i32 noundef -1, i32 noundef %spec.select260) #6
  %incdec.ptr127 = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt.1273, i64 1
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1
  %22 = load i64, i64* %tcount83, align 8, !tbaa !16
  %cmp111 = icmp sgt i64 %22, %indvars.iv.next277
  br i1 %cmp111, label %for.body113, label %for.end129, !llvm.loop !22

for.end129:                                       ; preds = %for.inc126, %if.end106
  br i1 %cmp130, label %if.then132, label %if.end134

if.then132:                                       ; preds = %for.end129
  %call133 = call i32 @ASN1_put_eoc(i8** noundef %out) #8
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %for.end129
  br i1 %tobool75.not, label %if.end140, label %land.lhs.true136

land.lhs.true136:                                 ; preds = %if.end134
  %call137 = call i32 %asn1_cb.0(i32 noundef 7, %struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* noundef nonnull %it, i8* noundef null) #8
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %cleanup141, label %if.end140

if.end140:                                        ; preds = %land.lhs.true136, %if.end134
  br label %cleanup141

cleanup141:                                       ; preds = %if.end89, %lor.lhs.false, %for.body, %for.body113, %land.lhs.true47, %if.end45, %if.end10, %land.lhs.true136, %for.end, %land.lhs.true76, %sw.bb60, %land.lhs.true29, %land.lhs.true, %if.end140, %if.then68, %sw.bb52, %if.then41, %if.then26, %if.end21, %if.then20, %if.end15, %if.then13
  %retval.4 = phi i32 [ %11, %if.then68 ], [ %call100, %if.end140 ], [ %call54, %sw.bb52 ], [ -1, %if.then26 ], [ %call44, %if.then41 ], [ -1, %if.then20 ], [ %call22, %if.end21 ], [ %call, %if.then13 ], [ %call16, %if.end15 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true29 ], [ 0, %sw.bb60 ], [ 0, %land.lhs.true76 ], [ %call100, %for.end ], [ 0, %land.lhs.true136 ], [ 0, %if.end10 ], [ 0, %if.end45 ], [ 0, %land.lhs.true47 ], [ 0, %for.body113 ], [ -1, %if.end89 ], [ -1, %lor.lhs.false ], [ 0, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %retval.4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_template_ex_i2d(%struct.ASN1_VALUE_st** noundef %pval, i8** noundef %out, %struct.ASN1_TEMPLATE_st* nocapture noundef readonly %tt, i32 noundef %tag, i32 noundef %iclass) unnamed_addr #0 {
entry:
  %tval = alloca %struct.ASN1_VALUE_st*, align 8
  %skitem = alloca %struct.ASN1_VALUE_st*, align 8
  %flags1 = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 0
  %0 = load i64, i64* %flags1, align 8, !tbaa !23
  %conv = trunc i64 %0 to i32
  %1 = bitcast %struct.ASN1_VALUE_st** %tval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %and = and i32 %conv, 4096
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.ASN1_VALUE_st** %tval to %struct.ASN1_VALUE_st***
  store %struct.ASN1_VALUE_st** %pval, %struct.ASN1_VALUE_st*** %2, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %pval.addr.0 = phi %struct.ASN1_VALUE_st** [ %tval, %if.then ], [ %pval, %entry ]
  %and2 = and i32 %conv, 24
  %tobool3.not = icmp eq i32 %and2, 0
  %cmp11.not = icmp eq i32 %tag, -1
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  br i1 %cmp11.not, label %if.end7, label %cleanup159

if.end7:                                          ; preds = %if.then4
  %tag8 = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 1
  %3 = load i64, i64* %tag8, align 8, !tbaa !25
  %conv9 = trunc i64 %3 to i32
  %and10 = and i32 %conv, 192
  br label %if.end17

if.else:                                          ; preds = %if.end
  %and14 = and i32 %iclass, 192
  %spec.select269 = select i1 %cmp11.not, i32 0, i32 %and14
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end7
  %ttag.0 = phi i32 [ %conv9, %if.end7 ], [ %tag, %if.else ]
  %tclass.0 = phi i32 [ %and10, %if.end7 ], [ %spec.select269, %if.else ]
  %and18 = and i32 %iclass, -193
  %4 = and i32 %iclass, 2048
  %5 = and i32 %4, %conv
  %.not.not = icmp eq i32 %5, 0
  %spec.select271 = select i1 %.not.not, i32 1, i32 2
  %and26 = and i32 %conv, 6
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end114, label %if.then28

if.then28:                                        ; preds = %if.end17
  %6 = bitcast %struct.ASN1_VALUE_st** %pval.addr.0 to %struct.stack_st_const_ASN1_VALUE**
  %7 = load %struct.stack_st_const_ASN1_VALUE*, %struct.stack_st_const_ASN1_VALUE** %6, align 8, !tbaa !4
  %8 = bitcast %struct.ASN1_VALUE_st** %skitem to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7
  %cmp29 = icmp eq %struct.stack_st_const_ASN1_VALUE* %7, null
  br i1 %cmp29, label %cleanup, label %if.end32

if.end32:                                         ; preds = %if.then28
  %and33 = and i32 %conv, 2
  %tobool34.not = icmp eq i32 %and33, 0
  %and36 = and i32 %conv, 4
  %tobool37.not = icmp eq i32 %and36, 0
  %spec.store.select = select i1 %tobool37.not, i32 1, i32 2
  %isset.0 = select i1 %tobool34.not, i32 0, i32 %spec.store.select
  %cmp42.not = icmp ne i32 %ttag.0, -1
  %and45 = and i32 %conv, 16
  %tobool46.not = icmp eq i32 %and45, 0
  %or.cond267 = select i1 %cmp42.not, i1 %tobool46.not, i1 false
  %. = select i1 %tobool34.not, i32 16, i32 17
  %sktag.0 = select i1 %or.cond267, i32 %ttag.0, i32 %.
  %skaclass.0 = select i1 %or.cond267, i32 %tclass.0, i32 0
  %call282 = tail call fastcc i32 @sk_const_ASN1_VALUE_num(%struct.stack_st_const_ASN1_VALUE* noundef nonnull %7) #6
  %cmp54283 = icmp sgt i32 %call282, 0
  br i1 %cmp54283, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end32
  %item = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end73
  %skcontlen.0285 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end73 ]
  %i.0284 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end73 ]
  %call56 = call fastcc %struct.ASN1_VALUE_st* @sk_const_ASN1_VALUE_value(%struct.stack_st_const_ASN1_VALUE* noundef nonnull %7, i32 noundef %i.0284) #6
  store %struct.ASN1_VALUE_st* %call56, %struct.ASN1_VALUE_st** %skitem, align 8, !tbaa !4
  %9 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %item, align 8, !tbaa !26
  %call57 = call %struct.ASN1_ITEM_st* %9() #8
  %call58 = call i32 @ASN1_item_ex_i2d(%struct.ASN1_VALUE_st** noundef nonnull %skitem, i8** noundef null, %struct.ASN1_ITEM_st* noundef %call57, i32 noundef -1, i32 noundef %and18) #6
  %cmp59 = icmp eq i32 %call58, -1
  %sub = sub nsw i32 2147483647, %call58
  %cmp61 = icmp sgt i32 %skcontlen.0285, %sub
  %or.cond268 = select i1 %cmp59, i1 true, i1 %cmp61
  br i1 %or.cond268, label %cleanup, label %if.end64

if.end64:                                         ; preds = %for.body
  %cmp65 = icmp eq i32 %call58, 0
  br i1 %cmp65, label %land.lhs.true67, label %if.end73

land.lhs.true67:                                  ; preds = %if.end64
  %10 = load i64, i64* %flags1, align 8, !tbaa !23
  %and69 = and i64 %10, 1
  %cmp70 = icmp eq i64 %and69, 0
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %land.lhs.true67
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 312, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.asn1_template_ex_i2d, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 222, i8* noundef null) #8
  br label %cleanup

if.end73:                                         ; preds = %land.lhs.true67, %if.end64
  %add = add nsw i32 %call58, %skcontlen.0285
  %inc = add nuw nsw i32 %i.0284, 1
  %call = call fastcc i32 @sk_const_ASN1_VALUE_num(%struct.stack_st_const_ASN1_VALUE* noundef nonnull %7) #6
  %cmp54 = icmp slt i32 %inc, %call
  br i1 %cmp54, label %for.body, label %for.end, !llvm.loop !27

for.end:                                          ; preds = %if.end73, %if.end32
  %skcontlen.0.lcssa = phi i32 [ 0, %if.end32 ], [ %add, %if.end73 ]
  %call74 = call i32 @ASN1_object_size(i32 noundef %spec.select271, i32 noundef %skcontlen.0.lcssa, i32 noundef %sktag.0) #8
  %cmp75 = icmp eq i32 %call74, -1
  br i1 %cmp75, label %cleanup, label %if.end78

if.end78:                                         ; preds = %for.end
  br i1 %tobool46.not, label %if.end84, label %if.end84.thread

if.end84:                                         ; preds = %if.end78
  %tobool85 = icmp eq i8** %out, null
  br i1 %tobool85, label %cleanup, label %if.end94

if.end84.thread:                                  ; preds = %if.end78
  %call82 = call i32 @ASN1_object_size(i32 noundef %spec.select271, i32 noundef %call74, i32 noundef %ttag.0) #8
  %tobool85273 = icmp eq i8** %out, null
  %cmp87274 = icmp eq i32 %call82, -1
  %or.cond275 = select i1 %tobool85273, i1 true, i1 %cmp87274
  br i1 %or.cond275, label %cleanup, label %if.then93

if.then93:                                        ; preds = %if.end84.thread
  call void @ASN1_put_object(i8** noundef nonnull %out, i32 noundef %spec.select271, i32 noundef %call74, i32 noundef %ttag.0, i32 noundef %tclass.0) #8
  br label %if.end94

if.end94:                                         ; preds = %if.end84, %if.then93
  %ret.0276279 = phi i32 [ %call82, %if.then93 ], [ %call74, %if.end84 ]
  call void @ASN1_put_object(i8** noundef nonnull %out, i32 noundef %spec.select271, i32 noundef %skcontlen.0.lcssa, i32 noundef %sktag.0, i32 noundef %skaclass.0) #8
  %item95 = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 4
  %11 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %item95, align 8, !tbaa !26
  %call96 = call %struct.ASN1_ITEM_st* %11() #8
  call fastcc void @asn1_set_seq_out(%struct.stack_st_const_ASN1_VALUE* noundef nonnull %7, i8** noundef nonnull %out, i32 noundef %skcontlen.0.lcssa, %struct.ASN1_ITEM_st* noundef %call96, i32 noundef %isset.0, i32 noundef %and18) #6
  br i1 %.not.not, label %cleanup, label %if.then100

if.then100:                                       ; preds = %if.end94
  %call101 = call i32 @ASN1_put_eoc(i8** noundef nonnull %out) #8
  br i1 %tobool46.not, label %cleanup, label %if.then104

if.then104:                                       ; preds = %if.then100
  %call105 = call i32 @ASN1_put_eoc(i8** noundef nonnull %out) #8
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end84.thread, %if.end94, %if.then104, %if.then100, %if.end84, %for.end, %if.then28, %if.then72
  %retval.0 = phi i32 [ -1, %if.then72 ], [ 0, %if.then28 ], [ -1, %for.end ], [ %call74, %if.end84 ], [ %ret.0276279, %if.then100 ], [ %ret.0276279, %if.then104 ], [ %ret.0276279, %if.end94 ], [ %call82, %if.end84.thread ], [ -1, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7
  br label %cleanup159

if.end114:                                        ; preds = %if.end17
  %and115 = and i32 %conv, 16
  %tobool116.not = icmp eq i32 %and115, 0
  %item147 = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 4
  %12 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %item147, align 8, !tbaa !26
  %call148 = tail call %struct.ASN1_ITEM_st* %12() #8
  br i1 %tobool116.not, label %if.end146, label %if.then117

if.then117:                                       ; preds = %if.end114
  %call120 = call i32 @ASN1_item_ex_i2d(%struct.ASN1_VALUE_st** noundef %pval.addr.0, i8** noundef null, %struct.ASN1_ITEM_st* noundef %call148, i32 noundef -1, i32 noundef %and18) #6
  %cmp121 = icmp eq i32 %call120, 0
  br i1 %cmp121, label %if.then123, label %if.end130

if.then123:                                       ; preds = %if.then117
  %13 = load i64, i64* %flags1, align 8, !tbaa !23
  %and125 = and i64 %13, 1
  %cmp126 = icmp eq i64 %and125, 0
  br i1 %cmp126, label %if.then128, label %cleanup159

if.then128:                                       ; preds = %if.then123
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 353, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.asn1_template_ex_i2d, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 222, i8* noundef null) #8
  br label %cleanup159

if.end130:                                        ; preds = %if.then117
  %call131 = call i32 @ASN1_object_size(i32 noundef %spec.select271, i32 noundef %call120, i32 noundef %ttag.0) #8
  %tobool132 = icmp ne i8** %out, null
  %cmp134 = icmp ne i32 %call131, -1
  %or.cond167 = select i1 %tobool132, i1 %cmp134, i1 false
  br i1 %or.cond167, label %if.then136, label %cleanup159

if.then136:                                       ; preds = %if.end130
  call void @ASN1_put_object(i8** noundef nonnull %out, i32 noundef %spec.select271, i32 noundef %call120, i32 noundef %ttag.0, i32 noundef %tclass.0) #8
  %14 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %item147, align 8, !tbaa !26
  %call138 = call %struct.ASN1_ITEM_st* %14() #8
  %call139 = call i32 @ASN1_item_ex_i2d(%struct.ASN1_VALUE_st** noundef %pval.addr.0, i8** noundef nonnull %out, %struct.ASN1_ITEM_st* noundef %call138, i32 noundef -1, i32 noundef %and18) #6
  br i1 %.not.not, label %cleanup159, label %if.then142

if.then142:                                       ; preds = %if.then136
  %call143 = call i32 @ASN1_put_eoc(i8** noundef nonnull %out) #8
  br label %cleanup159

if.end146:                                        ; preds = %if.end114
  %or = or i32 %tclass.0, %and18
  %call149 = call i32 @ASN1_item_ex_i2d(%struct.ASN1_VALUE_st** noundef %pval.addr.0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef %call148, i32 noundef %ttag.0, i32 noundef %or) #6
  %cmp150 = icmp eq i32 %call149, 0
  br i1 %cmp150, label %land.lhs.true152, label %cleanup159

land.lhs.true152:                                 ; preds = %if.end146
  %15 = load i64, i64* %flags1, align 8, !tbaa !23
  %and154 = and i64 %15, 1
  %cmp155 = icmp eq i64 %and154, 0
  br i1 %cmp155, label %if.then157, label %cleanup159

if.then157:                                       ; preds = %land.lhs.true152
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 374, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.asn1_template_ex_i2d, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 222, i8* noundef null) #8
  br label %cleanup159

cleanup159:                                       ; preds = %if.end146, %land.lhs.true152, %if.end130, %if.then142, %if.then136, %if.then123, %if.then4, %if.then157, %if.then128, %cleanup
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ -1, %if.then128 ], [ -1, %if.then157 ], [ -1, %if.then4 ], [ 0, %if.then123 ], [ %call131, %if.then136 ], [ %call131, %if.then142 ], [ %call131, %if.end130 ], [ 0, %land.lhs.true152 ], [ %call149, %if.end146 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_i2d_ex_primitive(%struct.ASN1_VALUE_st** noundef %pval, i8** noundef %out, %struct.ASN1_ITEM_st* noundef %it, i32 noundef %tag, i32 noundef %aclass) unnamed_addr #0 {
entry:
  %utype = alloca i32, align 4
  %0 = bitcast i32* %utype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  %utype1 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 1
  %1 = load i64, i64* %utype1, align 8, !tbaa !28
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %utype, align 4, !tbaa !19
  %call = call fastcc i32 @asn1_ex_i2c(%struct.ASN1_VALUE_st** noundef %pval, i8* noundef null, i32* noundef nonnull %utype, %struct.ASN1_ITEM_st* noundef %it) #6
  %2 = load i32, i32* %utype, align 4, !tbaa !19
  %cmp8 = icmp eq i32 %call, -1
  br i1 %cmp8, label %cleanup, label %if.end11

if.end11:                                         ; preds = %entry
  %cmp12 = icmp eq i32 %call, -2
  %spec.select = select i1 %cmp12, i32 0, i32 %call
  %spec.select59 = select i1 %cmp12, i32 2, i32 0
  %cmp16 = icmp eq i32 %tag, -1
  %tag.addr.0 = select i1 %cmp16, i32 %2, i32 %tag
  %tobool.not = icmp eq i8** %out, null
  br i1 %tobool.not, label %if.end30, label %if.then20

if.then20:                                        ; preds = %if.end11
  switch i32 %2, label %if.then22 [
    i32 -3, label %if.end23
    i32 17, label %if.end23
    i32 16, label %if.end23
  ]

if.then22:                                        ; preds = %if.then20
  call void @ASN1_put_object(i8** noundef nonnull %out, i32 noundef %spec.select59, i32 noundef %spec.select, i32 noundef %tag.addr.0, i32 noundef %aclass) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.then20, %if.then20, %if.then22
  %3 = load i8*, i8** %out, align 8, !tbaa !4
  %call24 = call fastcc i32 @asn1_ex_i2c(%struct.ASN1_VALUE_st** noundef %pval, i8* noundef %3, i32* noundef nonnull %utype, %struct.ASN1_ITEM_st* noundef nonnull %it) #6
  br i1 %cmp12, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.end23
  %call27 = call i32 @ASN1_put_eoc(i8** noundef nonnull %out) #8
  br label %if.end30

if.else28:                                        ; preds = %if.end23
  %4 = load i8*, i8** %out, align 8, !tbaa !4
  %idx.ext = sext i32 %spec.select to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %out, align 8, !tbaa !4
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.else28, %if.end11
  switch i32 %2, label %if.then32 [
    i32 -3, label %cleanup
    i32 17, label %cleanup
    i32 16, label %cleanup
  ]

if.then32:                                        ; preds = %if.end30
  %call33 = call i32 @ASN1_object_size(i32 noundef %spec.select59, i32 noundef %spec.select, i32 noundef %tag.addr.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end30, %if.end30, %entry, %if.then32
  %retval.0 = phi i32 [ %call33, %if.then32 ], [ 0, %entry ], [ %spec.select, %if.end30 ], [ %spec.select, %if.end30 ], [ %spec.select, %if.end30 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @ossl_asn1_get_choice_selector_const(%struct.ASN1_VALUE_st** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_VALUE_st** @ossl_asn1_get_const_field_ptr(%struct.ASN1_VALUE_st** noundef, %struct.ASN1_TEMPLATE_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @ossl_asn1_enc_restore(i32* noundef, i8** noundef, %struct.ASN1_VALUE_st** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_TEMPLATE_st* @ossl_asn1_do_adb(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_TEMPLATE_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ASN1_object_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ASN1_put_object(i8** noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ASN1_put_eoc(i8** noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_const_ASN1_VALUE_num(%struct.stack_st_const_ASN1_VALUE* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_const_ASN1_VALUE* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ASN1_VALUE_st* @sk_const_ASN1_VALUE_value(%struct.stack_st_const_ASN1_VALUE* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_const_ASN1_VALUE* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #8
  %1 = bitcast i8* %call to %struct.ASN1_VALUE_st*
  ret %struct.ASN1_VALUE_st* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @asn1_set_seq_out(%struct.stack_st_const_ASN1_VALUE* noundef %sk, i8** noundef %out, i32 noundef %skcontlen, %struct.ASN1_ITEM_st* noundef %item, i32 noundef %do_sort, i32 noundef %iclass) unnamed_addr #0 {
entry:
  %skitem = alloca %struct.ASN1_VALUE_st*, align 8
  %p = alloca i8*, align 8
  %0 = bitcast %struct.ASN1_VALUE_st** %skitem to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store i8* null, i8** %p, align 8, !tbaa !4
  %tobool.not = icmp eq i32 %do_sort, 0
  br i1 %tobool.not, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @sk_const_ASN1_VALUE_num(%struct.stack_st_const_ASN1_VALUE* noundef %sk) #6
  %cmp = icmp slt i32 %call, 2
  br i1 %cmp, label %if.end14, label %if.else

if.else:                                          ; preds = %if.then
  %call2 = tail call fastcc i32 @sk_const_ASN1_VALUE_num(%struct.stack_st_const_ASN1_VALUE* noundef %sk) #6
  %conv = sext i32 %call2 to i64
  %mul = mul nsw i64 %conv, 24
  %call3 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 417) #8
  %2 = bitcast i8* %call3 to %struct.DER_ENC*
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 419, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.asn1_set_seq_out, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %if.else
  %conv7 = sext i32 %skcontlen to i64
  %call8 = tail call i8* @CRYPTO_malloc(i64 noundef %conv7, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 422) #8
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %if.then11, label %if.end22

if.then11:                                        ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 424, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.asn1_set_seq_out, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #8
  br label %err

if.end14:                                         ; preds = %if.then, %entry
  %call1720 = tail call fastcc i32 @sk_const_ASN1_VALUE_num(%struct.stack_st_const_ASN1_VALUE* noundef %sk) #6
  %cmp1821 = icmp sgt i32 %call1720, 0
  br i1 %cmp1821, label %for.body, label %cleanup

for.body:                                         ; preds = %if.end14, %for.body
  %i.022 = phi i32 [ %inc, %for.body ], [ 0, %if.end14 ]
  %call20 = call fastcc %struct.ASN1_VALUE_st* @sk_const_ASN1_VALUE_value(%struct.stack_st_const_ASN1_VALUE* noundef %sk, i32 noundef %i.022) #6
  store %struct.ASN1_VALUE_st* %call20, %struct.ASN1_VALUE_st** %skitem, align 8, !tbaa !4
  %call21 = call i32 @ASN1_item_ex_i2d(%struct.ASN1_VALUE_st** noundef nonnull %skitem, i8** noundef %out, %struct.ASN1_ITEM_st* noundef %item, i32 noundef -1, i32 noundef %iclass) #6
  %inc = add nuw nsw i32 %i.022, 1
  %call17 = call fastcc i32 @sk_const_ASN1_VALUE_num(%struct.stack_st_const_ASN1_VALUE* noundef %sk) #6
  %cmp18 = icmp slt i32 %inc, %call17
  br i1 %cmp18, label %for.body, label %cleanup, !llvm.loop !29

if.end22:                                         ; preds = %if.end
  store i8* %call8, i8** %p, align 8, !tbaa !4
  %call248 = tail call fastcc i32 @sk_const_ASN1_VALUE_num(%struct.stack_st_const_ASN1_VALUE* noundef %sk) #6
  %cmp259 = icmp sgt i32 %call248, 0
  br i1 %cmp259, label %for.body27, label %for.end32

for.body27:                                       ; preds = %if.end22, %for.body27
  %tder.011 = phi %struct.DER_ENC* [ %incdec.ptr, %for.body27 ], [ %2, %if.end22 ]
  %i.110 = phi i32 [ %inc31, %for.body27 ], [ 0, %if.end22 ]
  %call28 = call fastcc %struct.ASN1_VALUE_st* @sk_const_ASN1_VALUE_value(%struct.stack_st_const_ASN1_VALUE* noundef %sk, i32 noundef %i.110) #6
  store %struct.ASN1_VALUE_st* %call28, %struct.ASN1_VALUE_st** %skitem, align 8, !tbaa !4
  %3 = load i8*, i8** %p, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.DER_ENC, %struct.DER_ENC* %tder.011, i64 0, i32 0
  store i8* %3, i8** %data, align 8, !tbaa !30
  %call29 = call i32 @ASN1_item_ex_i2d(%struct.ASN1_VALUE_st** noundef nonnull %skitem, i8** noundef nonnull %p, %struct.ASN1_ITEM_st* noundef %item, i32 noundef -1, i32 noundef %iclass) #6
  %length = getelementptr inbounds %struct.DER_ENC, %struct.DER_ENC* %tder.011, i64 0, i32 1
  store i32 %call29, i32* %length, align 8, !tbaa !32
  %4 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %skitem, align 8, !tbaa !4
  %field = getelementptr inbounds %struct.DER_ENC, %struct.DER_ENC* %tder.011, i64 0, i32 2
  store %struct.ASN1_VALUE_st* %4, %struct.ASN1_VALUE_st** %field, align 8, !tbaa !33
  %inc31 = add nuw nsw i32 %i.110, 1
  %incdec.ptr = getelementptr inbounds %struct.DER_ENC, %struct.DER_ENC* %tder.011, i64 1
  %call24 = call fastcc i32 @sk_const_ASN1_VALUE_num(%struct.stack_st_const_ASN1_VALUE* noundef %sk) #6
  %cmp25 = icmp slt i32 %inc31, %call24
  br i1 %cmp25, label %for.body27, label %for.end32, !llvm.loop !34

for.end32:                                        ; preds = %for.body27, %if.end22
  %call33 = call fastcc i32 @sk_const_ASN1_VALUE_num(%struct.stack_st_const_ASN1_VALUE* noundef %sk) #6
  %conv34 = sext i32 %call33 to i64
  call void @qsort(i8* noundef nonnull %call3, i64 noundef %conv34, i64 noundef 24, i32 (i8*, i8*)* noundef nonnull @der_cmp) #8
  %5 = load i8*, i8** %out, align 8, !tbaa !4
  store i8* %5, i8** %p, align 8, !tbaa !4
  %call3612 = call fastcc i32 @sk_const_ASN1_VALUE_num(%struct.stack_st_const_ASN1_VALUE* noundef %sk) #6
  %cmp3713 = icmp sgt i32 %call3612, 0
  br i1 %cmp3713, label %for.body39, label %for.end48

for.body39:                                       ; preds = %for.end32, %for.body39
  %tder.115 = phi %struct.DER_ENC* [ %incdec.ptr47, %for.body39 ], [ %2, %for.end32 ]
  %i.214 = phi i32 [ %inc46, %for.body39 ], [ 0, %for.end32 ]
  %6 = load i8*, i8** %p, align 8, !tbaa !4
  %data40 = getelementptr inbounds %struct.DER_ENC, %struct.DER_ENC* %tder.115, i64 0, i32 0
  %7 = load i8*, i8** %data40, align 8, !tbaa !30
  %length41 = getelementptr inbounds %struct.DER_ENC, %struct.DER_ENC* %tder.115, i64 0, i32 1
  %8 = load i32, i32* %length41, align 8, !tbaa !32
  %conv42 = sext i32 %8 to i64
  %call43 = call i8* @memcpy(i8* noundef %6, i8* noundef %7, i64 noundef %conv42) #8
  %9 = load i32, i32* %length41, align 8, !tbaa !32
  %10 = load i8*, i8** %p, align 8, !tbaa !4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8, !tbaa !4
  %inc46 = add nuw nsw i32 %i.214, 1
  %incdec.ptr47 = getelementptr inbounds %struct.DER_ENC, %struct.DER_ENC* %tder.115, i64 1
  %call36 = call fastcc i32 @sk_const_ASN1_VALUE_num(%struct.stack_st_const_ASN1_VALUE* noundef %sk) #6
  %cmp37 = icmp slt i32 %inc46, %call36
  br i1 %cmp37, label %for.body39, label %for.end48, !llvm.loop !35

for.end48:                                        ; preds = %for.body39, %for.end32
  %11 = load i8*, i8** %p, align 8, !tbaa !4
  store i8* %11, i8** %out, align 8, !tbaa !4
  %cmp49 = icmp eq i32 %do_sort, 2
  br i1 %cmp49, label %for.cond52.preheader, label %err

for.cond52.preheader:                             ; preds = %for.end48
  %call5316 = call fastcc i32 @sk_const_ASN1_VALUE_num(%struct.stack_st_const_ASN1_VALUE* noundef %sk) #6
  %cmp5417 = icmp sgt i32 %call5316, 0
  br i1 %cmp5417, label %for.body56, label %err

for.body56:                                       ; preds = %for.cond52.preheader, %for.body56
  %tder.219 = phi %struct.DER_ENC* [ %incdec.ptr61, %for.body56 ], [ %2, %for.cond52.preheader ]
  %i.318 = phi i32 [ %inc60, %for.body56 ], [ 0, %for.cond52.preheader ]
  %field57 = getelementptr inbounds %struct.DER_ENC, %struct.DER_ENC* %tder.219, i64 0, i32 2
  %12 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %field57, align 8, !tbaa !33
  call fastcc void @sk_const_ASN1_VALUE_set(%struct.stack_st_const_ASN1_VALUE* noundef %sk, i32 noundef %i.318, %struct.ASN1_VALUE_st* noundef %12) #6
  %inc60 = add nuw nsw i32 %i.318, 1
  %incdec.ptr61 = getelementptr inbounds %struct.DER_ENC, %struct.DER_ENC* %tder.219, i64 1
  %call53 = call fastcc i32 @sk_const_ASN1_VALUE_num(%struct.stack_st_const_ASN1_VALUE* noundef %sk) #6
  %cmp54 = icmp slt i32 %inc60, %call53
  br i1 %cmp54, label %for.body56, label %err, !llvm.loop !36

err:                                              ; preds = %for.body56, %for.cond52.preheader, %for.end48, %if.then11
  call void @CRYPTO_free(i8* noundef nonnull %call3, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 463) #8
  call void @CRYPTO_free(i8* noundef %call8, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 464) #8
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end14, %err, %if.then6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret void
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @der_cmp(i8* nocapture noundef readonly %a, i8* nocapture noundef readonly %b) #3 {
entry:
  %length = getelementptr inbounds i8, i8* %a, i64 8
  %0 = bitcast i8* %length to i32*
  %1 = load i32, i32* %0, align 8, !tbaa !32
  %length1 = getelementptr inbounds i8, i8* %b, i64 8
  %2 = bitcast i8* %length1 to i32*
  %3 = load i32, i32* %2, align 8, !tbaa !32
  %cmp = icmp slt i32 %1, %3
  %. = select i1 %cmp, i32 %1, i32 %3
  %data = bitcast i8* %a to i8**
  %4 = load i8*, i8** %data, align 8, !tbaa !30
  %data4 = bitcast i8* %b to i8**
  %5 = load i8*, i8** %data4, align 8, !tbaa !30
  %conv = sext i32 %. to i64
  %call = tail call i32 @memcmp(i8* noundef %4, i8* noundef %5, i64 noundef %conv) #9
  %tobool.not = icmp eq i32 %call, 0
  %sub = sub nsw i32 %1, %3
  %spec.select = select i1 %tobool.not, i32 %sub, i32 %call
  ret i32 %spec.select
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_const_ASN1_VALUE_set(%struct.stack_st_const_ASN1_VALUE* noundef %sk, i32 noundef %idx, %struct.ASN1_VALUE_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_const_ASN1_VALUE* %sk to %struct.stack_st*
  %1 = bitcast %struct.ASN1_VALUE_st* %ptr to i8*
  %call = tail call i8* @OPENSSL_sk_set(%struct.stack_st* noundef %0, i32 noundef %idx, i8* noundef %1) #8
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare i8* @OPENSSL_sk_set(%struct.stack_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_ex_i2c(%struct.ASN1_VALUE_st** noundef %pval, i8* noundef %cout, i32* noundef %putype, %struct.ASN1_ITEM_st* noundef %it) unnamed_addr #0 {
entry:
  %cout.addr = alloca i8*, align 8
  %c = alloca i8, align 1
  store i8* %cout, i8** %cout.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %c) #7
  %funcs = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 4
  %0 = bitcast i8** %funcs to %struct.ASN1_PRIMITIVE_FUNCS_st**
  %1 = load %struct.ASN1_PRIMITIVE_FUNCS_st*, %struct.ASN1_PRIMITIVE_FUNCS_st** %0, align 8, !tbaa !8
  %tobool.not = icmp eq %struct.ASN1_PRIMITIVE_FUNCS_st* %1, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %prim_i2c = getelementptr inbounds %struct.ASN1_PRIMITIVE_FUNCS_st, %struct.ASN1_PRIMITIVE_FUNCS_st* %1, i64 0, i32 6
  %2 = load i32 (%struct.ASN1_VALUE_st**, i8*, i32*, %struct.ASN1_ITEM_st*)*, i32 (%struct.ASN1_VALUE_st**, i8*, i32*, %struct.ASN1_ITEM_st*)** %prim_i2c, align 8, !tbaa !37
  %tobool1.not = icmp eq i32 (%struct.ASN1_VALUE_st**, i8*, i32*, %struct.ASN1_ITEM_st*)* %2, null
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 %2(%struct.ASN1_VALUE_st** noundef %pval, i8* noundef %cout, i32* noundef %putype, %struct.ASN1_ITEM_st* noundef nonnull %it) #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %itype = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 0
  %3 = load i8, i8* %itype, align 8, !tbaa !11
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %utype4 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 1
  %4 = load i64, i64* %utype4, align 8, !tbaa !28
  %cmp5.not = icmp eq i64 %4, 1
  br i1 %cmp5.not, label %if.else23, label %if.then7.thread

if.then7:                                         ; preds = %if.end
  %5 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  %cmp8 = icmp eq %struct.ASN1_VALUE_st* %5, null
  %6 = bitcast %struct.ASN1_VALUE_st* %5 to %struct.asn1_string_st*
  br i1 %cmp8, label %cleanup, label %if.end12

if.then7.thread:                                  ; preds = %lor.lhs.false
  %7 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  %cmp8151 = icmp eq %struct.ASN1_VALUE_st* %7, null
  br i1 %cmp8151, label %cleanup, label %if.else

if.end12:                                         ; preds = %if.then7
  %cmp15 = icmp eq i8 %3, 5
  br i1 %cmp15, label %if.then17, label %if.end12.if.else_crit_edge

if.end12.if.else_crit_edge:                       ; preds = %if.end12
  %utype18.phi.trans.insert = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 1
  %.pre = load i64, i64* %utype18.phi.trans.insert, align 8, !tbaa !28
  br label %if.else

if.then17:                                        ; preds = %if.end12
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %6, i64 0, i32 1
  %8 = load i32, i32* %type, align 4, !tbaa !39
  store i32 %8, i32* %putype, align 4, !tbaa !19
  br label %if.end25

if.else:                                          ; preds = %if.end12.if.else_crit_edge, %if.then7.thread
  %9 = phi i64 [ %.pre, %if.end12.if.else_crit_edge ], [ %4, %if.then7.thread ]
  %cmp19 = icmp eq i64 %9, -4
  br i1 %cmp19, label %if.then21, label %if.else23

if.then21:                                        ; preds = %if.else
  %10 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.asn1_type_st**
  %11 = load %struct.asn1_type_st*, %struct.asn1_type_st** %10, align 8, !tbaa !4
  %type22 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %11, i64 0, i32 0
  %12 = load i32, i32* %type22, align 8, !tbaa !41
  store i32 %12, i32* %putype, align 4, !tbaa !19
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %11, i64 0, i32 1
  %asn1_value = bitcast %union.anon* %value to %struct.ASN1_VALUE_st**
  br label %if.end25

if.else23:                                        ; preds = %lor.lhs.false, %if.else
  %13 = load i32, i32* %putype, align 4, !tbaa !19
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.else23, %if.then17
  %utype.0 = phi i32 [ %8, %if.then17 ], [ %12, %if.then21 ], [ %13, %if.else23 ]
  %pval.addr.0 = phi %struct.ASN1_VALUE_st** [ %pval, %if.then17 ], [ %asn1_value, %if.then21 ], [ %pval, %if.else23 ]
  switch i32 %utype.0, label %sw.default [
    i32 6, label %sw.bb
    i32 5, label %cleanup
    i32 1, label %sw.bb34
    i32 3, label %sw.bb57
    i32 2, label %sw.bb60
    i32 10, label %sw.bb60
  ]

sw.bb:                                            ; preds = %if.end25
  %14 = bitcast %struct.ASN1_VALUE_st** %pval.addr.0 to %struct.asn1_object_st**
  %15 = load %struct.asn1_object_st*, %struct.asn1_object_st** %14, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %15, i64 0, i32 4
  %16 = load i8*, i8** %data, align 8, !tbaa !43
  %length = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %15, i64 0, i32 3
  %17 = load i32, i32* %length, align 4, !tbaa !45
  %cmp26 = icmp eq i8* %16, null
  %cmp29 = icmp eq i32 %17, 0
  %or.cond = select i1 %cmp26, i1 true, i1 %cmp29
  br i1 %or.cond, label %cleanup, label %sw.epilog

sw.bb34:                                          ; preds = %if.end25
  %18 = bitcast %struct.ASN1_VALUE_st** %pval.addr.0 to i32*
  %19 = load i32, i32* %18, align 4, !tbaa !19
  %cmp35 = icmp eq i32 %19, -1
  br i1 %cmp35, label %cleanup, label %if.end38

if.end38:                                         ; preds = %sw.bb34
  %utype39 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 1
  %20 = load i64, i64* %utype39, align 8, !tbaa !28
  %cmp40.not = icmp eq i64 %20, -4
  br i1 %cmp40.not, label %if.end55, label %if.then42

if.then42:                                        ; preds = %if.end38
  %tobool43.not = icmp eq i32 %19, 0
  %size51 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 5
  %21 = load i64, i64* %size51, align 8, !tbaa !46
  br i1 %tobool43.not, label %land.lhs.true50, label %land.lhs.true44

land.lhs.true44:                                  ; preds = %if.then42
  %cmp45 = icmp sgt i64 %21, 0
  br i1 %cmp45, label %cleanup, label %if.end55

land.lhs.true50:                                  ; preds = %if.then42
  %tobool52.not = icmp eq i64 %21, 0
  br i1 %tobool52.not, label %cleanup, label %if.end55

if.end55:                                         ; preds = %land.lhs.true44, %land.lhs.true50, %if.end38
  %conv56 = trunc i32 %19 to i8
  store i8 %conv56, i8* %c, align 1, !tbaa !47
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end25
  %22 = bitcast %struct.ASN1_VALUE_st** %pval.addr.0 to %struct.asn1_string_st**
  %23 = load %struct.asn1_string_st*, %struct.asn1_string_st** %22, align 8, !tbaa !4
  %tobool58.not = icmp eq i8* %cout, null
  %cout.addr. = select i1 %tobool58.not, i8** null, i8** %cout.addr
  %call59 = call i32 @ossl_i2c_ASN1_BIT_STRING(%struct.asn1_string_st* noundef %23, i8** noundef %cout.addr.) #8
  br label %cleanup

sw.bb60:                                          ; preds = %if.end25, %if.end25
  %24 = bitcast %struct.ASN1_VALUE_st** %pval.addr.0 to %struct.asn1_string_st**
  %25 = load %struct.asn1_string_st*, %struct.asn1_string_st** %24, align 8, !tbaa !4
  %tobool61.not = icmp eq i8* %cout, null
  %cout.addr.96 = select i1 %tobool61.not, i8** null, i8** %cout.addr
  %call66 = call i32 @ossl_i2c_ASN1_INTEGER(%struct.asn1_string_st* noundef %25, i8** noundef %cout.addr.96) #8
  br label %cleanup

sw.default:                                       ; preds = %if.end25
  %26 = bitcast %struct.ASN1_VALUE_st** %pval.addr.0 to %struct.asn1_string_st**
  %27 = load %struct.asn1_string_st*, %struct.asn1_string_st** %26, align 8, !tbaa !4
  %size68 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 5
  %28 = load i64, i64* %size68, align 8, !tbaa !46
  %cmp69 = icmp eq i64 %28, 2048
  br i1 %cmp69, label %land.lhs.true71, label %if.end79

land.lhs.true71:                                  ; preds = %sw.default
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %27, i64 0, i32 3
  %29 = load i64, i64* %flags, align 8, !tbaa !48
  %and = and i64 %29, 16
  %tobool72.not = icmp eq i64 %and, 0
  br i1 %tobool72.not, label %if.end79, label %if.then73

if.then73:                                        ; preds = %land.lhs.true71
  %tobool74.not = icmp eq i8* %cout, null
  br i1 %tobool74.not, label %cleanup, label %if.then75

if.then75:                                        ; preds = %if.then73
  %data76 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %27, i64 0, i32 2
  store i8* %cout, i8** %data76, align 8, !tbaa !49
  %length77 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %27, i64 0, i32 0
  store i32 0, i32* %length77, align 8, !tbaa !50
  br label %cleanup

if.end79:                                         ; preds = %land.lhs.true71, %sw.default
  %data80 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %27, i64 0, i32 2
  %30 = load i8*, i8** %data80, align 8, !tbaa !49
  %length81 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %27, i64 0, i32 0
  %31 = load i32, i32* %length81, align 8, !tbaa !50
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end79, %if.end55
  %cont.0 = phi i8* [ %30, %if.end79 ], [ %c, %if.end55 ], [ %16, %sw.bb ]
  %len.0 = phi i32 [ %31, %if.end79 ], [ 1, %if.end55 ], [ %17, %sw.bb ]
  %tobool82 = icmp ne i8* %cout, null
  %tobool84 = icmp ne i32 %len.0, 0
  %or.cond97 = select i1 %tobool82, i1 %tobool84, i1 false
  br i1 %or.cond97, label %if.then85, label %cleanup

if.then85:                                        ; preds = %sw.epilog
  %conv86 = sext i32 %len.0 to i64
  %call87 = call i8* @memcpy(i8* noundef nonnull %cout, i8* noundef %cont.0, i64 noundef %conv86) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then7.thread, %sw.epilog, %if.then85, %if.then73, %if.then75, %land.lhs.true50, %land.lhs.true44, %sw.bb34, %sw.bb, %if.then7, %sw.bb60, %sw.bb57, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call66, %sw.bb60 ], [ %call59, %sw.bb57 ], [ -1, %if.then7 ], [ -1, %sw.bb ], [ -1, %sw.bb34 ], [ -1, %land.lhs.true44 ], [ -1, %land.lhs.true50 ], [ -2, %if.then75 ], [ -2, %if.then73 ], [ %len.0, %if.then85 ], [ %len.0, %sw.epilog ], [ -1, %if.then7.thread ], [ 0, %if.end25 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %c) #7
  ret i32 %retval.0
}

declare i32 @ossl_i2c_ASN1_BIT_STRING(%struct.asn1_string_st* noundef, i8** noundef) local_unnamed_addr #2

declare i32 @ossl_i2c_ASN1_INTEGER(%struct.asn1_string_st* noundef, i8** noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!12 = !{!13, !14, i64 8}
!13 = !{!"ASN1_AUX_st", !5, i64 0, !14, i64 8, !14, i64 12, !14, i64 16, !5, i64 24, !14, i64 32, !5, i64 40}
!14 = !{!"int", !6, i64 0}
!15 = !{!9, !5, i64 16}
!16 = !{!9, !10, i64 24}
!17 = !{!18, !5, i64 40}
!18 = !{!"ASN1_EXTERN_FUNCS_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64}
!19 = !{!14, !14, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = !{!24, !10, i64 0}
!24 = !{!"ASN1_TEMPLATE_st", !10, i64 0, !10, i64 8, !10, i64 16, !5, i64 24, !5, i64 32}
!25 = !{!24, !10, i64 8}
!26 = !{!24, !5, i64 32}
!27 = distinct !{!27, !21}
!28 = !{!9, !10, i64 8}
!29 = distinct !{!29, !21}
!30 = !{!31, !5, i64 0}
!31 = !{!"", !5, i64 0, !14, i64 8, !5, i64 16}
!32 = !{!31, !14, i64 8}
!33 = !{!31, !5, i64 16}
!34 = distinct !{!34, !21}
!35 = distinct !{!35, !21}
!36 = distinct !{!36, !21}
!37 = !{!38, !5, i64 48}
!38 = !{!"ASN1_PRIMITIVE_FUNCS_st", !5, i64 0, !10, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56}
!39 = !{!40, !14, i64 4}
!40 = !{!"asn1_string_st", !14, i64 0, !14, i64 4, !5, i64 8, !10, i64 16}
!41 = !{!42, !14, i64 0}
!42 = !{!"asn1_type_st", !14, i64 0, !6, i64 8}
!43 = !{!44, !5, i64 24}
!44 = !{!"asn1_object_st", !5, i64 0, !5, i64 8, !14, i64 16, !14, i64 20, !5, i64 24, !14, i64 32}
!45 = !{!44, !14, i64 20}
!46 = !{!9, !10, i64 40}
!47 = !{!6, !6, i64 0}
!48 = !{!40, !10, i64 16}
!49 = !{!40, !5, i64 8}
!50 = !{!40, !14, i64 0}
