; ModuleID = 'crypto/asn1/x_int64.c'
source_filename = "crypto/asn1/x_int64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.ASN1_PRIMITIVE_FUNCS_st = type { i8*, i64, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, i32 (%struct.ASN1_VALUE_st**, i8*, i32, i32, i8*, %struct.ASN1_ITEM_st*)*, i32 (%struct.ASN1_VALUE_st**, i8*, i32*, %struct.ASN1_ITEM_st*)*, i32 (%struct.bio_st*, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i32, %struct.asn1_pctx_st*)* }
%struct.ASN1_VALUE_st = type opaque
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type opaque

@INT32_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 2, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* bitcast (%struct.ASN1_PRIMITIVE_FUNCS_st* @uint32_pf to i8*), i64 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0) }, align 8
@uint32_pf = internal global %struct.ASN1_PRIMITIVE_FUNCS_st { i8* null, i64 0, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* @uint32_new, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* @uint32_free, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* @uint32_clear, i32 (%struct.ASN1_VALUE_st**, i8*, i32, i32, i8*, %struct.ASN1_ITEM_st*)* @uint32_c2i, i32 (%struct.ASN1_VALUE_st**, i8*, i32*, %struct.ASN1_ITEM_st*)* @uint32_i2c, i32 (%struct.bio_st*, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i32, %struct.asn1_pctx_st*)* @uint32_print }, align 8
@.str = private unnamed_addr constant [6 x i8] c"INT32\00", align 1
@UINT32_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 2, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* bitcast (%struct.ASN1_PRIMITIVE_FUNCS_st* @uint32_pf to i8*), i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"UINT32\00", align 1
@INT64_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 2, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* bitcast (%struct.ASN1_PRIMITIVE_FUNCS_st* @uint64_pf to i8*), i64 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0) }, align 8
@uint64_pf = internal global %struct.ASN1_PRIMITIVE_FUNCS_st { i8* null, i64 0, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* @uint64_new, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* @uint64_free, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* @uint64_clear, i32 (%struct.ASN1_VALUE_st**, i8*, i32, i32, i8*, %struct.ASN1_ITEM_st*)* @uint64_c2i, i32 (%struct.ASN1_VALUE_st**, i8*, i32*, %struct.ASN1_ITEM_st*)* @uint64_i2c, i32 (%struct.bio_st*, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i32, %struct.asn1_pctx_st*)* @uint64_print }, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"INT64\00", align 1
@UINT64_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 2, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* bitcast (%struct.ASN1_PRIMITIVE_FUNCS_st* @uint64_pf to i8*), i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"UINT64\00", align 1
@ZINT32_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 2, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* bitcast (%struct.ASN1_PRIMITIVE_FUNCS_st* @uint32_pf to i8*), i64 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0) }, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"ZINT32\00", align 1
@ZUINT32_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 2, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* bitcast (%struct.ASN1_PRIMITIVE_FUNCS_st* @uint32_pf to i8*), i64 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0) }, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"ZUINT32\00", align 1
@ZINT64_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 2, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* bitcast (%struct.ASN1_PRIMITIVE_FUNCS_st* @uint64_pf to i8*), i64 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0) }, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"ZINT64\00", align 1
@ZUINT64_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 2, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* bitcast (%struct.ASN1_PRIMITIVE_FUNCS_st* @uint64_pf to i8*), i64 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0) }, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"ZUINT64\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"crypto/asn1/x_int64.c\00", align 1
@__func__.uint32_new = private unnamed_addr constant [11 x i8] c"uint32_new\00", align 1
@__func__.uint32_c2i = private unnamed_addr constant [11 x i8] c"uint32_c2i\00", align 1
@__func__.uint64_new = private unnamed_addr constant [11 x i8] c"uint64_new\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@__func__.uint64_c2i = private unnamed_addr constant [11 x i8] c"uint64_c2i\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%jd\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%ju\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @INT32_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @INT32_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @UINT32_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @UINT32_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @INT64_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @INT64_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @UINT64_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @UINT64_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ZINT32_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ZINT32_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ZUINT32_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ZUINT32_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ZINT64_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ZINT64_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ZUINT64_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ZUINT64_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @uint32_new(%struct.ASN1_VALUE_st** nocapture noundef writeonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it) #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 4, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef 126) #6
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to i8**
  store i8* %call, i8** %0, align 8, !tbaa !4
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef 127, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.uint32_new, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #6
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @uint32_free(%struct.ASN1_VALUE_st** nocapture noundef %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it) #1 {
entry:
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef 135) #6
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @uint32_clear(%struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it) #2 {
entry:
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to i32**
  %1 = load i32*, i32** %0, align 8, !tbaa !4
  store i32 0, i32* %1, align 4, !tbaa !8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @uint32_c2i(%struct.ASN1_VALUE_st** nocapture noundef %pval, i8* noundef %cont, i32 noundef %len, i32 noundef %utype, i8* nocapture noundef readnone %free_cont, %struct.ASN1_ITEM_st* nocapture noundef readonly %it) #1 {
