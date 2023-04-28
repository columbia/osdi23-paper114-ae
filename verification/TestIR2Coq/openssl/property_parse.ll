; ModuleID = 'crypto/property/property_parse.c'
source_filename = "crypto/property/property_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_property_list_st = type { i32, i8, [1 x %struct.ossl_property_definition_st] }
%struct.ossl_property_definition_st = type { i32, i32, i32, i8, %union.anon }
%union.anon = type { i64 }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_OSSL_PROPERTY_DEFINITION = type opaque
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [33 x i8] c"crypto/property/property_parse.c\00", align 1
@__func__.ossl_parse_property = private unnamed_addr constant [20 x i8] c"ossl_parse_property\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Unknown name HERE-->%s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"HERE-->%s\00", align 1
@ossl_property_true = local_unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@__func__.ossl_parse_query = private unnamed_addr constant [17 x i8] c"ossl_parse_query\00", align 1
@ossl_property_false = local_unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"fips\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"structure\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@__func__.parse_name = private unnamed_addr constant [11 x i8] c"parse_name\00", align 1
@__func__.parse_string = private unnamed_addr constant [13 x i8] c"parse_string\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"HERE-->%c%s\00", align 1
@__func__.parse_number = private unnamed_addr constant [13 x i8] c"parse_number\00", align 1
@__func__.parse_hex = private unnamed_addr constant [10 x i8] c"parse_hex\00", align 1
@__func__.parse_oct = private unnamed_addr constant [10 x i8] c"parse_oct\00", align 1
@__func__.parse_unquoted = private unnamed_addr constant [15 x i8] c"parse_unquoted\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_property_list_st* @ossl_parse_property(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %defn) local_unnamed_addr #0 {
entry:
  %s = alloca i8*, align 8
  %0 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %cmp = icmp eq i8* %defn, null
  br i1 %cmp, label %cleanup42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call fastcc %struct.stack_st_OSSL_PROPERTY_DEFINITION* @sk_OSSL_PROPERTY_DEFINITION_new() #10
  %cmp1 = icmp eq %struct.stack_st_OSSL_PROPERTY_DEFINITION* %call, null
  br i1 %cmp1, label %cleanup42, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call fastcc i8* @skip_space(i8* noundef nonnull %defn) #10
  store i8* %call2, i8** %s, align 8, !tbaa !4
  %1 = load i8, i8* %call2, align 1, !tbaa !8
  %cmp3 = icmp eq i8 %1, 0
  br i1 %cmp3, label %if.end40, label %while.body

while.body:                                       ; preds = %if.end, %cleanup
  %2 = phi i8* [ %.pre80, %cleanup ], [ %call2, %if.end ]
  %call5 = tail call i8* @CRYPTO_malloc(i64 noundef 24, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 319) #11
  %3 = bitcast i8* %call5 to %struct.ossl_property_definition_st*
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %err, label %if.end9

if.end9:                                          ; preds = %while.body
  %v = getelementptr inbounds i8, i8* %call5, i64 16
  %call10 = tail call i8* @memset(i8* noundef nonnull %v, i32 noundef 0, i64 noundef 8) #11
  %4 = getelementptr inbounds i8, i8* %call5, i64 12
  %bf.load = load i8, i8* %4, align 4
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %4, align 4
  %name_idx = bitcast i8* %call5 to i32*
  %call11 = call fastcc i32 @parse_name(%struct.ossl_lib_ctx_st* noundef %ctx, i8** noundef nonnull %s, i32* noundef nonnull %name_idx) #10
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end14

if.end14:                                         ; preds = %if.end9
  %oper = getelementptr inbounds i8, i8* %call5, i64 8
  %5 = bitcast i8* %oper to i32*
  store i32 0, i32* %5, align 8, !tbaa !9
  %6 = load i32, i32* %name_idx, align 8, !tbaa !12
  %cmp16 = icmp eq i32 %6, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 328, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_parse_property, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 55, i32 noundef 108, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* noundef %2) #11
  br label %err

if.end19:                                         ; preds = %if.end14
  %call20 = call fastcc i32 @match_ch(i8** noundef nonnull %s, i8 noundef signext 61) #10
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end19
  %call23 = call fastcc i32 @parse_value(%struct.ossl_lib_ctx_st* noundef %ctx, i8** noundef nonnull %s, %struct.ossl_property_definition_st* noundef nonnull %3, i32 noundef 1) #10
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.then22
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 334, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_parse_property, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 55, i32 noundef 107, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef %2) #11
  br label %err

if.else:                                          ; preds = %if.end19
  %type = getelementptr inbounds i8, i8* %call5, i64 4
  %7 = bitcast i8* %type to i32*
  store i32 0, i32* %7, align 4, !tbaa !13
  %8 = load i32, i32* @ossl_property_true, align 4, !tbaa !14
  %str_val = bitcast i8* %v to i32*
  store i32 %8, i32* %str_val, align 8, !tbaa !8
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %if.else
  %call29 = tail call fastcc i32 @sk_OSSL_PROPERTY_DEFINITION_push(%struct.stack_st_OSSL_PROPERTY_DEFINITION* noundef nonnull %call, %struct.ossl_property_definition_st* noundef nonnull %3) #10
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %cleanup

cleanup:                                          ; preds = %if.end28
  %call33 = call fastcc i32 @match_ch(i8** noundef nonnull %s, i8 noundef signext 44) #10
  %tobool34.not = icmp eq i32 %call33, 0
  %.pre80 = load i8*, i8** %s, align 8, !tbaa !4
  br i1 %tobool34.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup
  %.pre81 = load i8, i8* %.pre80, align 1, !tbaa !8
  %phi.cmp = icmp eq i8 %.pre81, 0
  br i1 %phi.cmp, label %if.end40, label %if.then39

if.then39:                                        ; preds = %while.end
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 350, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_parse_property, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 55, i32 noundef 110, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %.pre80) #11
  br label %err

if.end40:                                         ; preds = %if.end, %while.end
  %call41 = tail call fastcc %struct.ossl_property_list_st* @stack_to_property_list(%struct.stack_st_OSSL_PROPERTY_DEFINITION* noundef nonnull %call) #10
  br label %err

err:                                              ; preds = %if.end28, %if.end9, %while.body, %if.then25, %if.then18, %if.end40, %if.then39
  %res.0 = phi %struct.ossl_property_list_st* [ null, %if.then39 ], [ %call41, %if.end40 ], [ null, %if.then18 ], [ null, %if.then25 ], [ null, %while.body ], [ null, %if.end9 ], [ null, %if.end28 ]
  %9 = phi i8* [ null, %if.then39 ], [ null, %if.end40 ], [ %call5, %if.then18 ], [ %call5, %if.then25 ], [ %call5, %if.end28 ], [ %call5, %if.end9 ], [ null, %while.body ]
  tail call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 357) #11
  tail call fastcc void @sk_OSSL_PROPERTY_DEFINITION_pop_free(%struct.stack_st_OSSL_PROPERTY_DEFINITION* noundef nonnull %call) #10
  br label %cleanup42

cleanup42:                                        ; preds = %entry, %lor.lhs.false, %err
  %retval.0 = phi %struct.ossl_property_list_st* [ %res.0, %err ], [ null, %lor.lhs.false ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret %struct.ossl_property_list_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_OSSL_PROPERTY_DEFINITION* @sk_OSSL_PROPERTY_DEFINITION_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.ossl_property_definition_st**, %struct.ossl_property_definition_st**)* @pd_compare to i32 (i8*, i8*)*)) #11
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_OSSL_PROPERTY_DEFINITION*
  ret %struct.stack_st_OSSL_PROPERTY_DEFINITION* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @pd_compare(%struct.ossl_property_definition_st** nocapture noundef readonly %p1, %struct.ossl_property_definition_st** nocapture noundef readonly %p2) #2 {
entry:
  %0 = load %struct.ossl_property_definition_st*, %struct.ossl_property_definition_st** %p1, align 8, !tbaa !4
  %1 = load %struct.ossl_property_definition_st*, %struct.ossl_property_definition_st** %p2, align 8, !tbaa !4
  %name_idx = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %0, i64 0, i32 0
  %2 = load i32, i32* %name_idx, align 8, !tbaa !12
  %name_idx1 = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %1, i64 0, i32 0
  %3 = load i32, i32* %name_idx1, align 8, !tbaa !12
  %cmp = icmp slt i32 %2, %3
  %cmp4 = icmp sgt i32 %2, %3
  %. = zext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @skip_space(i8* noundef readonly %s) unnamed_addr #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %s.addr.0 = phi i8* [ %s, %entry ], [ %incdec.ptr, %while.cond ]
  %0 = load i8, i8* %s.addr.0, align 1, !tbaa !8
  %conv = sext i8 %0 to i32
  %call = tail call i32 @ossl_ctype_check(i32 noundef %conv, i32 noundef 8) #11
  %tobool.not = icmp eq i32 %call, 0
  %incdec.ptr = getelementptr inbounds i8, i8* %s.addr.0, i64 1
  br i1 %tobool.not, label %while.end, label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  ret i8* %s.addr.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse_name(%struct.ossl_lib_ctx_st* noundef %ctx, i8** nocapture noundef %t, i32* nocapture noundef writeonly %idx) unnamed_addr #0 {
entry:
  %name = alloca [100 x i8], align 16
  %0 = getelementptr inbounds [100 x i8], [100 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %0) #9
  %1 = load i8*, i8** %t, align 8, !tbaa !4
  %2 = load i8, i8* %1, align 1, !tbaa !8
  %conv2 = sext i8 %2 to i32
  %call3 = tail call i32 @ossl_ctype_check(i32 noundef %conv2, i32 noundef 3) #11
  %tobool.not4 = icmp eq i32 %call3, 0
  br i1 %tobool.not4, label %if.then, label %do.body.preheader

do.body.preheader:                                ; preds = %entry, %if.end24
  %tobool318 = phi i32 [ 1, %if.end24 ], [ 0, %entry ]
  %s.07 = phi i8* [ %incdec.ptr25, %if.end24 ], [ %1, %entry ]
  %i.06 = phi i64 [ %i.3, %if.end24 ], [ 0, %entry ]
  %err.05 = phi i32 [ %err.3, %if.end24 ], [ 0, %entry ]
  br label %do.body

if.then:                                          ; preds = %if.end24, %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.parse_name, i64 0, i64 0)) #11
  %3 = load i8*, i8** %t, align 8, !tbaa !4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 55, i32 noundef 103, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef %3) #11
  br label %cleanup

do.body:                                          ; preds = %do.body.backedge, %do.body.preheader
  %err.1 = phi i32 [ %err.05, %do.body.preheader ], [ %err.2, %do.body.backedge ]
  %i.1 = phi i64 [ %i.06, %do.body.preheader ], [ %i.2, %do.body.backedge ]
  %s.1 = phi i8* [ %s.07, %do.body.preheader ], [ %incdec.ptr, %do.body.backedge ]
  %cmp = icmp ult i64 %i.1, 99
  br i1 %cmp, label %if.then2, label %do.cond

if.then2:                                         ; preds = %do.body
  %4 = load i8, i8* %s.1, align 1, !tbaa !8
  %conv3 = sext i8 %4 to i32
  %call4 = tail call i32 @ossl_tolower(i32 noundef %conv3) #11
  %conv5 = trunc i32 %call4 to i8
  %inc = add nuw nsw i64 %i.1, 1
  %arrayidx = getelementptr inbounds [100 x i8], [100 x i8]* %name, i64 0, i64 %i.1
  store i8 %conv5, i8* %arrayidx, align 1, !tbaa !8
  br label %do.cond

do.cond:                                          ; preds = %do.body, %if.then2
  %err.2 = phi i32 [ %err.1, %if.then2 ], [ 1, %do.body ]
  %i.2 = phi i64 [ %inc, %if.then2 ], [ %i.1, %do.body ]
  %incdec.ptr = getelementptr inbounds i8, i8* %s.1, i64 1
  %5 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %cmp8 = icmp eq i8 %5, 95
  br i1 %cmp8, label %do.body.backedge, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %conv7 = sext i8 %5 to i32
  %call11 = tail call i32 @ossl_ctype_check(i32 noundef %conv7, i32 noundef 7) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end, label %do.body.backedge

do.body.backedge:                                 ; preds = %lor.rhs, %do.cond
  br label %do.body, !llvm.loop !17

do.end:                                           ; preds = %lor.rhs
  %6 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %cmp14.not = icmp eq i8 %6, 46
  br i1 %cmp14.not, label %if.end17, label %for.end

if.end17:                                         ; preds = %do.end
  %cmp18 = icmp ult i64 %i.2, 99
  br i1 %cmp18, label %if.then20, label %if.end24

if.then20:                                        ; preds = %if.end17
  %inc21 = add nuw nsw i64 %i.2, 1
  %arrayidx22 = getelementptr inbounds [100 x i8], [100 x i8]* %name, i64 0, i64 %i.2
  store i8 46, i8* %arrayidx22, align 1, !tbaa !8
  br label %if.end24

if.end24:                                         ; preds = %if.end17, %if.then20
  %err.3 = phi i32 [ %err.2, %if.then20 ], [ 1, %if.end17 ]
  %i.3 = phi i64 [ %inc21, %if.then20 ], [ %i.2, %if.end17 ]
  %incdec.ptr25 = getelementptr inbounds i8, i8* %s.1, i64 2
  %7 = load i8, i8* %incdec.ptr25, align 1, !tbaa !8
  %conv = sext i8 %7 to i32
  %call = tail call i32 @ossl_ctype_check(i32 noundef %conv, i32 noundef 3) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %do.body.preheader

for.end:                                          ; preds = %do.end
  %arrayidx26 = getelementptr inbounds [100 x i8], [100 x i8]* %name, i64 0, i64 %i.2
  store i8 0, i8* %arrayidx26, align 1, !tbaa !8
  %tobool27.not = icmp eq i32 %err.2, 0
  br i1 %tobool27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %for.end
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.parse_name, i64 0, i64 0)) #11
  %8 = load i8*, i8** %t, align 8, !tbaa !4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 55, i32 noundef 100, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef %8) #11
  br label %cleanup

if.end29:                                         ; preds = %for.end
  %call30 = tail call fastcc i8* @skip_space(i8* noundef nonnull %incdec.ptr) #10
  store i8* %call30, i8** %t, align 8, !tbaa !4
  %call33 = call i32 @ossl_property_name(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef nonnull %0, i32 noundef %tobool318) #11
  store i32 %call33, i32* %idx, align 4, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then28, %if.then
  %retval.0 = phi i32 [ 0, %if.then28 ], [ 1, %if.end29 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @match_ch(i8** nocapture noundef %t, i8 noundef signext %m) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %t, align 8, !tbaa !4
  %1 = load i8, i8* %0, align 1, !tbaa !8
  %conv = sext i8 %1 to i32
  %2 = zext i8 %m to i32
  %cmp = icmp eq i32 %conv, %2
  br i1 %cmp, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %call = tail call fastcc i8* @skip_space(i8* noundef nonnull %add.ptr) #10
  store i8* %call, i8** %t, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse_value(%struct.ossl_lib_ctx_st* noundef %ctx, i8** nocapture noundef %t, %struct.ossl_property_definition_st* nocapture noundef %res, i32 noundef %create) unnamed_addr #0 {
entry:
  %s = alloca i8*, align 8
  %0 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = load i8*, i8** %t, align 8, !tbaa !4
  %2 = load i8, i8* %1, align 1, !tbaa !8
  switch i8 %2, label %if.else41 [
    i8 34, label %if.then
    i8 39, label %if.then
    i8 43, label %if.then8
    i8 45, label %if.then15
    i8 48, label %land.lhs.true
  ]

if.then:                                          ; preds = %entry, %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1
  store i8* %incdec.ptr, i8** %s, align 8, !tbaa !4
  %call = call fastcc i32 @parse_string(%struct.ossl_lib_ctx_st* noundef %ctx, i8** noundef nonnull %s, i8 noundef signext %2, %struct.ossl_property_definition_st* noundef %res, i32 noundef %create) #10
  br label %if.end58

if.then8:                                         ; preds = %entry
  %incdec.ptr9 = getelementptr inbounds i8, i8* %1, i64 1
  store i8* %incdec.ptr9, i8** %s, align 8, !tbaa !4
  %call10 = call fastcc i32 @parse_number(i8** noundef nonnull %s, %struct.ossl_property_definition_st* noundef %res) #10
  br label %if.end58

if.then15:                                        ; preds = %entry
  %incdec.ptr16 = getelementptr inbounds i8, i8* %1, i64 1
  store i8* %incdec.ptr16, i8** %s, align 8, !tbaa !4
  %call17 = call fastcc i32 @parse_number(i8** noundef nonnull %s, %struct.ossl_property_definition_st* noundef %res) #10
  %int_val = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %res, i64 0, i32 4, i32 0
  %3 = load i64, i64* %int_val, align 8, !tbaa !8
  %sub = sub nsw i64 0, %3
  store i64 %sub, i64* %int_val, align 8, !tbaa !8
  br label %if.end58

land.lhs.true:                                    ; preds = %entry
  %arrayidx24 = getelementptr inbounds i8, i8* %1, i64 1
  %4 = load i8, i8* %arrayidx24, align 1, !tbaa !8
  %cmp26 = icmp eq i8 %4, 120
  br i1 %cmp26, label %if.then28, label %land.lhs.true34

if.then28:                                        ; preds = %land.lhs.true
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 2
  store i8* %add.ptr, i8** %s, align 8, !tbaa !4
  %call29 = call fastcc i32 @parse_hex(i8** noundef nonnull %s, %struct.ossl_property_definition_st* noundef %res) #10
  br label %if.end58

land.lhs.true34:                                  ; preds = %land.lhs.true
  %conv36 = sext i8 %4 to i32
  %call37 = tail call i32 @ossl_ctype_check(i32 noundef %conv36, i32 noundef 4) #11
  %tobool.not = icmp eq i32 %call37, 0
  br i1 %tobool.not, label %land.lhs.true34.if.else41_crit_edge, label %if.then38

land.lhs.true34.if.else41_crit_edge:              ; preds = %land.lhs.true34
  %.pre = load i8, i8* %1, align 1, !tbaa !8
  br label %if.else41

if.then38:                                        ; preds = %land.lhs.true34
  store i8* %arrayidx24, i8** %s, align 8, !tbaa !4
  %call40 = call fastcc i32 @parse_oct(i8** noundef nonnull %s, %struct.ossl_property_definition_st* noundef %res) #10
  br label %if.end58

if.else41:                                        ; preds = %land.lhs.true34.if.else41_crit_edge, %entry
  %5 = phi i8 [ %.pre, %land.lhs.true34.if.else41_crit_edge ], [ %2, %entry ]
  %conv42 = sext i8 %5 to i32
  %call43 = tail call i32 @ossl_ctype_check(i32 noundef %conv42, i32 noundef 4) #11
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.else47, label %if.then45

if.then45:                                        ; preds = %if.else41
  %call46 = tail call fastcc i32 @parse_number(i8** noundef nonnull %t, %struct.ossl_property_definition_st* noundef %res) #10
  br label %cleanup

if.else47:                                        ; preds = %if.else41
  %6 = load i8, i8* %1, align 1, !tbaa !8
  %conv48 = sext i8 %6 to i32
  %call49 = tail call i32 @ossl_ctype_check(i32 noundef %conv48, i32 noundef 3) #11
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %cleanup, label %if.then51

if.then51:                                        ; preds = %if.else47
  %call52 = tail call fastcc i32 @parse_unquoted(%struct.ossl_lib_ctx_st* noundef %ctx, i8** noundef nonnull %t, %struct.ossl_property_definition_st* noundef %res, i32 noundef %create) #10
  br label %cleanup

if.end58:                                         ; preds = %if.then8, %if.then28, %if.then38, %if.then15, %if.then
  %r.0 = phi i32 [ %call, %if.then ], [ %call10, %if.then8 ], [ %call17, %if.then15 ], [ %call29, %if.then28 ], [ %call40, %if.then38 ]
  %tobool59.not = icmp eq i32 %r.0, 0
  br i1 %tobool59.not, label %cleanup, label %if.then60

if.then60:                                        ; preds = %if.end58
  %7 = load i8*, i8** %s, align 8, !tbaa !4
  store i8* %7, i8** %t, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.else47, %if.end58, %if.then60, %if.then51, %if.then45
  %retval.0 = phi i32 [ %call46, %if.then45 ], [ %call52, %if.then51 ], [ %r.0, %if.then60 ], [ 0, %if.end58 ], [ 0, %if.else47 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_PROPERTY_DEFINITION_push(%struct.stack_st_OSSL_PROPERTY_DEFINITION* noundef %sk, %struct.ossl_property_definition_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROPERTY_DEFINITION* %sk to %struct.stack_st*
  %1 = bitcast %struct.ossl_property_definition_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #11
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_property_list_st* @stack_to_property_list(%struct.stack_st_OSSL_PROPERTY_DEFINITION* noundef %sk) unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @sk_OSSL_PROPERTY_DEFINITION_num(%struct.stack_st_OSSL_PROPERTY_DEFINITION* noundef %sk) #10
  %sub = add nsw i32 %call, -1
  %cmp.inv = icmp sgt i32 %call, 0
  %cond = select i1 %cmp.inv, i32 %sub, i32 0
  %conv39 = zext i32 %cond to i64
  %mul = mul nuw nsw i64 %conv39, 24
  %add = add nuw nsw i64 %mul, 32
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 289) #11
  %cmp2.not = icmp eq i8* %call1, null
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @sk_OSSL_PROPERTY_DEFINITION_sort(%struct.stack_st_OSSL_PROPERTY_DEFINITION* noundef %sk) #10
  %0 = getelementptr inbounds i8, i8* %call1, i64 4
  %bf.load = load i8, i8* %0, align 4
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %0, align 4
  br i1 %cmp.inv, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %properties = getelementptr inbounds i8, i8* %call1, i64 8
  %1 = bitcast i8* %properties to [1 x %struct.ossl_property_definition_st]*
  %wide.trip.count = zext i32 %call to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds [1 x %struct.ossl_property_definition_st], [1 x %struct.ossl_property_definition_st]* %1, i64 0, i64 %indvars.iv
  %2 = trunc i64 %indvars.iv to i32
  %call6 = tail call fastcc %struct.ossl_property_definition_st* @sk_OSSL_PROPERTY_DEFINITION_value(%struct.stack_st_OSSL_PROPERTY_DEFINITION* noundef %sk, i32 noundef %2) #10
  %3 = bitcast %struct.ossl_property_definition_st* %arrayidx to i8*
  %4 = bitcast %struct.ossl_property_definition_st* %call6 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %3, i8* noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !18
  %optional = getelementptr inbounds [1 x %struct.ossl_property_definition_st], [1 x %struct.ossl_property_definition_st]* %1, i64 0, i64 %indvars.iv, i32 3
  %bf.load10 = load i8, i8* %optional, align 4
  %bf.load13 = load i8, i8* %0, align 4
  %5 = and i8 %bf.load10, 1
  %bf.set18 = or i8 %5, %bf.load13
  store i8 %bf.set18, i8* %0, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !21

for.end:                                          ; preds = %for.body, %if.then
  %num_properties = bitcast i8* %call1 to i32*
  store i32 %call, i32* %num_properties, align 8, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %6 = bitcast i8* %call1 to %struct.ossl_property_list_st*
  ret %struct.ossl_property_list_st* %6
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_PROPERTY_DEFINITION_pop_free(%struct.stack_st_OSSL_PROPERTY_DEFINITION* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROPERTY_DEFINITION* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.ossl_property_definition_st*)* @pd_free to void (i8*)*)) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @pd_free(%struct.ossl_property_definition_st* noundef %pd) #0 {
entry:
  %0 = bitcast %struct.ossl_property_definition_st* %pd to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 274) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_property_list_st* @ossl_parse_query(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %s, i32 noundef %create_values) local_unnamed_addr #0 {