entry:
  %cont.addr = alloca i8*, align 8
  %utmp = alloca i64, align 8
  %utmp2 = alloca i32, align 4
  %neg = alloca i32, align 4
  store i8* %cont, i8** %cont.addr, align 8, !tbaa !4
  %0 = bitcast i64* %utmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store i64 0, i64* %utmp, align 8, !tbaa !10
  %1 = bitcast i32* %utmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  %2 = bitcast i32* %neg to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  store i32 0, i32* %neg, align 4, !tbaa !8
  %3 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  %cmp = icmp eq %struct.ASN1_VALUE_st* %3, null
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %4 = bitcast %struct.ASN1_VALUE_st* %3 to i8*
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @uint64_new(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef %it) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  %.phi.trans.insert = bitcast %struct.ASN1_VALUE_st** %pval to i8**
  %.pre = load i8*, i8** %.phi.trans.insert, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %5 = phi i8* [ %.pre, %land.lhs.true.if.end_crit_edge ], [ %4, %entry.if.end_crit_edge ]
  %cmp1 = icmp eq i32 %len, 0
  br i1 %cmp1, label %long_compat, label %if.end3

if.end3:                                          ; preds = %if.end
  %conv = sext i32 %len to i64
  %call4 = call i32 @ossl_c2i_uint64_int(i64* noundef nonnull %utmp, i32* noundef nonnull %neg, i8** noundef nonnull %cont.addr, i64 noundef %conv) #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end3
  %size = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 5
  %6 = load i64, i64* %size, align 8, !tbaa !12
  %and = and i64 %6, 2
  %cmp8 = icmp eq i64 %and, 0
  %7 = load i32, i32* %neg, align 4
  %tobool11 = icmp ne i32 %7, 0
  %or.cond = select i1 %cmp8, i1 %tobool11, i1 false
  br i1 %or.cond, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef 200, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.uint32_c2i, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 226, i8* noundef null) #6
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  br i1 %tobool11, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end13
  %8 = load i64, i64* %utmp, align 8, !tbaa !10
  %cmp16 = icmp ugt i64 %8, 2147483648
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then15
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef 205, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.uint32_c2i, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 224, i8* noundef null) #6
  br label %cleanup

if.end19:                                         ; preds = %if.then15
  %sub = sub nsw i64 0, %8
  store i64 %sub, i64* %utmp, align 8, !tbaa !10
  br label %long_compat

if.else:                                          ; preds = %if.end13
  %cmp22 = icmp ne i64 %and, 0
  %9 = load i64, i64* %utmp, align 8
  %cmp25 = icmp ugt i64 %9, 2147483647
  %or.cond42 = select i1 %cmp22, i1 %cmp25, i1 false
  br i1 %or.cond42, label %if.then34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %cmp32 = icmp ugt i64 %9, 4294967295
  %or.cond43 = select i1 %cmp8, i1 %cmp32, i1 false
  br i1 %or.cond43, label %if.then34, label %long_compat

if.then34:                                        ; preds = %lor.lhs.false, %if.else
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef 212, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.uint32_c2i, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 223, i8* noundef null) #6
  br label %cleanup