entry:
  %s.addr = alloca i8*, align 8
  %cmp = icmp eq i8* %s, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call fastcc %struct.stack_st_OSSL_PROPERTY_DEFINITION* @sk_OSSL_PROPERTY_DEFINITION_new() #10
  %cmp1 = icmp eq %struct.stack_st_OSSL_PROPERTY_DEFINITION* %call, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call fastcc i8* @skip_space(i8* noundef nonnull %s) #10
  store i8* %call2, i8** %s.addr, align 8, !tbaa !4
  %0 = load i8, i8* %call2, align 1, !tbaa !8
  %cmp3 = icmp eq i8 %0, 0
  br i1 %cmp3, label %if.end58, label %while.body

while.body:                                       ; preds = %if.end, %if.end50
  %call5 = tail call i8* @CRYPTO_malloc(i64 noundef 24, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 376) #11
  %1 = bitcast i8* %call5 to %struct.ossl_property_definition_st*
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %err, label %if.end9

if.end9:                                          ; preds = %while.body
  %v = getelementptr inbounds i8, i8* %call5, i64 16
  %call10 = tail call i8* @memset(i8* noundef nonnull %v, i32 noundef 0, i64 noundef 8) #11
  %call11 = call fastcc i32 @match_ch(i8** noundef nonnull %s.addr, i8 noundef signext 45) #10
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end18, label %if.then13

if.then13:                                        ; preds = %if.end9
  %oper = getelementptr inbounds i8, i8* %call5, i64 8
  %2 = bitcast i8* %oper to i32*
  store i32 2, i32* %2, align 8, !tbaa !9
  %3 = getelementptr inbounds i8, i8* %call5, i64 12
  %bf.load = load i8, i8* %3, align 4
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %3, align 4
  %name_idx = bitcast i8* %call5 to i32*
  %call14 = call fastcc i32 @parse_name(%struct.ossl_lib_ctx_st* noundef %ctx, i8** noundef nonnull %s.addr, i32* noundef nonnull %name_idx) #10
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %skip_value

if.end18:                                         ; preds = %if.end9
  %call19 = call fastcc i32 @match_ch(i8** noundef nonnull %s.addr, i8 noundef signext 63) #10
  %4 = getelementptr inbounds i8, i8* %call5, i64 12
  %5 = trunc i32 %call19 to i8
  %bf.load21 = load i8, i8* %4, align 4
  %bf.value = and i8 %5, 1
  %bf.clear22 = and i8 %bf.load21, -2
  %bf.set23 = or i8 %bf.clear22, %bf.value
  store i8 %bf.set23, i8* %4, align 4
  %name_idx24 = bitcast i8* %call5 to i32*
  %call25 = call fastcc i32 @parse_name(%struct.ossl_lib_ctx_st* noundef %ctx, i8** noundef nonnull %s.addr, i32* noundef nonnull %name_idx24) #10
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err, label %if.end28

if.end28:                                         ; preds = %if.end18
  %call29 = call fastcc i32 @match_ch(i8** noundef nonnull %s.addr, i8 noundef signext 61) #10
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end28
  %oper32 = getelementptr inbounds i8, i8* %call5, i64 8
  %6 = bitcast i8* %oper32 to i32*
  store i32 0, i32* %6, align 8, !tbaa !9
  br label %if.end41

if.else:                                          ; preds = %if.end28
  %call33 = call fastcc i32 @match(i8** noundef nonnull %s.addr) #10
  %tobool34.not = icmp eq i32 %call33, 0
  %oper38 = getelementptr inbounds i8, i8* %call5, i64 8
  %7 = bitcast i8* %oper38 to i32*
  br i1 %tobool34.not, label %if.else37, label %if.then35

if.then35:                                        ; preds = %if.else
  store i32 1, i32* %7, align 8, !tbaa !9
  br label %if.end41

if.else37:                                        ; preds = %if.else
  store i32 0, i32* %7, align 8, !tbaa !9
  %type = getelementptr inbounds i8, i8* %call5, i64 4
  %8 = bitcast i8* %type to i32*
  store i32 0, i32* %8, align 4, !tbaa !13
  %9 = load i32, i32* @ossl_property_true, align 4, !tbaa !14
  %str_val = bitcast i8* %v to i32*
  store i32 %9, i32* %str_val, align 8, !tbaa !8
  br label %skip_value

if.end41:                                         ; preds = %if.then35, %if.then31
  %call42 = call fastcc i32 @parse_value(%struct.ossl_lib_ctx_st* noundef %ctx, i8** noundef nonnull %s.addr, %struct.ossl_property_definition_st* noundef nonnull %1, i32 noundef %create_values) #10
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then44, label %skip_value

if.then44:                                        ; preds = %if.end41
  %type45 = getelementptr inbounds i8, i8* %call5, i64 4
  %10 = bitcast i8* %type45 to i32*
  store i32 2, i32* %10, align 4, !tbaa !13
  br label %skip_value

skip_value:                                       ; preds = %if.end41, %if.then44, %if.then13, %if.else37
  %call47 = tail call fastcc i32 @sk_OSSL_PROPERTY_DEFINITION_push(%struct.stack_st_OSSL_PROPERTY_DEFINITION* noundef nonnull %call, %struct.ossl_property_definition_st* noundef nonnull %1) #10
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %if.end50

if.end50:                                         ; preds = %skip_value
  %call51 = call fastcc i32 @match_ch(i8** noundef nonnull %s.addr, i8 noundef signext 44) #10
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %while.end, label %while.body, !llvm.loop !24

while.end:                                        ; preds = %if.end50
  %.pre = load i8*, i8** %s.addr, align 8, !tbaa !4
  %.pre86 = load i8, i8* %.pre, align 1, !tbaa !8
  %phi.cmp = icmp eq i8 %.pre86, 0
  br i1 %phi.cmp, label %if.end58, label %if.then57

if.then57:                                        ; preds = %while.end
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 413, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_parse_query, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 55, i32 noundef 110, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %.pre) #11
  br label %err

if.end58:                                         ; preds = %if.end, %while.end
  %call59 = tail call fastcc %struct.ossl_property_list_st* @stack_to_property_list(%struct.stack_st_OSSL_PROPERTY_DEFINITION* noundef nonnull %call) #10
  br label %err

err:                                              ; preds = %skip_value, %if.end18, %if.then13, %while.body, %if.end58, %if.then57
  %res.0 = phi %struct.ossl_property_list_st* [ null, %if.then57 ], [ %call59, %if.end58 ], [ null, %while.body ], [ null, %if.then13 ], [ null, %if.end18 ], [ null, %skip_value ]
  %11 = phi i8* [ null, %if.then57 ], [ null, %if.end58 ], [ %call5, %skip_value ], [ %call5, %if.end18 ], [ %call5, %if.then13 ], [ null, %while.body ]
  tail call void @CRYPTO_free(i8* noundef %11, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 420) #11
  tail call fastcc void @sk_OSSL_PROPERTY_DEFINITION_pop_free(%struct.stack_st_OSSL_PROPERTY_DEFINITION* noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %err
  %retval.0 = phi %struct.ossl_property_list_st* [ %res.0, %err ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.ossl_property_list_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @match(i8** nocapture noundef %t) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %t, align 8, !tbaa !4
  %call = tail call i32 @strncasecmp(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i64 noundef 2) #12
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 2
  %call1 = tail call fastcc i8* @skip_space(i8* noundef nonnull %add.ptr) #10
  store i8* %call1, i8** %t, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define i32 @ossl_property_match_count(%struct.ossl_property_list_st* noundef readonly %query, %struct.ossl_property_list_st* noundef readonly %defn) local_unnamed_addr #5 {
entry:
  %num_properties = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %query, i64 0, i32 0
  %0 = load i32, i32* %num_properties, align 8, !tbaa !22
  %cmp192195202 = icmp sgt i32 %0, 0
  br i1 %cmp192195202, label %while.body.lr.ph.lr.ph.lr.ph, label %cleanup107

while.body.lr.ph.lr.ph.lr.ph:                     ; preds = %entry
  %num_properties5 = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %defn, i64 0, i32 0
  %1 = load i32, i32* @ossl_property_false, align 4
  %2 = zext i32 %0 to i64
  br label %while.body.lr.ph.lr.ph

while.body.lr.ph.lr.ph:                           ; preds = %while.body.lr.ph.lr.ph.lr.ph, %while.cond.outer.backedge
  %indvars.iv228 = phi i64 [ 0, %while.body.lr.ph.lr.ph.lr.ph ], [ %indvars.iv.next229, %while.cond.outer.backedge ]
  %i.0.ph205 = phi i32 [ 0, %while.body.lr.ph.lr.ph.lr.ph ], [ %i.0.ph.be, %while.cond.outer.backedge ]
  %matches.0.ph204 = phi i32 [ 0, %while.body.lr.ph.lr.ph.lr.ph ], [ %matches.0.ph.be, %while.cond.outer.backedge ]
  %name_idx12 = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %defn, i64 0, i32 2, i64 %indvars.iv228, i32 0
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %if.end105
  %i.0.ph177199 = phi i32 [ %i.0.ph205, %while.body.lr.ph.lr.ph ], [ %inc106, %if.end105 ]
  %matches.0.ph176196 = phi i32 [ %matches.0.ph204, %while.body.lr.ph.lr.ph ], [ %matches.3, %if.end105 ]
  %3 = sext i32 %i.0.ph177199 to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.then
  %indvars.iv = phi i64 [ %3, %while.body.lr.ph ], [ %indvars.iv.next, %if.then ]
  %oper3 = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %query, i64 0, i32 2, i64 %indvars.iv, i32 2
  %4 = load i32, i32* %oper3, align 8, !tbaa !9
  %cmp4 = icmp eq i32 %4, 2
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp, label %while.body, label %cleanup107, !llvm.loop !25

if.end:                                           ; preds = %while.body
  %5 = trunc i64 %indvars.iv to i32
  %6 = load i32, i32* %num_properties5, align 8, !tbaa !22
  %7 = sext i32 %6 to i64
  %cmp6 = icmp slt i64 %indvars.iv228, %7
  br i1 %cmp6, label %if.then7, label %if.end52

if.then7:                                         ; preds = %if.end
  %name_idx = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %query, i64 0, i32 2, i64 %indvars.iv, i32 0
  %8 = load i32, i32* %name_idx, align 8, !tbaa !12
  %9 = load i32, i32* %name_idx12, align 8, !tbaa !12
  %cmp13 = icmp sgt i32 %8, %9
  br i1 %cmp13, label %while.cond.outer.backedge.loopexit, label %if.end16

while.cond.outer.backedge.loopexit:               ; preds = %if.then7
  %10 = trunc i64 %indvars.iv to i32
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %while.cond.outer.backedge.loopexit, %cleanup
  %matches.0.ph.be = phi i32 [ %matches.1, %cleanup ], [ %matches.0.ph176196, %while.cond.outer.backedge.loopexit ]
  %i.0.ph.be = phi i32 [ %inc49, %cleanup ], [ %10, %while.cond.outer.backedge.loopexit ]
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1
  %cmp192195 = icmp slt i32 %i.0.ph.be, %0
  br i1 %cmp192195, label %while.body.lr.ph.lr.ph, label %cleanup107, !llvm.loop !25

if.end16:                                         ; preds = %if.then7
  %cmp23 = icmp eq i32 %8, %9
  br i1 %cmp23, label %if.then24, label %if.end52

if.then24:                                        ; preds = %if.end16
  %11 = trunc i64 %indvars.iv to i32
  %type = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %query, i64 0, i32 2, i64 %indvars.iv, i32 1
  %12 = load i32, i32* %type, align 4, !tbaa !13
  %type29 = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %defn, i64 0, i32 2, i64 %indvars.iv228, i32 1
  %13 = load i32, i32* %type29, align 4, !tbaa !13
  %cmp30 = icmp eq i32 %12, %13
  br i1 %cmp30, label %land.end, label %lor.lhs.false

land.end:                                         ; preds = %if.then24
  %v = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %query, i64 0, i32 2, i64 %indvars.iv, i32 4
  %14 = bitcast %union.anon* %v to i8*
  %v35 = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %defn, i64 0, i32 2, i64 %indvars.iv228, i32 4
  %15 = bitcast %union.anon* %v35 to i8*
  %call = tail call i32 @memcmp(i8* noundef nonnull %14, i8* noundef nonnull %15, i64 noundef 8) #12
  %cmp36 = icmp eq i32 %call, 0
  %cmp37 = icmp eq i32 %4, 0
  %or.cond = select i1 %cmp36, i1 %cmp37, i1 false
  br i1 %or.cond, label %if.then41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then24, %land.end
  %16 = phi i1 [ %cmp36, %land.end ], [ false, %if.then24 ]
  %tobool38 = xor i1 %16, true
  %cmp40 = icmp eq i32 %4, 1
  %or.cond113 = select i1 %tobool38, i1 %cmp40, i1 false
  br i1 %or.cond113, label %if.then41, label %if.else

if.then41:                                        ; preds = %lor.lhs.false, %land.end
  %inc42 = add nsw i32 %matches.0.ph176196, 1
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %optional = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %query, i64 0, i32 2, i64 %indvars.iv, i32 3
  %bf.load = load i8, i8* %optional, align 4
  %bf.clear = and i8 %bf.load, 1
  %tobool45.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool45.not, label %cleanup107, label %cleanup

cleanup:                                          ; preds = %if.then41, %if.else
  %matches.1 = phi i32 [ %inc42, %if.then41 ], [ %matches.0.ph176196, %if.else ]
  %inc49 = add nsw i32 %11, 1
  br label %while.cond.outer.backedge

if.end52:                                         ; preds = %if.end16, %if.end
  %type55 = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %query, i64 0, i32 2, i64 %indvars.iv, i32 1
  %17 = load i32, i32* %type55, align 4, !tbaa !13
  switch i32 %17, label %if.then92 [
    i32 2, label %if.then57
    i32 0, label %lor.lhs.false77
  ]

if.then57:                                        ; preds = %if.end52
  %cmp58 = icmp eq i32 %4, 1
  br i1 %cmp58, label %if.then59, label %if.else61

if.then59:                                        ; preds = %if.then57
  %inc60 = add nsw i32 %matches.0.ph176196, 1
  br label %if.end105

if.else61:                                        ; preds = %if.then57
  %optional64 = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %query, i64 0, i32 2, i64 %indvars.iv, i32 3
  %bf.load65 = load i8, i8* %optional64, align 4
  %bf.clear66 = and i8 %bf.load65, 1
  %tobool68.not = icmp eq i8 %bf.clear66, 0
  br i1 %tobool68.not, label %cleanup107, label %if.end105

lor.lhs.false77:                                  ; preds = %if.end52
  switch i32 %4, label %if.else102 [
    i32 0, label %land.lhs.true79
    i32 1, label %land.lhs.true86
  ]

land.lhs.true79:                                  ; preds = %lor.lhs.false77
  %v82 = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %query, i64 0, i32 2, i64 %indvars.iv, i32 4
  %str_val = bitcast %union.anon* %v82 to i32*
  %18 = load i32, i32* %str_val, align 8, !tbaa !8
  %cmp83.not = icmp eq i32 %18, %1
  br i1 %cmp83.not, label %if.else102, label %if.then92

land.lhs.true86:                                  ; preds = %lor.lhs.false77
  %v89 = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %query, i64 0, i32 2, i64 %indvars.iv, i32 4
  %str_val90 = bitcast %union.anon* %v89 to i32*
  %19 = load i32, i32* %str_val90, align 8, !tbaa !8
  %cmp91 = icmp eq i32 %19, %1
  br i1 %cmp91, label %if.then92, label %if.else102

if.then92:                                        ; preds = %if.end52, %land.lhs.true86, %land.lhs.true79
  %optional95 = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %query, i64 0, i32 2, i64 %indvars.iv, i32 3
  %bf.load96 = load i8, i8* %optional95, align 4
  %bf.clear97 = and i8 %bf.load96, 1
  %tobool99.not = icmp eq i8 %bf.clear97, 0
  br i1 %tobool99.not, label %cleanup107, label %if.end105

if.else102:                                       ; preds = %land.lhs.true79, %lor.lhs.false77, %land.lhs.true86
  %inc103 = add nsw i32 %matches.0.ph176196, 1
  br label %if.end105

if.end105:                                        ; preds = %if.else102, %if.then92, %if.then59, %if.else61
  %matches.3 = phi i32 [ %inc60, %if.then59 ], [ %matches.0.ph176196, %if.else61 ], [ %matches.0.ph176196, %if.then92 ], [ %inc103, %if.else102 ]
  %inc106 = add nsw i32 %5, 1
  %cmp192 = icmp slt i32 %inc106, %0
  br i1 %cmp192, label %while.body.lr.ph, label %cleanup107, !llvm.loop !25

cleanup107:                                       ; preds = %if.else, %while.cond.outer.backedge, %if.end105, %if.then92, %if.else61, %if.then, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ %matches.0.ph176196, %if.then ], [ %matches.3, %if.end105 ], [ -1, %if.then92 ], [ -1, %if.else61 ], [ %matches.0.ph.be, %while.cond.outer.backedge ], [ -1, %if.else ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define void @ossl_property_free(%struct.ossl_property_list_st* noundef %p) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ossl_property_list_st* %p to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 489) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_property_list_st* @ossl_property_merge(%struct.ossl_property_list_st* noundef %a, %struct.ossl_property_list_st* noundef %b) local_unnamed_addr #0 {
entry:
  %num_properties = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %a, i64 0, i32 0
  %0 = load i32, i32* %num_properties, align 8, !tbaa !22
  %num_properties3 = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %b, i64 0, i32 0
  %1 = load i32, i32* %num_properties3, align 8, !tbaa !22
  %add = add nsw i32 %1, %0
  %cmp = icmp eq i32 %add, 0
  %sub = add nsw i32 %add, -1
  %cond = select i1 %cmp, i32 0, i32 %sub
  %conv = sext i32 %cond to i64
  %mul = mul nsw i64 %conv, 24
  %add4 = add nsw i64 %mul, 32
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %add4, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 507) #11
  %cmp5 = icmp eq i8* %call, null
  br i1 %cmp5, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds i8, i8* %call, i64 4
  %bf.load = load i8, i8* %2, align 4
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %2, align 4
  %properties54 = getelementptr inbounds i8, i8* %call, i64 8
  %arraydecay55 = bitcast i8* %properties54 to %struct.ossl_property_definition_st*
  br label %for.cond