long_compat:                                      ; preds = %if.end19, %lor.lhs.false, %if.end
  %10 = phi i64 [ %sub, %if.end19 ], [ %9, %lor.lhs.false ], [ 0, %if.end ]
  %conv37 = trunc i64 %10 to i32
  store i32 %conv37, i32* %utmp2, align 4, !tbaa !8
  %call38 = call i8* @memcpy(i8* noundef %5, i8* noundef nonnull %1, i64 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %land.lhs.true, %long_compat, %if.then34, %if.then18, %if.then12
  %retval.0 = phi i32 [ 1, %long_compat ], [ 0, %if.then12 ], [ 0, %if.then18 ], [ 0, %if.then34 ], [ 0, %land.lhs.true ], [ 0, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @uint32_i2c(%struct.ASN1_VALUE_st** nocapture noundef readonly %pval, i8* noundef %cont, i32* nocapture noundef readnone %putype, %struct.ASN1_ITEM_st* nocapture noundef readonly %it) #1 {
entry:
  %utmp = alloca i32, align 4
  %0 = bitcast i32* %utmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  %1 = bitcast %struct.ASN1_VALUE_st** %pval to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !4
  %call = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %2, i64 noundef 4) #6
  %size = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 5
  %3 = load i64, i64* %size, align 8, !tbaa !12
  %and = and i64 %3, 1
  %cmp = icmp ne i64 %and, 0
  %4 = load i32, i32* %utmp, align 4
  %cmp1 = icmp eq i32 %4, 0
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and3 = and i64 %3, 2
  %cmp4 = icmp ne i64 %and3, 0
  %cmp6 = icmp slt i32 %4, 0
  %or.cond12 = select i1 %cmp4, i1 %cmp6, i1 false
  br i1 %or.cond12, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %sub = sub i32 0, %4
  store i32 %sub, i32* %utmp, align 4, !tbaa !8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %5 = phi i32 [ %sub, %if.then7 ], [ %4, %if.end ]
  %neg.0 = phi i32 [ 1, %if.then7 ], [ 0, %if.end ]
  %conv = zext i32 %5 to i64
  %call9 = call i32 @ossl_i2c_uint64_int(i8* noundef %cont, i64 noundef %conv, i32 noundef %neg.0) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @uint32_print(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readonly %it, i32 noundef %indent, %struct.asn1_pctx_st* nocapture noundef readnone %pctx) #1 {
entry:
  %size = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 5
  %0 = load i64, i64* %size, align 8, !tbaa !12
  %and = and i64 %0, 2
  %cmp.not = icmp eq i64 %and, 0
  %1 = bitcast %struct.ASN1_VALUE_st** %pval to i32**
  %2 = load i32*, i32** %1, align 8, !tbaa !4
  %3 = load i32, i32* %2, align 4, !tbaa !8
  %. = select i1 %cmp.not, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef %., i32 noundef %3) #6
  ret i32 %call1
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @uint64_new(%struct.ASN1_VALUE_st** nocapture noundef writeonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it) #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 8, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef 31) #6
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to i8**
  store i8* %call, i8** %0, align 8, !tbaa !4
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.uint64_new, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #6
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @ossl_c2i_uint64_int(i64* noundef, i32* noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @ossl_i2c_uint64_int(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @uint64_free(%struct.ASN1_VALUE_st** nocapture noundef %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it) #1 {
entry:
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef 40) #6
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @uint64_clear(%struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it) #2 {
entry:
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to i64**
  %1 = load i64*, i64** %0, align 8, !tbaa !4
  store i64 0, i64* %1, align 8, !tbaa !10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @uint64_c2i(%struct.ASN1_VALUE_st** nocapture noundef %pval, i8* noundef %cont, i32 noundef %len, i32 noundef %utype, i8* nocapture noundef readnone %free_cont, %struct.ASN1_ITEM_st* nocapture noundef readonly %it) #1 {
entry:
  %cont.addr = alloca i8*, align 8
  %utmp = alloca i64, align 8
  %neg = alloca i32, align 4
  store i8* %cont, i8** %cont.addr, align 8, !tbaa !4
  %0 = bitcast i64* %utmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store i64 0, i64* %utmp, align 8, !tbaa !10
  %1 = bitcast i32* %neg to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  store i32 0, i32* %neg, align 4, !tbaa !8
  %2 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  %cmp = icmp eq %struct.ASN1_VALUE_st* %2, null
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %3 = bitcast %struct.ASN1_VALUE_st* %2 to i8*
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @uint64_new(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef %it) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  %.phi.trans.insert = bitcast %struct.ASN1_VALUE_st** %pval to i8**
  %.pre = load i8*, i8** %.phi.trans.insert, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %4 = phi i8* [ %.pre, %land.lhs.true.if.end_crit_edge ], [ %3, %entry.if.end_crit_edge ]
  %cmp1 = icmp eq i32 %len, 0
  br i1 %cmp1, label %long_compat, label %if.end3

if.end3:                                          ; preds = %if.end
  %conv = sext i32 %len to i64
  %call4 = call i32 @ossl_c2i_uint64_int(i64* noundef nonnull %utmp, i32* noundef nonnull %neg, i8** noundef nonnull %cont.addr, i64 noundef %conv) #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end3
  %size = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 5
  %5 = load i64, i64* %size, align 8, !tbaa !12
  %and = and i64 %5, 2
  %cmp8 = icmp eq i64 %and, 0
  %6 = load i32, i32* %neg, align 4
  %tobool11 = icmp ne i32 %6, 0
  %or.cond = select i1 %cmp8, i1 %tobool11, i1 false
  br i1 %or.cond, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.uint64_c2i, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 226, i8* noundef null) #6
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %or.cond31 = select i1 %cmp8, i1 true, i1 %tobool11
  %or.cond31.not = xor i1 %or.cond31, true
  %7 = load i64, i64* %utmp, align 8
  %cmp21 = icmp slt i64 %7, 0
  %or.cond32 = select i1 %or.cond31.not, i1 %cmp21, i1 false
  br i1 %or.cond32, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end13
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.uint64_c2i, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 223, i8* noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %if.end13
  br i1 %tobool11, label %if.then26, label %long_compat