for.cond:                                         ; preds = %if.end53, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end53 ], [ 0, %if.end ]
  %i.0 = phi i32 [ %i.1, %if.end53 ], [ 0, %if.end ]
  %j.0 = phi i32 [ %j.2, %if.end53 ], [ 0, %if.end ]
  %3 = load i32, i32* %num_properties, align 8, !tbaa !22
  %cmp8 = icmp slt i32 %i.0, %3
  %4 = load i32, i32* %num_properties3, align 8, !tbaa !22
  %cmp18.not = icmp slt i32 %j.0, %4
  br i1 %cmp8, label %if.else, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond
  br i1 %cmp18.not, label %if.then16, label %for.end

if.then16:                                        ; preds = %lor.rhs
  %inc = add nsw i32 %j.0, 1
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %b, i64 0, i32 2, i64 %idxprom
  br label %if.end53

if.else:                                          ; preds = %for.cond
  br i1 %cmp18.not, label %if.else24, label %if.then20

if.then20:                                        ; preds = %if.else
  %inc21 = add nsw i32 %i.0, 1
  %idxprom22 = sext i32 %i.0 to i64
  %arrayidx23 = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %a, i64 0, i32 2, i64 %idxprom22
  br label %if.end53

if.else24:                                        ; preds = %if.else
  %idxprom25 = sext i32 %i.0 to i64
  %arrayidx26 = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %a, i64 0, i32 2, i64 %idxprom25
  %name_idx = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %arrayidx26, i64 0, i32 0
  %5 = load i32, i32* %name_idx, align 8, !tbaa !12
  %idxprom27 = sext i32 %j.0 to i64
  %arrayidx28 = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %b, i64 0, i32 2, i64 %idxprom27
  %name_idx29 = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %arrayidx28, i64 0, i32 0
  %6 = load i32, i32* %name_idx29, align 8, !tbaa !12
  %cmp30.not = icmp sgt i32 %5, %6
  br i1 %cmp30.not, label %if.else47, label %if.then32

if.then32:                                        ; preds = %if.else24
  %cmp39 = icmp eq i32 %5, %6
  %inc42 = zext i1 %cmp39 to i32
  %spec.select = add nsw i32 %j.0, %inc42
  %inc44 = add nsw i32 %i.0, 1
  br label %if.end53

if.else47:                                        ; preds = %if.else24
  %inc48 = add nsw i32 %j.0, 1
  br label %if.end53

if.end53:                                         ; preds = %if.then20, %if.else47, %if.then32, %if.then16
  %copy.0 = phi %struct.ossl_property_definition_st* [ %arrayidx, %if.then16 ], [ %arrayidx23, %if.then20 ], [ %arrayidx26, %if.then32 ], [ %arrayidx28, %if.else47 ]
  %i.1 = phi i32 [ %i.0, %if.then16 ], [ %inc21, %if.then20 ], [ %inc44, %if.then32 ], [ %i.0, %if.else47 ]
  %j.2 = phi i32 [ %inc, %if.then16 ], [ %j.0, %if.then20 ], [ %spec.select, %if.then32 ], [ %inc48, %if.else47 ]
  %add.ptr = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %arraydecay55, i64 %indvars.iv
  %7 = bitcast %struct.ossl_property_definition_st* %add.ptr to i8*
  %8 = bitcast %struct.ossl_property_definition_st* %copy.0 to i8*
  %call56 = tail call i8* @memcpy(i8* noundef nonnull %7, i8* noundef nonnull %8, i64 noundef 24) #11
  %optional = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %copy.0, i64 0, i32 3
  %bf.load57 = load i8, i8* %optional, align 4
  %bf.load60 = load i8, i8* %2, align 4
  %9 = and i8 %bf.load57, 1
  %bf.set65 = or i8 %9, %bf.load60
  store i8 %bf.set65, i8* %2, align 4
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %lor.rhs
  %10 = trunc i64 %indvars.iv to i32
  %num_properties67 = bitcast i8* %call to i32*
  store i32 %10, i32* %num_properties67, align 8, !tbaa !22
  %cmp68.not = icmp eq i32 %add, %10
  br i1 %cmp68.not, label %if.end76, label %if.then70

if.then70:                                        ; preds = %for.end
  %sub71 = shl i64 %indvars.iv, 32
  %sext = add i64 %sub71, -4294967296
  %conv72 = ashr exact i64 %sext, 32
  %mul73 = mul nsw i64 %conv72, 24
  %add74 = add nsw i64 %mul73, 32
  %call75 = tail call i8* @CRYPTO_realloc(i8* noundef nonnull %call, i64 noundef %add74, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 529) #11
  br label %if.end76

if.end76:                                         ; preds = %if.then70, %for.end
  %r.0.in = phi i8* [ %call75, %if.then70 ], [ %call, %for.end ]
  %r.0 = bitcast i8* %r.0.in to %struct.ossl_property_list_st*
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end76
  %retval.0 = phi %struct.ossl_property_list_st* [ %r.0, %if.end76 ], [ null, %entry ]
  ret %struct.ossl_property_list_st* %retval.0
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i8* @CRYPTO_realloc(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_property_parse_init(%struct.ossl_lib_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_property_name(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 noundef 1) #11
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %err, label %for.cond

for.cond:                                         ; preds = %entry
  %call.1 = tail call i32 @ossl_property_name(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 noundef 1) #11
  %cmp1.1 = icmp eq i32 %call.1, 0
  br i1 %cmp1.1, label %err, label %for.cond.1

for.cond.1:                                       ; preds = %for.cond
  %call.2 = tail call i32 @ossl_property_name(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 noundef 1) #11
  %cmp1.2 = icmp eq i32 %call.2, 0
  br i1 %cmp1.2, label %err, label %for.cond.2

for.cond.2:                                       ; preds = %for.cond.1
  %call.3 = tail call i32 @ossl_property_name(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1) #11
  %cmp1.3 = icmp eq i32 %call.3, 0
  br i1 %cmp1.3, label %err, label %for.cond.3

for.cond.3:                                       ; preds = %for.cond.2
  %call.4 = tail call i32 @ossl_property_name(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 noundef 1) #11
  %cmp1.4 = icmp eq i32 %call.4, 0
  br i1 %cmp1.4, label %err, label %for.cond.4

for.cond.4:                                       ; preds = %for.cond.3
  %call.5 = tail call i32 @ossl_property_name(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 noundef 1) #11
  %cmp1.5 = icmp eq i32 %call.5, 0
  br i1 %cmp1.5, label %err, label %for.cond.5

for.cond.5:                                       ; preds = %for.cond.4
  %call2 = tail call i32 @ossl_property_value(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 noundef 1) #11
  store i32 %call2, i32* @ossl_property_true, align 4, !tbaa !14
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond.5
  %call4 = tail call i32 @ossl_property_value(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 noundef 1) #11
  store i32 %call4, i32* @ossl_property_false, align 4, !tbaa !14
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %err, label %cleanup

err:                                              ; preds = %entry, %for.cond, %for.cond.1, %for.cond.2, %for.cond.3, %for.cond.4, %for.cond.5, %lor.lhs.false
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %lor.lhs.false ]
  ret i32 %retval.0
}

declare i32 @ossl_property_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ossl_property_value(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i64 @ossl_property_list_to_string(%struct.ossl_lib_ctx_st* noundef %ctx, %struct.ossl_property_list_st* noundef readonly %list, i8* noundef %buf, i64 noundef %bufsize) local_unnamed_addr #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i64, align 8
  %needed = alloca i64, align 8
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !4
  store i64 %bufsize, i64* %bufsize.addr, align 8, !tbaa !19
  %0 = bitcast i64* %needed to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i64 0, i64* %needed, align 8, !tbaa !19
  %cmp = icmp eq %struct.ossl_property_list_st* %list, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %cmp1.not = icmp eq i64 %bufsize, 0
  br i1 %cmp1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.then
  store i8 0, i8* %buf, align 1, !tbaa !8
  br label %cleanup

if.end3:                                          ; preds = %entry
  %num_properties = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %list, i64 0, i32 0
  %1 = load i32, i32* %num_properties, align 8, !tbaa !22
  %cmp959 = icmp sgt i32 %1, 0
  br i1 %cmp959, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end3
  %sub = add nsw i32 %1, -1
  %idxprom63 = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %list, i64 0, i32 2, i64 %idxprom63
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %prop.161 = phi %struct.ossl_property_definition_st* [ %incdec.ptr, %for.inc ], [ %arrayidx, %for.body.preheader ]
  %i.060 = phi i32 [ %inc, %for.inc ], [ 0, %for.body.preheader ]
  %name_idx = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %prop.161, i64 0, i32 0
  %2 = load i32, i32* %name_idx, align 8, !tbaa !12
  %cmp10 = icmp eq i32 %2, 0
  br i1 %cmp10, label %for.inc, label %if.end12

if.end12:                                         ; preds = %for.body
  %3 = load i64, i64* %needed, align 8, !tbaa !19
  %cmp13.not = icmp eq i64 %3, 0
  br i1 %cmp13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end12
  call fastcc void @put_char(i8 noundef signext 44, i8** noundef nonnull %buf.addr, i64* noundef nonnull %bufsize.addr, i64* noundef nonnull %needed) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12
  %optional = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %prop.161, i64 0, i32 3
  %bf.load = load i8, i8* %optional, align 4
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.else, label %if.end20.sink.split

if.else:                                          ; preds = %if.end15
  %oper = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %prop.161, i64 0, i32 2
  %4 = load i32, i32* %oper, align 8, !tbaa !9
  %cmp17 = icmp eq i32 %4, 2
  br i1 %cmp17, label %if.end20.sink.split, label %if.end20

if.end20.sink.split:                              ; preds = %if.else, %if.end15
  %.sink = phi i8 [ 63, %if.end15 ], [ 45, %if.else ]
  call fastcc void @put_char(i8 noundef signext %.sink, i8** noundef nonnull %buf.addr, i64* noundef nonnull %bufsize.addr, i64* noundef nonnull %needed) #10
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.else
  %5 = load i32, i32* %name_idx, align 8, !tbaa !12
  %call = tail call i8* @ossl_property_name_str(%struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef %5) #11
  %cmp22 = icmp eq i8* %call, null
  br i1 %cmp22, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end20
  call fastcc void @put_str(i8* noundef nonnull %call, i8** noundef nonnull %buf.addr, i64* noundef nonnull %bufsize.addr, i64* noundef nonnull %needed) #10
  %oper25 = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %prop.161, i64 0, i32 2
  %6 = load i32, i32* %oper25, align 8, !tbaa !9
  switch i32 %6, label %for.inc [
    i32 1, label %sw.bb
    i32 0, label %sw.bb26
  ]

sw.bb:                                            ; preds = %if.end24
  call fastcc void @put_char(i8 noundef signext 33, i8** noundef nonnull %buf.addr, i64* noundef nonnull %bufsize.addr, i64* noundef nonnull %needed) #10
  br label %sw.bb26

sw.bb26:                                          ; preds = %if.end24, %sw.bb
  call fastcc void @put_char(i8 noundef signext 61, i8** noundef nonnull %buf.addr, i64* noundef nonnull %bufsize.addr, i64* noundef nonnull %needed) #10
  %type = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %prop.161, i64 0, i32 1
  %7 = load i32, i32* %type, align 4, !tbaa !13
  switch i32 %7, label %cleanup [
    i32 0, label %sw.bb27
    i32 1, label %sw.bb32
  ]

sw.bb27:                                          ; preds = %sw.bb26
  %v = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %prop.161, i64 0, i32 4
  %str_val = bitcast %union.anon* %v to i32*
  %8 = load i32, i32* %str_val, align 8, !tbaa !8
  %call28 = tail call i8* @ossl_property_value_str(%struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef %8) #11
  %cmp29 = icmp eq i8* %call28, null
  br i1 %cmp29, label %cleanup, label %if.end31

if.end31:                                         ; preds = %sw.bb27
  call fastcc void @put_str(i8* noundef nonnull %call28, i8** noundef nonnull %buf.addr, i64* noundef nonnull %bufsize.addr, i64* noundef nonnull %needed) #10
  br label %for.inc

sw.bb32:                                          ; preds = %sw.bb26
  %int_val = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %prop.161, i64 0, i32 4, i32 0
  %9 = load i64, i64* %int_val, align 8, !tbaa !8
  call fastcc void @put_num(i64 noundef %9, i8** noundef nonnull %buf.addr, i64* noundef nonnull %bufsize.addr, i64* noundef nonnull %needed) #10
  br label %for.inc

for.inc:                                          ; preds = %sw.bb32, %if.end31, %if.end24, %for.body
  %inc = add nuw nsw i32 %i.060, 1
  %incdec.ptr = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %prop.161, i64 -1
  %10 = load i32, i32* %num_properties, align 8, !tbaa !22
  %cmp9 = icmp slt i32 %inc, %10
  br i1 %cmp9, label %for.body, label %for.end, !llvm.loop !27

for.end:                                          ; preds = %for.inc, %if.end3
  call fastcc void @put_char(i8 noundef signext 0, i8** noundef nonnull %buf.addr, i64* noundef nonnull %bufsize.addr, i64* noundef nonnull %needed) #10
  %11 = load i64, i64* %needed, align 8, !tbaa !19
  br label %cleanup

cleanup:                                          ; preds = %sw.bb26, %sw.bb27, %if.end20, %if.then, %if.then2, %for.end
  %retval.0 = phi i64 [ %11, %for.end ], [ 1, %if.then2 ], [ 1, %if.then ], [ 0, %if.end20 ], [ 0, %sw.bb27 ], [ 0, %sw.bb26 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @put_char(i8 noundef signext %ch, i8** nocapture noundef %buf, i64* nocapture noundef %remain, i64* nocapture noundef %needed) unnamed_addr #7 {
entry:
  %0 = load i64, i64* %remain, align 8, !tbaa !19
  switch i64 %0, label %if.else [
    i64 0, label %return
    i64 1, label %if.end3
  ]

if.else:                                          ; preds = %entry
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.else
  %ch.sink = phi i8 [ %ch, %if.else ], [ 0, %entry ]
  %1 = load i8*, i8** %buf, align 8, !tbaa !4
  store i8 %ch.sink, i8* %1, align 1, !tbaa !8
  %2 = load i8*, i8** %buf, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i64 1
  store i8* %incdec.ptr, i8** %buf, align 8, !tbaa !4
  %3 = load i64, i64* %needed, align 8, !tbaa !19
  %inc4 = add i64 %3, 1
  store i64 %inc4, i64* %needed, align 8, !tbaa !19
  br label %return

return:                                           ; preds = %entry, %if.end3
  %remain.sink11 = phi i64* [ %remain, %if.end3 ], [ %needed, %entry ]
  %.sink10 = phi i64 [ -1, %if.end3 ], [ 1, %entry ]
  %4 = load i64, i64* %remain.sink11, align 8, !tbaa !19
  %dec = add i64 %4, %.sink10
  store i64 %dec, i64* %remain.sink11, align 8, !tbaa !19
  ret void
}

declare i8* @ossl_property_name_str(%struct.ossl_lib_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @put_str(i8* noundef %str, i8** nocapture noundef %buf, i64* nocapture noundef %remain, i64* nocapture noundef %needed) unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(i8* noundef %str) #12
  %0 = load i64, i64* %needed, align 8, !tbaa !19
  %add = add i64 %0, %call
  store i64 %add, i64* %needed, align 8, !tbaa !19
  %1 = load i64, i64* %remain, align 8, !tbaa !19
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add1 = add i64 %call, 1
  %cmp2 = icmp ult i64 %1, %add1
  %sub = add i64 %1, -1
  %spec.select = select i1 %cmp2, i64 %sub, i64 %call
  %cmp5.not = icmp eq i64 %spec.select, 0
  br i1 %cmp5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  %2 = load i8*, i8** %buf, align 8, !tbaa !4
  %call7 = tail call i8* @strncpy(i8* noundef %2, i8* noundef %str, i64 noundef %spec.select) #11
  %3 = load i8*, i8** %buf, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %spec.select
  store i8* %add.ptr, i8** %buf, align 8, !tbaa !4
  %4 = load i64, i64* %remain, align 8, !tbaa !19
  %sub8 = sub i64 %4, %spec.select
  store i64 %sub8, i64* %remain, align 8, !tbaa !19
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  %5 = phi i64 [ %sub8, %if.then6 ], [ %1, %if.end ]
  %cmp10 = icmp ult i64 %spec.select, %call
  %cmp11 = icmp eq i64 %5, 1
  %or.cond = select i1 %cmp10, i1 %cmp11, i1 false
  br i1 %or.cond, label %if.then12, label %cleanup

if.then12:                                        ; preds = %if.end9
  %6 = load i8*, i8** %buf, align 8, !tbaa !4
  store i8 0, i8* %6, align 1, !tbaa !8
  %7 = load i8*, i8** %buf, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i64 1
  store i8* %incdec.ptr, i8** %buf, align 8, !tbaa !4
  %8 = load i64, i64* %remain, align 8, !tbaa !19
  %dec = add i64 %8, -1
  store i64 %dec, i64* %remain, align 8, !tbaa !19
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then12, %entry
  ret void
}

declare i8* @ossl_property_value_str(%struct.ossl_lib_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @put_num(i64 noundef %val, i8** nocapture noundef %buf, i64* nocapture noundef %remain, i64* nocapture noundef %needed) unnamed_addr #0 {
entry:
  %cmp = icmp slt i64 %val, 0
  %sub = sub nsw i64 0, %val
  %spec.select = select i1 %cmp, i64 %sub, i64 %val
  %spec.select31 = select i1 %cmp, i64 2, i64 1
  %cmp133 = icmp ugt i64 %spec.select, 9
  br i1 %cmp133, label %for.inc, label %for.end

for.inc:                                          ; preds = %entry, %for.inc
  %len.135 = phi i64 [ %inc2, %for.inc ], [ %spec.select31, %entry ]
  %tmpval.134 = phi i64 [ %div32, %for.inc ], [ %spec.select, %entry ]
  %inc2 = add i64 %len.135, 1
  %div32 = udiv i64 %tmpval.134, 10
  %cmp1 = icmp ugt i64 %tmpval.134, 99
  br i1 %cmp1, label %for.inc, label %for.end, !llvm.loop !28

for.end:                                          ; preds = %for.inc, %entry
  %len.1.lcssa = phi i64 [ %spec.select31, %entry ], [ %inc2, %for.inc ]
  %0 = load i64, i64* %needed, align 8, !tbaa !19
  %add = add i64 %0, %len.1.lcssa
  store i64 %add, i64* %needed, align 8, !tbaa !19
  %1 = load i64, i64* %remain, align 8, !tbaa !19
  %cmp3 = icmp eq i64 %1, 0
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %for.end
  %2 = load i8*, i8** %buf, align 8, !tbaa !4
  %call = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %2, i64 noundef %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %val) #11
  %3 = load i64, i64* %remain, align 8, !tbaa !19
  %cmp6 = icmp ult i64 %3, %len.1.lcssa
  %4 = load i8*, i8** %buf, align 8, !tbaa !4
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %3
  store i8* %add.ptr, i8** %buf, align 8, !tbaa !4
  br label %if.end10

if.else:                                          ; preds = %if.end5
  %add.ptr8 = getelementptr inbounds i8, i8* %4, i64 %len.1.lcssa
  store i8* %add.ptr8, i8** %buf, align 8, !tbaa !4
  %sub9 = sub i64 %3, %len.1.lcssa
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  %storemerge = phi i64 [ %sub9, %if.else ], [ 0, %if.then7 ]
  store i64 %storemerge, i64* %remain, align 8, !tbaa !19
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end10
  ret void
}