if.then26:                                        ; preds = %if.end24
  %sub = sub i64 0, %7
  store i64 %sub, i64* %utmp, align 8, !tbaa !10
  br label %long_compat

long_compat:                                      ; preds = %if.end24, %if.then26, %if.end
  %call28 = call i8* @memcpy(i8* noundef %4, i8* noundef nonnull %0, i64 noundef 8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %land.lhs.true, %long_compat, %if.then23, %if.then12
  %retval.0 = phi i32 [ 1, %long_compat ], [ 0, %if.then12 ], [ 0, %if.then23 ], [ 0, %land.lhs.true ], [ 0, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @uint64_i2c(%struct.ASN1_VALUE_st** nocapture noundef readonly %pval, i8* noundef %cont, i32* nocapture noundef readnone %putype, %struct.ASN1_ITEM_st* nocapture noundef readonly %it) #1 {
entry:
  %utmp = alloca i64, align 8
  %0 = bitcast i64* %utmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast %struct.ASN1_VALUE_st** %pval to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !4
  %call = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %2, i64 noundef 8) #6
  %size = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 5
  %3 = load i64, i64* %size, align 8, !tbaa !12
  %and = and i64 %3, 1
  %cmp = icmp ne i64 %and, 0
  %4 = load i64, i64* %utmp, align 8
  %cmp1 = icmp eq i64 %4, 0
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and3 = and i64 %3, 2
  %cmp4 = icmp ne i64 %and3, 0
  %cmp6 = icmp slt i64 %4, 0
  %or.cond12 = select i1 %cmp4, i1 %cmp6, i1 false
  br i1 %or.cond12, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %sub = sub i64 0, %4
  store i64 %sub, i64* %utmp, align 8, !tbaa !10
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %5 = phi i64 [ %sub, %if.then7 ], [ %4, %if.end ]
  %neg.0 = phi i32 [ 1, %if.then7 ], [ 0, %if.end ]
  %call9 = call i32 @ossl_i2c_uint64_int(i8* noundef %cont, i64 noundef %5, i32 noundef %neg.0) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @uint64_print(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readonly %it, i32 noundef %indent, %struct.asn1_pctx_st* nocapture noundef readnone %pctx) #1 {
entry:
  %size = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 5
  %0 = load i64, i64* %size, align 8, !tbaa !12
  %and = and i64 %0, 2
  %cmp.not = icmp eq i64 %and, 0
  %1 = bitcast %struct.ASN1_VALUE_st** %pval to i64**
  %2 = load i64*, i64** %1, align 8, !tbaa !4
  %3 = load i64, i64* %2, align 8, !tbaa !10
  %. = select i1 %cmp.not, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef %., i64 noundef %3) #6
  ret i32 %call1
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!13, !11, i64 40}
!13 = !{!"ASN1_ITEM_st", !6, i64 0, !11, i64 8, !5, i64 16, !11, i64 24, !5, i64 32, !11, i64 40, !5, i64 48}