declare %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #3

declare i32 @ossl_ctype_check(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ossl_tolower(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse_string(%struct.ossl_lib_ctx_st* noundef %ctx, i8** nocapture noundef %t, i8 noundef signext %delim, %struct.ossl_property_definition_st* nocapture noundef writeonly %res, i32 noundef %create) unnamed_addr #0 {
entry:
  %v = alloca [1000 x i8], align 16
  %0 = getelementptr inbounds [1000 x i8], [1000 x i8]* %v, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* nonnull %0) #9
  %1 = load i8*, i8** %t, align 8, !tbaa !4
  %2 = load i8, i8* %1, align 1, !tbaa !8
  %cmp.not40 = icmp eq i8 %2, 0
  %cmp4.not41 = icmp eq i8 %2, %delim
  %or.cond42 = or i1 %cmp.not40, %cmp4.not41
  br i1 %or.cond42, label %while.end.thread, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %3 = phi i8 [ %4, %if.end ], [ %2, %entry ]
  %err.045 = phi i32 [ %err.1, %if.end ], [ 0, %entry ]
  %i.044 = phi i64 [ %i.1, %if.end ], [ 0, %entry ]
  %s.043 = phi i8* [ %incdec.ptr, %if.end ], [ %1, %entry ]
  %cmp6 = icmp ult i64 %i.044, 999
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %inc = add nuw nsw i64 %i.044, 1
  %arrayidx = getelementptr inbounds [1000 x i8], [1000 x i8]* %v, i64 0, i64 %i.044
  store i8 %3, i8* %arrayidx, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %while.body, %if.then
  %i.1 = phi i64 [ %inc, %if.then ], [ %i.044, %while.body ]
  %err.1 = phi i32 [ %err.045, %if.then ], [ 1, %while.body ]
  %incdec.ptr = getelementptr inbounds i8, i8* %s.043, i64 1
  %4 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %cmp.not = icmp eq i8 %4, 0
  %cmp4.not = icmp eq i8 %4, %delim
  %or.cond = or i1 %cmp.not, %cmp4.not
  br i1 %or.cond, label %while.end, label %while.body, !llvm.loop !29

while.end:                                        ; preds = %if.end
  br i1 %cmp.not, label %if.then11, label %if.end13

while.end.thread:                                 ; preds = %entry
  br i1 %cmp.not40, label %if.then11, label %if.end13.thread

if.end13.thread:                                  ; preds = %while.end.thread
  %arrayidx1460 = getelementptr inbounds [1000 x i8], [1000 x i8]* %v, i64 0, i64 0
  store i8 0, i8* %arrayidx1460, align 16, !tbaa !8
  br label %if.else16

if.then11:                                        ; preds = %while.end.thread, %while.end
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 180, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.parse_string, i64 0, i64 0)) #11
  %conv12 = sext i8 %delim to i32
  %5 = load i8*, i8** %t, align 8, !tbaa !4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 55, i32 noundef 106, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv12, i8* noundef %5) #11
  br label %cleanup

if.end13:                                         ; preds = %while.end
  %arrayidx14 = getelementptr inbounds [1000 x i8], [1000 x i8]* %v, i64 0, i64 %i.1
  store i8 0, i8* %arrayidx14, align 1, !tbaa !8
  %tobool.not = icmp eq i32 %err.1, 0
  br i1 %tobool.not, label %if.else16, label %if.then15

if.then15:                                        ; preds = %if.end13
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.parse_string, i64 0, i64 0)) #11
  %6 = load i8*, i8** %t, align 8, !tbaa !4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 55, i32 noundef 109, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef %6) #11
  br label %if.end18

if.else16:                                        ; preds = %if.end13.thread, %if.end13
  %s.0.lcssa5463 = phi i8* [ %1, %if.end13.thread ], [ %incdec.ptr, %if.end13 ]
  %call = call i32 @ossl_property_value(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef nonnull %0, i32 noundef %create) #11
  %v17 = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %res, i64 0, i32 4
  %str_val = bitcast %union.anon* %v17 to i32*
  store i32 %call, i32* %str_val, align 8, !tbaa !8
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %if.then15
  %tobool.not64 = phi i32 [ 1, %if.else16 ], [ 0, %if.then15 ]
  %s.0.lcssa5462 = phi i8* [ %s.0.lcssa5463, %if.else16 ], [ %incdec.ptr, %if.then15 ]
  %add.ptr = getelementptr inbounds i8, i8* %s.0.lcssa5462, i64 1
  %call19 = call fastcc i8* @skip_space(i8* noundef nonnull %add.ptr) #10
  store i8* %call19, i8** %t, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %res, i64 0, i32 1
  store i32 0, i32* %type, align 4, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then11
  %retval.0 = phi i32 [ 0, %if.then11 ], [ %tobool.not64, %if.end18 ]
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse_number(i8** nocapture noundef %t, %struct.ossl_property_definition_st* nocapture noundef writeonly %res) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %t, align 8, !tbaa !4
  %1 = load i8, i8* %0, align 1, !tbaa !8
  %conv = sext i8 %1 to i32
  %call = tail call i32 @ossl_ctype_check(i32 noundef %conv, i32 noundef 4) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %do.body

do.body:                                          ; preds = %entry, %do.body
  %s.0 = phi i8* [ %incdec.ptr, %do.body ], [ %0, %entry ]
  %v.0 = phi i64 [ %add, %do.body ], [ 0, %entry ]
  %mul = mul nsw i64 %v.0, 10
  %incdec.ptr = getelementptr inbounds i8, i8* %s.0, i64 1
  %2 = load i8, i8* %s.0, align 1, !tbaa !8
  %conv1 = sext i8 %2 to i64
  %sub = add i64 %mul, -48
  %add = add i64 %sub, %conv1
  %3 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %conv3 = sext i8 %3 to i32
  %call4 = tail call i32 @ossl_ctype_check(i32 noundef %conv3, i32 noundef 4) #11
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end, label %do.body, !llvm.loop !30

do.end:                                           ; preds = %do.body
  %4 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %conv6 = sext i8 %4 to i32
  %call7 = tail call i32 @ossl_ctype_check(i32 noundef %conv6, i32 noundef 8) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %do.end
  %5 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  switch i8 %5, label %if.then15 [
    i8 0, label %if.end16
    i8 44, label %if.end16
  ]

if.then15:                                        ; preds = %land.lhs.true
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.parse_number, i64 0, i64 0)) #11
  %6 = load i8*, i8** %t, align 8, !tbaa !4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 55, i32 noundef 105, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef %6) #11
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true, %land.lhs.true, %do.end
  %call17 = tail call fastcc i8* @skip_space(i8* noundef nonnull %incdec.ptr) #10
  store i8* %call17, i8** %t, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %res, i64 0, i32 1
  store i32 1, i32* %type, align 4, !tbaa !13
  %int_val = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %res, i64 0, i32 4, i32 0
  store i64 %add, i64* %int_val, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end16, %if.then15
  %retval.0 = phi i32 [ 1, %if.end16 ], [ 0, %if.then15 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse_hex(i8** nocapture noundef %t, %struct.ossl_property_definition_st* nocapture noundef writeonly %res) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %t, align 8, !tbaa !4
  %1 = load i8, i8* %0, align 1, !tbaa !8
  %conv = sext i8 %1 to i32
  %call = tail call i32 @ossl_ctype_check(i32 noundef %conv, i32 noundef 16) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %do.body

do.body:                                          ; preds = %entry, %do.cond
  %s.0 = phi i8* [ %incdec.ptr, %do.cond ], [ %0, %entry ]
  %v.0 = phi i64 [ %v.1, %do.cond ], [ 0, %entry ]
  %shl = shl i64 %v.0, 4
  %2 = load i8, i8* %s.0, align 1, !tbaa !8
  %conv1 = sext i8 %2 to i32
  %call2 = tail call i32 @ossl_ctype_check(i32 noundef %conv1, i32 noundef 4) #11
  %tobool3.not = icmp eq i32 %call2, 0
  %3 = load i8, i8* %s.0, align 1, !tbaa !8
  %conv7 = sext i8 %3 to i32
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.body
  %sub = add nsw i32 %conv7, -48
  br label %do.cond

if.else:                                          ; preds = %do.body
  %call8 = tail call i32 @ossl_tolower(i32 noundef %conv7) #11
  %sub9 = add nsw i32 %call8, -97
  br label %do.cond

do.cond:                                          ; preds = %if.then4, %if.else
  %conv6.pn.in = phi i32 [ %sub, %if.then4 ], [ %sub9, %if.else ]
  %conv6.pn = sext i32 %conv6.pn.in to i64
  %v.1 = add nsw i64 %shl, %conv6.pn
  %incdec.ptr = getelementptr inbounds i8, i8* %s.0, i64 1
  %4 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %conv13 = sext i8 %4 to i32
  %call14 = tail call i32 @ossl_ctype_check(i32 noundef %conv13, i32 noundef 16) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.end, label %do.body, !llvm.loop !31

do.end:                                           ; preds = %do.cond
  %5 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %conv16 = sext i8 %5 to i32
  %call17 = tail call i32 @ossl_ctype_check(i32 noundef %conv16, i32 noundef 8) #11
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %do.end
  %6 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  switch i8 %6, label %if.then25 [
    i8 0, label %if.end26
    i8 44, label %if.end26
  ]

if.then25:                                        ; preds = %land.lhs.true
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 133, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.parse_hex, i64 0, i64 0)) #11
  %7 = load i8*, i8** %t, align 8, !tbaa !4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 55, i32 noundef 102, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef %7) #11
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true, %land.lhs.true, %do.end
  %call27 = tail call fastcc i8* @skip_space(i8* noundef nonnull %incdec.ptr) #10
  store i8* %call27, i8** %t, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %res, i64 0, i32 1
  store i32 1, i32* %type, align 4, !tbaa !13
  %int_val = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %res, i64 0, i32 4, i32 0
  store i64 %v.1, i64* %int_val, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end26, %if.then25
  %retval.0 = phi i32 [ 1, %if.end26 ], [ 0, %if.then25 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse_oct(i8** nocapture noundef %t, %struct.ossl_property_definition_st* nocapture noundef writeonly %res) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %t, align 8, !tbaa !4
  %1 = load i8, i8* %0, align 1, !tbaa !8
  %2 = and i8 %1, -2
  %switch = icmp eq i8 %2, 56
  br i1 %switch, label %cleanup, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %entry
  %conv = sext i8 %1 to i32
  %call = tail call i32 @ossl_ctype_check(i32 noundef %conv, i32 noundef 4) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %do.body.preheader

do.body.preheader:                                ; preds = %lor.lhs.false5
  %.pre = load i8, i8* %0, align 1, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %do.body, %do.body.preheader
  %3 = phi i8 [ %.pre, %do.body.preheader ], [ %.pre53, %do.body ]
  %s.0 = phi i8* [ %0, %do.body.preheader ], [ %incdec.ptr, %do.body ]
  %v.0 = phi i64 [ 0, %do.body.preheader ], [ %add, %do.body ]
  %shl = shl i64 %v.0, 3
  %conv7 = sext i8 %3 to i64
  %sub = add i64 %shl, -48
  %add = add i64 %sub, %conv7
  %incdec.ptr = getelementptr inbounds i8, i8* %s.0, i64 1
  %4 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %conv9 = sext i8 %4 to i32
  %call10 = tail call i32 @ossl_ctype_check(i32 noundef %conv9, i32 noundef 4) #11
  %tobool11.not = icmp eq i32 %call10, 0
  %.pre53 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %5 = and i8 %.pre53, -2
  %switch52 = icmp eq i8 %5, 56
  %or.cond = select i1 %tobool11.not, i1 true, i1 %switch52
  br i1 %or.cond, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  %conv18 = sext i8 %.pre53 to i32
  %call19 = tail call i32 @ossl_ctype_check(i32 noundef %conv18, i32 noundef 8) #11
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %if.end30

land.lhs.true21:                                  ; preds = %do.end
  %6 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  switch i8 %6, label %if.then29 [
    i8 0, label %if.end30
    i8 44, label %if.end30
  ]

if.then29:                                        ; preds = %land.lhs.true21
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 154, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.parse_oct, i64 0, i64 0)) #11
  %7 = load i8*, i8** %t, align 8, !tbaa !4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 55, i32 noundef 104, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef %7) #11
  br label %cleanup

if.end30:                                         ; preds = %land.lhs.true21, %land.lhs.true21, %do.end
  %call31 = tail call fastcc i8* @skip_space(i8* noundef nonnull %incdec.ptr) #10
  store i8* %call31, i8** %t, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %res, i64 0, i32 1
  store i32 1, i32* %type, align 4, !tbaa !13
  %int_val = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %res, i64 0, i32 4, i32 0
  store i64 %add, i64* %int_val, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false5, %if.end30, %if.then29
  %retval.0 = phi i32 [ 1, %if.end30 ], [ 0, %if.then29 ], [ 0, %entry ], [ 0, %lor.lhs.false5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse_unquoted(%struct.ossl_lib_ctx_st* noundef %ctx, i8** nocapture noundef %t, %struct.ossl_property_definition_st* nocapture noundef writeonly %res, i32 noundef %create) unnamed_addr #0 {
entry:
  %v = alloca [1000 x i8], align 16
  %0 = getelementptr inbounds [1000 x i8], [1000 x i8]* %v, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* nonnull %0) #9
  %1 = load i8*, i8** %t, align 8, !tbaa !4
  %2 = load i8, i8* %1, align 1, !tbaa !8
  switch i8 %2, label %while.cond.preheader [
    i8 0, label %cleanup
    i8 44, label %cleanup
  ]

while.cond.preheader:                             ; preds = %entry
  %conv565 = sext i8 %2 to i32
  %call66 = tail call i32 @ossl_ctype_check(i32 noundef %conv565, i32 noundef 256) #11
  %tobool.not67 = icmp eq i32 %call66, 0
  br i1 %tobool.not67, label %while.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond.preheader, %if.end18
  %err.070 = phi i32 [ %err.1, %if.end18 ], [ 0, %while.cond.preheader ]
  %i.069 = phi i64 [ %i.1, %if.end18 ], [ 0, %while.cond.preheader ]
  %s.068 = phi i8* [ %incdec.ptr, %if.end18 ], [ %1, %while.cond.preheader ]
  %3 = load i8, i8* %s.068, align 1, !tbaa !8
  %conv6 = sext i8 %3 to i32
  %call7 = tail call i32 @ossl_ctype_check(i32 noundef %conv6, i32 noundef 8) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load i8, i8* %s.068, align 1, !tbaa !8
  %conv9 = sext i8 %4 to i32
  %cmp10.not = icmp eq i8 %4, 44
  br i1 %cmp10.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %cmp12 = icmp ult i64 %i.069, 999
  br i1 %cmp12, label %if.then14, label %if.end18

if.then14:                                        ; preds = %while.body
  %call16 = tail call i32 @ossl_tolower(i32 noundef %conv9) #11
  %conv17 = trunc i32 %call16 to i8
  %inc = add nuw nsw i64 %i.069, 1
  %arrayidx = getelementptr inbounds [1000 x i8], [1000 x i8]* %v, i64 0, i64 %i.069
  store i8 %conv17, i8* %arrayidx, align 1, !tbaa !8
  br label %if.end18

if.end18:                                         ; preds = %while.body, %if.then14
  %i.1 = phi i64 [ %inc, %if.then14 ], [ %i.069, %while.body ]
  %err.1 = phi i32 [ %err.070, %if.then14 ], [ 1, %while.body ]
  %incdec.ptr = getelementptr inbounds i8, i8* %s.068, i64 1
  %5 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %conv5 = sext i8 %5 to i32
  %call = tail call i32 @ossl_ctype_check(i32 noundef %conv5, i32 noundef 256) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.end, label %land.lhs.true, !llvm.loop !32

while.end:                                        ; preds = %land.rhs, %land.lhs.true, %if.end18, %while.cond.preheader
  %s.0.lcssa = phi i8* [ %1, %while.cond.preheader ], [ %incdec.ptr, %if.end18 ], [ %s.068, %land.lhs.true ], [ %s.068, %land.rhs ]
  %i.0.lcssa = phi i64 [ 0, %while.cond.preheader ], [ %i.1, %if.end18 ], [ %i.069, %land.lhs.true ], [ %i.069, %land.rhs ]
  %err.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %err.1, %if.end18 ], [ %err.070, %land.lhs.true ], [ %err.070, %land.rhs ]
  %6 = load i8, i8* %s.0.lcssa, align 1, !tbaa !8
  %conv19 = sext i8 %6 to i32
  %call20 = tail call i32 @ossl_ctype_check(i32 noundef %conv19, i32 noundef 8) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %if.end31

land.lhs.true22:                                  ; preds = %while.end
  %7 = load i8, i8* %s.0.lcssa, align 1, !tbaa !8
  switch i8 %7, label %if.then30 [
    i8 0, label %if.end31
    i8 44, label %if.end31
  ]

if.then30:                                        ; preds = %land.lhs.true22
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 213, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.parse_unquoted, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 55, i32 noundef 101, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %s.0.lcssa) #11
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true22, %land.lhs.true22, %while.end
  %arrayidx32 = getelementptr inbounds [1000 x i8], [1000 x i8]* %v, i64 0, i64 %i.0.lcssa
  store i8 0, i8* %arrayidx32, align 1, !tbaa !8
  %tobool33.not = icmp eq i32 %err.0.lcssa, 0
  br i1 %tobool33.not, label %if.else35, label %if.then34

if.then34:                                        ; preds = %if.end31
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 219, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.parse_unquoted, i64 0, i64 0)) #11
  %8 = load i8*, i8** %t, align 8, !tbaa !4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 55, i32 noundef 109, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef %8) #11
  br label %if.end38

if.else35:                                        ; preds = %if.end31
  %call36 = call i32 @ossl_property_value(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef nonnull %0, i32 noundef %create) #11
  %v37 = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %res, i64 0, i32 4
  %str_val = bitcast %union.anon* %v37 to i32*
  store i32 %call36, i32* %str_val, align 8, !tbaa !8
  br label %if.end38

if.end38:                                         ; preds = %if.else35, %if.then34
  %call39 = call fastcc i8* @skip_space(i8* noundef nonnull %s.0.lcssa) #10
  store i8* %call39, i8** %t, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %res, i64 0, i32 1
  store i32 0, i32* %type, align 4, !tbaa !13
  %lnot.ext = zext i1 %tobool33.not to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %entry, %if.end38, %if.then30
  %retval.0 = phi i32 [ %lnot.ext, %if.end38 ], [ 0, %if.then30 ], [ 0, %entry ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_PROPERTY_DEFINITION_num(%struct.stack_st_OSSL_PROPERTY_DEFINITION* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROPERTY_DEFINITION* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_PROPERTY_DEFINITION_sort(%struct.stack_st_OSSL_PROPERTY_DEFINITION* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROPERTY_DEFINITION* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_property_definition_st* @sk_OSSL_PROPERTY_DEFINITION_value(%struct.stack_st_OSSL_PROPERTY_DEFINITION* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROPERTY_DEFINITION* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #11
  %1 = bitcast i8* %call to %struct.ossl_property_definition_st*
  ret %struct.ossl_property_definition_st* %1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #3

declare void @OPENSSL_sk_sort(%struct.stack_st* noundef) local_unnamed_addr #3

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #3

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncasecmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{!6, !6, i64 0}
!9 = !{!10, !6, i64 8}
!10 = !{!"ossl_property_definition_st", !11, i64 0, !6, i64 4, !6, i64 8, !11, i64 12, !6, i64 16}
!11 = !{!"int", !6, i64 0}
!12 = !{!10, !11, i64 0}
!13 = !{!10, !6, i64 4}
!14 = !{!11, !11, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{i64 0, i64 4, !14, i64 4, i64 4, !8, i64 8, i64 4, !8, i64 12, i64 4, !14, i64 16, i64 8, !19, i64 16, i64 4, !14}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !6, i64 0}
!21 = distinct !{!21, !16}
!22 = !{!23, !11, i64 0}
!23 = !{!"ossl_property_list_st", !11, i64 0, !11, i64 4, !6, i64 8}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
