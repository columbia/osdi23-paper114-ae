; ModuleID = 'crypto/x509/x_name.c'
source_filename = "crypto/x509/x_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.ASN1_EXTERN_FUNCS_st = type { i8*, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, i32 (%struct.ASN1_VALUE_st**, i8**, i64, %struct.ASN1_ITEM_st*, i32, i32, i8, %struct.ASN1_TLC_st*)*, i32 (%struct.ASN1_VALUE_st**, i8**, %struct.ASN1_ITEM_st*, i32, i32)*, i32 (%struct.bio_st*, %struct.ASN1_VALUE_st**, i32, i8*, %struct.asn1_pctx_st*)*, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ASN1_VALUE_st**, i8**, i64, %struct.ASN1_ITEM_st*, i32, i32, i8, %struct.ASN1_TLC_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.ASN1_VALUE_st = type opaque
%struct.ASN1_TLC_st = type { i8, i32, i64, i32, i32, i32 }
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type { i64, i64, i64, i64, i64 }
%struct.ossl_lib_ctx_st = type opaque
%struct.X509_name_entry_st = type { %struct.asn1_object_st*, %struct.asn1_string_st*, i32, i32 }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.stack_st = type opaque
%union.anon = type { %struct.stack_st_STACK_OF_X509_NAME_ENTRY* }
%struct.stack_st_STACK_OF_X509_NAME_ENTRY = type opaque
%union.anon.0 = type { %struct.X509_name_st* }
%struct.stack_st_ASN1_VALUE = type opaque
%union.anon.1 = type { %struct.stack_st_STACK_OF_X509_NAME_ENTRY* }

@X509_NAME_ENTRY_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @X509_NAME_ENTRY_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [16 x i8] c"X509_NAME_ENTRY\00", align 1
@X509_NAME_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 4, i64 16, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* bitcast (%struct.ASN1_EXTERN_FUNCS_st* @x509_name_ff to i8*), i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0) }, align 8
@x509_name_ff = internal constant %struct.ASN1_EXTERN_FUNCS_st { i8* null, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* @x509_name_ex_new, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* @x509_name_ex_free, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* null, i32 (%struct.ASN1_VALUE_st**, i8**, i64, %struct.ASN1_ITEM_st*, i32, i32, i8, %struct.ASN1_TLC_st*)* @x509_name_ex_d2i, i32 (%struct.ASN1_VALUE_st**, i8**, %struct.ASN1_ITEM_st*, i32, i32)* @x509_name_ex_i2d, i32 (%struct.bio_st*, %struct.ASN1_VALUE_st**, i32, i8*, %struct.asn1_pctx_st*)* @x509_name_ex_print, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, %struct.ossl_lib_ctx_st*, i8*)* null, i32 (%struct.ASN1_VALUE_st**, i8**, i64, %struct.ASN1_ITEM_st*, i32, i32, i8, %struct.ASN1_TLC_st*, %struct.ossl_lib_ctx_st*, i8*)* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"X509_NAME\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"crypto/x509/x_name.c\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@__func__.X509_NAME_print = private unnamed_addr constant [16 x i8] c"X509_NAME_print\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@X509_NAME_ENTRY_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_PRINTABLE_it }], align 16
@__func__.x509_name_ex_new = private unnamed_addr constant [17 x i8] c"x509_name_ex_new\00", align 1
@__func__.x509_name_ex_d2i = private unnamed_addr constant [17 x i8] c"x509_name_ex_d2i\00", align 1
@X509_NAME_INTERNAL_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @X509_NAME_INTERNAL_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0) }, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"X509_NAME_INTERNAL\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@X509_NAME_INTERNAL_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_NAME_ENTRIES_it }, align 8
@X509_NAME_ENTRIES_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @X509_NAME_ENTRIES_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0) }, align 8
@.str.10 = private unnamed_addr constant [18 x i8] c"X509_NAME_ENTRIES\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"RDNS\00", align 1
@X509_NAME_ENTRIES_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 2, i64 0, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_NAME_ENTRY_it }, align 8
@__func__.x509_name_canon = private unnamed_addr constant [16 x i8] c"x509_name_canon\00", align 1
@__func__.x509_name_encode = private unnamed_addr constant [17 x i8] c"x509_name_encode\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @X509_NAME_ENTRY_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @X509_NAME_ENTRY_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_name_entry_st* @d2i_X509_NAME_ENTRY(%struct.X509_name_entry_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_name_entry_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @X509_NAME_ENTRY_it.local_it) #5
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.X509_name_entry_st*
  ret %struct.X509_name_entry_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_X509_NAME_ENTRY(%struct.X509_name_entry_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_name_entry_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @X509_NAME_ENTRY_it.local_it) #5
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.X509_name_entry_st* @X509_NAME_ENTRY_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @X509_NAME_ENTRY_it.local_it) #5
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.X509_name_entry_st*
  ret %struct.X509_name_entry_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @X509_NAME_ENTRY_free(%struct.X509_name_entry_st* noundef %a) #1 {
entry:
  %0 = bitcast %struct.X509_name_entry_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @X509_NAME_ENTRY_it.local_it) #5
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.X509_name_entry_st* @X509_NAME_ENTRY_dup(%struct.X509_name_entry_st* noundef %x) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_name_entry_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @X509_NAME_ENTRY_it.local_it, i8* noundef %0) #5
  %1 = bitcast i8* %call1 to %struct.X509_name_entry_st*
  ret %struct.X509_name_entry_st* %1
}

declare i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @X509_NAME_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @X509_NAME_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_name_st* @d2i_X509_NAME(%struct.X509_name_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_name_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @X509_NAME_it.local_it) #5
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.X509_name_st*
  ret %struct.X509_name_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_X509_NAME(%struct.X509_name_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_name_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @X509_NAME_it.local_it) #5
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_name_st* @X509_NAME_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @X509_NAME_it.local_it) #5
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.X509_name_st*
  ret %struct.X509_name_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @X509_NAME_free(%struct.X509_name_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_name_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @X509_NAME_it.local_it) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef %x) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_name_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @X509_NAME_it.local_it, i8* noundef %0) #5
  %1 = bitcast i8* %call1 to %struct.X509_name_st*
  ret %struct.X509_name_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_NAME_set(%struct.X509_name_st** nocapture noundef %xn, %struct.X509_name_st* noundef %name) local_unnamed_addr #1 {
entry:
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %xn, align 8, !tbaa !4
  %cmp = icmp eq %struct.X509_name_st* %0, %name
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmp1 = icmp ne %struct.X509_name_st* %name, null
  %conv = zext i1 %cmp1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef %name) #6
  %cmp2 = icmp eq %struct.X509_name_st* %call, null
  br i1 %cmp2, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %1 = load %struct.X509_name_st*, %struct.X509_name_st** %xn, align 8, !tbaa !4
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %1) #6
  store %struct.X509_name_st* %call, %struct.X509_name_st** %xn, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end5, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 1, %if.end5 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define i32 @X509_NAME_print(%struct.bio_st* noundef %bp, %struct.X509_name_st* noundef %name, i32 noundef %obase) local_unnamed_addr #1 {
entry:
  %call = tail call i8* @X509_NAME_oneline(%struct.X509_name_st* noundef %name, i8* noundef null, i32 noundef 0) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i8, i8* %call, align 1, !tbaa !8
  %cmp1 = icmp eq i8 %0, 0
  br i1 %cmp1, label %cleanup.sink.split, label %if.end4

if.end4:                                          ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 1
  br label %for.cond

for.cond:                                         ; preds = %if.end51, %if.end4
  %c.0 = phi i8* [ %add.ptr, %if.end4 ], [ %c.188, %if.end51 ]
  %s.0 = phi i8* [ %add.ptr, %if.end4 ], [ %incdec.ptr, %if.end51 ]
  %1 = load i8, i8* %s.0, align 1, !tbaa !8
  %cmp6 = icmp eq i8 %1, 47
  br i1 %cmp6, label %land.lhs.true, label %lor.lhs.false24

land.lhs.true:                                    ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %s.0, i64 1
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv8 = sext i8 %2 to i32
  %call9 = tail call i32 @ossl_ctype_check(i32 noundef %conv8, i32 noundef 2) #5
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %lor.lhs.false24thread-pre-split, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true
  %arrayidx11 = getelementptr inbounds i8, i8* %s.0, i64 2
  %3 = load i8, i8* %arrayidx11, align 1, !tbaa !8
  %cmp13 = icmp eq i8 %3, 61
  br i1 %cmp13, label %if.then28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true10
  %conv12 = sext i8 %3 to i32
  %call17 = tail call i32 @ossl_ctype_check(i32 noundef %conv12, i32 noundef 2) #5
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %lor.lhs.false24thread-pre-split, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %lor.lhs.false
  %arrayidx20 = getelementptr inbounds i8, i8* %s.0, i64 3
  %4 = load i8, i8* %arrayidx20, align 1, !tbaa !8
  %cmp22 = icmp eq i8 %4, 61
  br i1 %cmp22, label %if.then28, label %lor.lhs.false24thread-pre-split

lor.lhs.false24thread-pre-split:                  ; preds = %land.lhs.true, %lor.lhs.false, %land.lhs.true19
  %.pr = load i8, i8* %s.0, align 1, !tbaa !8
  br label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false24thread-pre-split, %for.cond
  %5 = phi i8 [ %.pr, %lor.lhs.false24thread-pre-split ], [ %1, %for.cond ]
  %cmp26 = icmp eq i8 %5, 0
  br i1 %cmp26, label %if.then28, label %if.end51

if.then28:                                        ; preds = %lor.lhs.false24, %land.lhs.true19, %land.lhs.true10
  %sub.ptr.lhs.cast = ptrtoint i8* %s.0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %c.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv29 = trunc i64 %sub.ptr.sub to i32
  %call30 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef %c.0, i32 noundef %conv29) #5
  %cmp31.not = icmp eq i32 %call30, %conv29
  br i1 %cmp31.not, label %if.end34, label %err

if.end34:                                         ; preds = %if.then28
  %add.ptr35 = getelementptr inbounds i8, i8* %s.0, i64 1
  %6 = load i8, i8* %s.0, align 1, !tbaa !8
  %cmp37.not = icmp eq i8 %6, 0
  br i1 %cmp37.not, label %cleanup.sink.split, label %if.then39

if.then39:                                        ; preds = %if.end34
  %call40 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 noundef 2) #5
  %cmp41.not = icmp eq i32 %call40, 2
  br i1 %cmp41.not, label %if.end46, label %err

if.end46:                                         ; preds = %if.then39
  %.pre.pre = load i8, i8* %s.0, align 1, !tbaa !8
  %cmp48 = icmp eq i8 %.pre.pre, 0
  br i1 %cmp48, label %cleanup.sink.split, label %if.end51

if.end51:                                         ; preds = %lor.lhs.false24, %if.end46
  %c.188 = phi i8* [ %add.ptr35, %if.end46 ], [ %c.0, %lor.lhs.false24 ]
  %incdec.ptr = getelementptr inbounds i8, i8* %s.0, i64 1
  br label %for.cond

err:                                              ; preds = %if.then39, %if.then28
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 541, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.X509_NAME_print, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524295, i8* noundef null) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end46, %if.end34, %if.end, %err
  %.sink = phi i32 [ 542, %err ], [ 510, %if.end ], [ 538, %if.end34 ], [ 538, %if.end46 ]
  %retval.0.ph = phi i32 [ 0, %err ], [ 1, %if.end ], [ 1, %if.end34 ], [ 1, %if.end46 ]
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

declare i8* @X509_NAME_oneline(%struct.X509_name_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_ctype_check(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_NAME_get0_der(%struct.X509_name_st* noundef %nm, i8** noundef writeonly %pder, i64* noundef writeonly %pderlen) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @i2d_X509_NAME(%struct.X509_name_st* noundef %nm, i8** noundef null) #6
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq i8** %pder, null
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %bytes = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %nm, i64 0, i32 2
  %0 = load %struct.buf_mem_st*, %struct.buf_mem_st** %bytes, align 8, !tbaa !9
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %0, i64 0, i32 1
  %1 = load i8*, i8** %data, align 8, !tbaa !12
  store i8* %1, i8** %pder, align 8, !tbaa !4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %cmp4.not = icmp eq i64* %pderlen, null
  br i1 %cmp4.not, label %return, label %if.then5

if.then5:                                         ; preds = %if.end3
  %bytes6 = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %nm, i64 0, i32 2
  %2 = load %struct.buf_mem_st*, %struct.buf_mem_st** %bytes6, align 8, !tbaa !9
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %2, i64 0, i32 0
  %3 = load i64, i64* %length, align 8, !tbaa !15
  store i64 %3, i64* %pderlen, align 8, !tbaa !16
  br label %return

return:                                           ; preds = %if.end3, %if.then5, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then5 ], [ 1, %if.end3 ]
  ret i32 %retval.0
}

declare %struct.ASN1_ITEM_st* @ASN1_OBJECT_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_PRINTABLE_it() #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @x509_name_ex_new(%struct.ASN1_VALUE_st** nocapture noundef writeonly %val, %struct.ASN1_ITEM_st* nocapture noundef readnone %it) #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 40, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 92) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup.critedge, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %0 = bitcast i8* %call to %struct.stack_st**
  store %struct.stack_st* %call1, %struct.stack_st** %0, align 8, !tbaa !17
  %cmp2 = icmp eq %struct.stack_st* %call1, null
  br i1 %cmp2, label %if.then9, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.buf_mem_st* @BUF_MEM_new() #5
  %bytes = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %bytes to %struct.buf_mem_st**
  store %struct.buf_mem_st* %call5, %struct.buf_mem_st** %1, align 8, !tbaa !9
  %cmp6 = icmp eq %struct.buf_mem_st* %call5, null
  br i1 %cmp6, label %if.then9, label %if.end8

if.end8:                                          ; preds = %if.end4
  %modified = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %modified to i32*
  store i32 1, i32* %2, align 8, !tbaa !18
  %3 = bitcast %struct.ASN1_VALUE_st** %val to i8**
  store i8* %call, i8** %3, align 8, !tbaa !4
  br label %cleanup

if.then9:                                         ; preds = %if.end, %if.end4
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.x509_name_ex_new, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #5
  %entries10 = bitcast i8* %call to %struct.stack_st_X509_NAME_ENTRY**
  %4 = load %struct.stack_st_X509_NAME_ENTRY*, %struct.stack_st_X509_NAME_ENTRY** %entries10, align 8, !tbaa !17
  %call11 = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %4) #6
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call11) #5
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 108) #5
  br label %cleanup

cleanup.critedge:                                 ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.x509_name_ex_new, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %if.then9, %if.end8
  %retval.0 = phi i32 [ 1, %if.end8 ], [ 0, %if.then9 ], [ 0, %cleanup.critedge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @x509_name_ex_free(%struct.ASN1_VALUE_st** noundef %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it) #1 {
entry:
  %cmp = icmp eq %struct.ASN1_VALUE_st** %pval, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ASN1_VALUE_st* %0, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %1 = bitcast %struct.ASN1_VALUE_st* %0 to %struct.X509_name_st*
  %bytes = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %1, i64 0, i32 2
  %2 = load %struct.buf_mem_st*, %struct.buf_mem_st** %bytes, align 8, !tbaa !9
  tail call void @BUF_MEM_free(%struct.buf_mem_st* noundef %2) #5
  %entries = bitcast %struct.ASN1_VALUE_st* %0 to %struct.stack_st_X509_NAME_ENTRY**
  %3 = load %struct.stack_st_X509_NAME_ENTRY*, %struct.stack_st_X509_NAME_ENTRY** %entries, align 8, !tbaa !17
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %3) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.X509_name_entry_st*)* @X509_NAME_ENTRY_free to void (i8*)*)) #5
  %canon_enc = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %1, i64 0, i32 3
  %4 = load i8*, i8** %canon_enc, align 8, !tbaa !19
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 123) #5
  %5 = bitcast %struct.ASN1_VALUE_st* %0 to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 124) #5
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @x509_name_ex_d2i(%struct.ASN1_VALUE_st** noundef %val, i8** nocapture noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i32 noundef %tag, i32 noundef %aclass, i8 noundef signext %opt, %struct.ASN1_TLC_st* noundef %ctx) #1 {
entry:
  %p = alloca i8*, align 8
  %intname = alloca %union.anon, align 8
  %nm = alloca %union.anon.0, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = load i8*, i8** %in, align 8, !tbaa !4
  store i8* %1, i8** %p, align 8, !tbaa !4
  %2 = bitcast %union.anon* %intname to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  %3 = bitcast %union.anon* %intname to i64*
  store i64 0, i64* %3, align 8
  %4 = bitcast %union.anon.0* %nm to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7
  %5 = bitcast %union.anon.0* %nm to i64*
  store i64 0, i64* %5, align 8
  %6 = icmp slt i64 %len, 1048576
  %spec.store.select = select i1 %6, i64 %len, i64 1048576
  %a = bitcast %union.anon* %intname to %struct.ASN1_VALUE_st**
  %call2 = call i32 @ASN1_item_ex_d2i(%struct.ASN1_VALUE_st** noundef nonnull %a, i8** noundef nonnull %p, i64 noundef %spec.store.select, %struct.ASN1_ITEM_st* noundef nonnull @X509_NAME_INTERNAL_it.local_it, i32 noundef %tag, i32 noundef %aclass, i8 noundef signext %opt, %struct.ASN1_TLC_st* noundef %ctx) #5
  %cmp3 = icmp slt i32 %call2, 1
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %entry
  %7 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %val, align 8, !tbaa !4
  %tobool.not = icmp eq %struct.ASN1_VALUE_st* %7, null
  br i1 %tobool.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end5
  call void @x509_name_ex_free(%struct.ASN1_VALUE_st** noundef nonnull %val, %struct.ASN1_ITEM_st* noundef null) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end5
  %a8 = bitcast %union.anon.0* %nm to %struct.ASN1_VALUE_st**
  %call9 = call i32 @x509_name_ex_new(%struct.ASN1_VALUE_st** noundef nonnull %a8, %struct.ASN1_ITEM_st* noundef null) #6
  %tobool10.not = icmp eq i32 %call9, 0
  %x56.phi.trans.insert = getelementptr inbounds %union.anon.0, %union.anon.0* %nm, i64 0, i32 0
  %.pre = load %struct.X509_name_st*, %struct.X509_name_st** %x56.phi.trans.insert, align 8, !tbaa !8
  br i1 %tobool10.not, label %err, label %if.end12

if.end12:                                         ; preds = %if.end7
  %bytes = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %.pre, i64 0, i32 2
  %8 = load %struct.buf_mem_st*, %struct.buf_mem_st** %bytes, align 8, !tbaa !9
  %9 = load i8*, i8** %p, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call13 = call i64 @BUF_MEM_grow(%struct.buf_mem_st* noundef %8, i64 noundef %sub.ptr.sub) #5
  %tobool14.not = icmp eq i64 %call13, 0
  br i1 %tobool14.not, label %if.then58, label %if.end16

if.end16:                                         ; preds = %if.end12
  %10 = load %struct.buf_mem_st*, %struct.buf_mem_st** %bytes, align 8, !tbaa !9
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %10, i64 0, i32 1
  %11 = load i8*, i8** %data, align 8, !tbaa !12
  %12 = load i8*, i8** %p, align 8, !tbaa !4
  %sub.ptr.lhs.cast19 = ptrtoint i8* %12 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast
  %call22 = call i8* @memcpy(i8* noundef %11, i8* noundef %1, i64 noundef %sub.ptr.sub21) #5
  %s = getelementptr inbounds %union.anon, %union.anon* %intname, i64 0, i32 0
  %13 = load %struct.stack_st_STACK_OF_X509_NAME_ENTRY*, %struct.stack_st_STACK_OF_X509_NAME_ENTRY** %s, align 8, !tbaa !8
  %call2398 = call fastcc i32 @sk_STACK_OF_X509_NAME_ENTRY_num(%struct.stack_st_STACK_OF_X509_NAME_ENTRY* noundef %13) #6
  %cmp2499 = icmp sgt i32 %call2398, 0
  br i1 %cmp2499, label %for.body.lr.ph, label %for.end47

for.body.lr.ph:                                   ; preds = %if.end16
  %entries35 = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %.pre, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc45
  %i.0100 = phi i32 [ 0, %for.body.lr.ph ], [ %inc46, %for.inc45 ]
  %14 = load %struct.stack_st_STACK_OF_X509_NAME_ENTRY*, %struct.stack_st_STACK_OF_X509_NAME_ENTRY** %s, align 8, !tbaa !8
  %call26 = call fastcc %struct.stack_st_X509_NAME_ENTRY* @sk_STACK_OF_X509_NAME_ENTRY_value(%struct.stack_st_STACK_OF_X509_NAME_ENTRY* noundef %14, i32 noundef %i.0100) #6
  %call28 = call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %call26) #6
  %call2995 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call28) #5
  %cmp3096 = icmp sgt i32 %call2995, 0
  br i1 %cmp3096, label %for.body31, label %for.inc45

for.body31:                                       ; preds = %for.body, %if.end41
  %j.097 = phi i32 [ %inc, %if.end41 ], [ 0, %for.body ]
  %call33 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call28, i32 noundef %j.097) #5
  %set = getelementptr inbounds i8, i8* %call33, i64 16
  %15 = bitcast i8* %set to i32*
  store i32 %i.0100, i32* %15, align 8, !tbaa !20
  %16 = load %struct.stack_st_X509_NAME_ENTRY*, %struct.stack_st_X509_NAME_ENTRY** %entries35, align 8, !tbaa !17
  %call36 = call fastcc %struct.stack_st* @ossl_check_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %16) #6
  %call38 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call36, i8* noundef %call33) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then58, label %if.end41

if.end41:                                         ; preds = %for.body31
  %call42 = call fastcc %struct.stack_st* @ossl_check_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %call26) #6
  %call44 = call i8* @OPENSSL_sk_set(%struct.stack_st* noundef %call42, i32 noundef %j.097, i8* noundef null) #5
  %inc = add nuw nsw i32 %j.097, 1
  %call29 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call28) #5
  %cmp30 = icmp slt i32 %inc, %call29
  br i1 %cmp30, label %for.body31, label %for.inc45, !llvm.loop !22

for.inc45:                                        ; preds = %if.end41, %for.body
  %inc46 = add nuw nsw i32 %i.0100, 1
  %17 = load %struct.stack_st_STACK_OF_X509_NAME_ENTRY*, %struct.stack_st_STACK_OF_X509_NAME_ENTRY** %s, align 8, !tbaa !8
  %call23 = call fastcc i32 @sk_STACK_OF_X509_NAME_ENTRY_num(%struct.stack_st_STACK_OF_X509_NAME_ENTRY* noundef %17) #6
  %cmp24 = icmp slt i32 %inc46, %call23
  br i1 %cmp24, label %for.body, label %for.end47, !llvm.loop !24

for.end47:                                        ; preds = %for.inc45, %if.end16
  %call49 = call fastcc i32 @x509_name_canon(%struct.X509_name_st* noundef %.pre) #6
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err, label %if.end52

if.end52:                                         ; preds = %for.end47
  %18 = load %struct.stack_st_STACK_OF_X509_NAME_ENTRY*, %struct.stack_st_STACK_OF_X509_NAME_ENTRY** %s, align 8, !tbaa !8
  call fastcc void @sk_STACK_OF_X509_NAME_ENTRY_pop_free(%struct.stack_st_STACK_OF_X509_NAME_ENTRY* noundef %18, void (%struct.stack_st_X509_NAME_ENTRY*)* noundef nonnull @local_sk_X509_NAME_ENTRY_free) #6
  %modified = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %.pre, i64 0, i32 1
  store i32 0, i32* %modified, align 8, !tbaa !18
  %19 = bitcast %struct.ASN1_VALUE_st** %val to %struct.X509_name_st**
  store %struct.X509_name_st* %.pre, %struct.X509_name_st** %19, align 8, !tbaa !4
  %20 = load i8*, i8** %p, align 8, !tbaa !4
  store i8* %20, i8** %in, align 8, !tbaa !4
  br label %cleanup

err:                                              ; preds = %if.end7, %for.end47
  %cmp57.not = icmp eq %struct.X509_name_st* %.pre, null
  br i1 %cmp57.not, label %if.end60, label %if.then58

if.then58:                                        ; preds = %for.body31, %if.end12, %err
  call void @X509_NAME_free(%struct.X509_name_st* noundef nonnull %.pre) #6
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %err
  %s61 = getelementptr inbounds %union.anon, %union.anon* %intname, i64 0, i32 0
  %21 = load %struct.stack_st_STACK_OF_X509_NAME_ENTRY*, %struct.stack_st_STACK_OF_X509_NAME_ENTRY** %s61, align 8, !tbaa !8
  call fastcc void @sk_STACK_OF_X509_NAME_ENTRY_pop_free(%struct.stack_st_STACK_OF_X509_NAME_ENTRY* noundef %21, void (%struct.stack_st_X509_NAME_ENTRY*)* noundef nonnull @local_sk_X509_NAME_ENTRY_pop_free) #6
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 207, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.x509_name_ex_d2i, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524554, i8* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end60, %if.end52
  %retval.0 = phi i32 [ 0, %if.end60 ], [ 1, %if.end52 ], [ %call2, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @x509_name_ex_i2d(%struct.ASN1_VALUE_st** nocapture noundef readonly %val, i8** noundef %out, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i32 noundef %tag, i32 noundef %aclass) #1 {
entry:
  %0 = bitcast %struct.ASN1_VALUE_st** %val to %struct.X509_name_st**
  %1 = load %struct.X509_name_st*, %struct.X509_name_st** %0, align 8, !tbaa !4
  %modified = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %1, i64 0, i32 1
  %2 = load i32, i32* %modified, align 8, !tbaa !18
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @x509_name_encode(%struct.X509_name_st* noundef nonnull %1) #6
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %call2 = tail call fastcc i32 @x509_name_canon(%struct.X509_name_st* noundef nonnull %1) #6
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %bytes = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %1, i64 0, i32 2
  %3 = load %struct.buf_mem_st*, %struct.buf_mem_st** %bytes, align 8, !tbaa !9
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %3, i64 0, i32 0
  %4 = load i64, i64* %length, align 8, !tbaa !15
  %conv = trunc i64 %4 to i32
  %cmp7.not = icmp eq i8** %out, null
  br i1 %cmp7.not, label %cleanup, label %if.then9

if.then9:                                         ; preds = %if.end6
  %5 = load i8*, i8** %out, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %3, i64 0, i32 1
  %6 = load i8*, i8** %data, align 8, !tbaa !12
  %sext = shl i64 %4, 32
  %conv11 = ashr exact i64 %sext, 32
  %call12 = tail call i8* @memcpy(i8* noundef %5, i8* noundef %6, i64 noundef %conv11) #5
  %7 = load i8*, i8** %out, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %conv11
  store i8* %add.ptr, i8** %out, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then9, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %conv, %if.then9 ], [ %conv, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @x509_name_ex_print(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st** nocapture noundef readonly %pval, i32 noundef %indent, i8* nocapture noundef readnone %fname, %struct.asn1_pctx_st* nocapture noundef readonly %pctx) #1 {
entry:
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.X509_name_st**
  %1 = load %struct.X509_name_st*, %struct.X509_name_st** %0, align 8, !tbaa !4
  %nm_flags = getelementptr inbounds %struct.asn1_pctx_st, %struct.asn1_pctx_st* %pctx, i64 0, i32 1
  %2 = load i64, i64* %nm_flags, align 8, !tbaa !25
  %call = tail call i32 @X509_NAME_print_ex(%struct.bio_st* noundef %out, %struct.X509_name_st* noundef %1, i32 noundef %indent, i64 noundef %2) #5
  %cmp.inv = icmp sgt i32 %call, 0
  %. = select i1 %cmp.inv, i32 2, i32 0
  ret i32 %.
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare %struct.buf_mem_st* @BUF_MEM_new() local_unnamed_addr #2

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509_NAME_ENTRY* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @BUF_MEM_free(%struct.buf_mem_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare i32 @ASN1_item_ex_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef, i32 noundef, i32 noundef, i8 noundef signext, %struct.ASN1_TLC_st* noundef) local_unnamed_addr #2

declare i64 @BUF_MEM_grow(%struct.buf_mem_st* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_STACK_OF_X509_NAME_ENTRY_num(%struct.stack_st_STACK_OF_X509_NAME_ENTRY* noundef %sk) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_STACK_OF_X509_NAME_ENTRY* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_X509_NAME_ENTRY* @sk_STACK_OF_X509_NAME_ENTRY_value(%struct.stack_st_STACK_OF_X509_NAME_ENTRY* noundef %sk, i32 noundef %idx) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_STACK_OF_X509_NAME_ENTRY* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #5
  %1 = bitcast i8* %call to %struct.stack_st_X509_NAME_ENTRY*
  ret %struct.stack_st_X509_NAME_ENTRY* %1
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509_NAME_ENTRY* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_set(%struct.stack_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @x509_name_canon(%struct.X509_name_st* nocapture noundef %a) unnamed_addr #1 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %canon_enc = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %a, i64 0, i32 3
  %1 = load i8*, i8** %canon_enc, align 8, !tbaa !19
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 312) #5
  store i8* null, i8** %canon_enc, align 8, !tbaa !19
  %entries3 = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %a, i64 0, i32 0
  %2 = load %struct.stack_st_X509_NAME_ENTRY*, %struct.stack_st_X509_NAME_ENTRY** %entries3, align 8, !tbaa !17
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %2) #6
  %call4 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %canon_enclen = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %a, i64 0, i32 4
  store i32 0, i32* %canon_enclen, align 8, !tbaa !27
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call fastcc %struct.stack_st_STACK_OF_X509_NAME_ENTRY* @sk_STACK_OF_X509_NAME_ENTRY_new_null() #6
  %cmp6 = icmp eq %struct.stack_st_STACK_OF_X509_NAME_ENTRY* %call5, null
  br i1 %cmp6, label %if.then7, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %3 = load %struct.stack_st_X509_NAME_ENTRY*, %struct.stack_st_X509_NAME_ENTRY** %entries3, align 8, !tbaa !17
  %call10108 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %3) #6
  %call11109 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call10108) #5
  %cmp12110 = icmp sgt i32 %call11109, 0
  br i1 %cmp12110, label %for.body, label %for.end

if.then7:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 321, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.x509_name_canon, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #5
  br label %err

for.cond:                                         ; preds = %if.end43
  %4 = load %struct.stack_st_X509_NAME_ENTRY*, %struct.stack_st_X509_NAME_ENTRY** %entries3, align 8, !tbaa !17
  %call10 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %4) #6
  %call11 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call10) #5
  %cmp12 = icmp slt i32 %inc, %call11
  br i1 %cmp12, label %for.body, label %for.end, !llvm.loop !28

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %set.0113 = phi i32 [ %set.1, %for.cond ], [ -1, %for.cond.preheader ]
  %i.0112 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %entries.0111 = phi %struct.stack_st_X509_NAME_ENTRY* [ %entries.1, %for.cond ], [ null, %for.cond.preheader ]
  %5 = load %struct.stack_st_X509_NAME_ENTRY*, %struct.stack_st_X509_NAME_ENTRY** %entries3, align 8, !tbaa !17
  %call14 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %5) #6
  %call15 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call14, i32 noundef %i.0112) #5
  %set16 = getelementptr inbounds i8, i8* %call15, i64 16
  %6 = bitcast i8* %set16 to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !20
  %cmp17.not = icmp eq i32 %7, %set.0113
  br i1 %cmp17.not, label %if.end28, label %if.then18

if.then18:                                        ; preds = %for.body
  %call19 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %8 = bitcast %struct.stack_st* %call19 to %struct.stack_st_X509_NAME_ENTRY*
  %cmp20 = icmp eq %struct.stack_st* %call19, null
  br i1 %cmp20, label %err, label %if.end22

if.end22:                                         ; preds = %if.then18
  %call23 = tail call fastcc i32 @sk_STACK_OF_X509_NAME_ENTRY_push(%struct.stack_st_STACK_OF_X509_NAME_ENTRY* noundef nonnull %call5, %struct.stack_st_X509_NAME_ENTRY* noundef nonnull %8) #6
  %tobool.not = icmp eq i32 %call23, 0
  br i1 %tobool.not, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end22
  %9 = bitcast %struct.stack_st* %call19 to %struct.stack_st_X509_NAME_ENTRY*
  %call25 = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef nonnull %9) #6
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call25) #5
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 332, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.x509_name_canon, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end26:                                         ; preds = %if.end22
  %10 = load i32, i32* %6, align 8, !tbaa !20
  br label %if.end28

if.end28:                                         ; preds = %if.end26, %for.body
  %entries.1 = phi %struct.stack_st_X509_NAME_ENTRY* [ %8, %if.end26 ], [ %entries.0111, %for.body ]
  %set.1 = phi i32 [ %10, %if.end26 ], [ %set.0113, %for.body ]
  %call29 = tail call %struct.X509_name_entry_st* @X509_NAME_ENTRY_new() #6
  %cmp30 = icmp eq %struct.X509_name_entry_st* %call29, null
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 339, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.x509_name_canon, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end32:                                         ; preds = %if.end28
  %object = bitcast i8* %call15 to %struct.asn1_object_st**
  %11 = load %struct.asn1_object_st*, %struct.asn1_object_st** %object, align 8, !tbaa !29
  %call33 = tail call %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef %11) #5
  %object34 = getelementptr inbounds %struct.X509_name_entry_st, %struct.X509_name_entry_st* %call29, i64 0, i32 0
  store %struct.asn1_object_st* %call33, %struct.asn1_object_st** %object34, align 8, !tbaa !29
  %cmp36 = icmp eq %struct.asn1_object_st* %call33, null
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end32
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 344, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.x509_name_canon, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end38:                                         ; preds = %if.end32
  %value = getelementptr inbounds %struct.X509_name_entry_st, %struct.X509_name_entry_st* %call29, i64 0, i32 1
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %value, align 8, !tbaa !30
  %value39 = getelementptr inbounds i8, i8* %call15, i64 8
  %13 = bitcast i8* %value39 to %struct.asn1_string_st**
  %14 = load %struct.asn1_string_st*, %struct.asn1_string_st** %13, align 8, !tbaa !30
  %call40 = tail call fastcc i32 @asn1_string_canon(%struct.asn1_string_st* noundef %12, %struct.asn1_string_st* noundef %14) #6
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %if.end43

if.end43:                                         ; preds = %if.end38
  %call44 = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %entries.1) #6
  %15 = bitcast %struct.X509_name_entry_st* %call29 to i8*
  %call46 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call44, i8* noundef nonnull %15) #5
  %tobool47.not = icmp eq i32 %call46, 0
  %inc = add nuw nsw i32 %i.0112, 1
  br i1 %tobool47.not, label %if.then48, label %for.cond

if.then48:                                        ; preds = %if.end43
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 350, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.x509_name_canon, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #5
  br label %err

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %call50 = tail call fastcc i32 @i2d_name_canon(%struct.stack_st_STACK_OF_X509_NAME_ENTRY* noundef nonnull %call5, i8** noundef null) #6
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %err, label %if.end53

if.end53:                                         ; preds = %for.end
  %canon_enclen54 = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %a, i64 0, i32 4
  store i32 %call50, i32* %canon_enclen54, align 8, !tbaa !27
  %conv105 = zext i32 %call50 to i64
  %call56 = tail call i8* @CRYPTO_malloc(i64 noundef %conv105, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 362) #5
  store i8* %call56, i8** %p, align 8, !tbaa !4
  %cmp57 = icmp eq i8* %call56, null
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end53
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 364, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.x509_name_canon, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end60:                                         ; preds = %if.end53
  store i8* %call56, i8** %canon_enc, align 8, !tbaa !19
  %call62 = call fastcc i32 @i2d_name_canon(%struct.stack_st_STACK_OF_X509_NAME_ENTRY* noundef nonnull %call5, i8** noundef nonnull %p) #6
  br label %err

err:                                              ; preds = %if.end38, %if.then18, %for.end, %if.end60, %if.then59, %if.then48, %if.then37, %if.then31, %if.then24, %if.then7
  %tmpentry.1 = phi %struct.X509_name_entry_st* [ null, %if.then7 ], [ null, %if.then31 ], [ %call29, %if.then37 ], [ %call29, %if.then48 ], [ null, %if.then24 ], [ null, %for.end ], [ null, %if.then59 ], [ null, %if.end60 ], [ %call29, %if.end38 ], [ null, %if.then18 ]
  %ret.0 = phi i32 [ 0, %if.then7 ], [ 0, %if.then31 ], [ 0, %if.then37 ], [ 0, %if.then48 ], [ 0, %if.then24 ], [ 0, %for.end ], [ 0, %if.then59 ], [ 1, %if.end60 ], [ 0, %if.then18 ], [ 0, %if.end38 ]
  call void @X509_NAME_ENTRY_free(%struct.X509_name_entry_st* noundef %tmpentry.1) #6
  call fastcc void @sk_STACK_OF_X509_NAME_ENTRY_pop_free(%struct.stack_st_STACK_OF_X509_NAME_ENTRY* noundef %call5, void (%struct.stack_st_X509_NAME_ENTRY*)* noundef nonnull @local_sk_X509_NAME_ENTRY_pop_free) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %ret.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_STACK_OF_X509_NAME_ENTRY_pop_free(%struct.stack_st_STACK_OF_X509_NAME_ENTRY* noundef %sk, void (%struct.stack_st_X509_NAME_ENTRY*)* noundef %freefunc) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_STACK_OF_X509_NAME_ENTRY* %sk to %struct.stack_st*
  %1 = bitcast void (%struct.stack_st_X509_NAME_ENTRY*)* %freefunc to void (i8*)*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef %1) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @local_sk_X509_NAME_ENTRY_free(%struct.stack_st_X509_NAME_ENTRY* noundef %ne) #1 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %ne) #6
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @local_sk_X509_NAME_ENTRY_pop_free(%struct.stack_st_X509_NAME_ENTRY* noundef %ne) #1 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %ne) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.X509_name_entry_st*)* @X509_NAME_ENTRY_free to void (i8*)*)) #5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @X509_NAME_ENTRIES_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @X509_NAME_ENTRIES_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_STACK_OF_X509_NAME_ENTRY* @sk_STACK_OF_X509_NAME_ENTRY_new_null() unnamed_addr #1 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_STACK_OF_X509_NAME_ENTRY*
  ret %struct.stack_st_STACK_OF_X509_NAME_ENTRY* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_STACK_OF_X509_NAME_ENTRY_push(%struct.stack_st_STACK_OF_X509_NAME_ENTRY* noundef %sk, %struct.stack_st_X509_NAME_ENTRY* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_STACK_OF_X509_NAME_ENTRY* %sk to %struct.stack_st*
  %1 = bitcast %struct.stack_st_X509_NAME_ENTRY* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #5
  ret i32 %call
}

declare %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_string_canon(%struct.asn1_string_st* noundef %out, %struct.asn1_string_st* noundef %in) unnamed_addr #1 {
entry:
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %in, i64 0, i32 1
  %0 = load i32, i32* %type, align 4, !tbaa !31
  %call = tail call i64 @ASN1_tag2bit(i32 noundef %0) #5
  %and = and i64 %call, 10582
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ASN1_STRING_copy(%struct.asn1_string_st* noundef %out, %struct.asn1_string_st* noundef nonnull %in) #5
  %tobool2.not = icmp ne i32 %call1, 0
  %. = zext i1 %tobool2.not to i32
  br label %cleanup

if.end4:                                          ; preds = %entry
  %type5 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %out, i64 0, i32 1
  store i32 12, i32* %type5, align 4, !tbaa !31
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %out, i64 0, i32 2
  %call6 = tail call i32 @ASN1_STRING_to_UTF8(i8** noundef nonnull %data, %struct.asn1_string_st* noundef nonnull %in) #5
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %out, i64 0, i32 0
  store i32 %call6, i32* %length, align 8, !tbaa !33
  %cmp = icmp eq i32 %call6, -1
  br i1 %cmp, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end4
  %cmp12103 = icmp sgt i32 %call6, 0
  br i1 %cmp12103, label %land.rhs.preheader, label %while.end26.thread

land.rhs.preheader:                               ; preds = %if.end9
  %1 = load i8*, i8** %data, align 8, !tbaa !34
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %while.body
  %len.0105 = phi i32 [ %dec, %while.body ], [ %call6, %land.rhs.preheader ]
  %from.0104 = phi i8* [ %incdec.ptr, %while.body ], [ %1, %land.rhs.preheader ]
  %2 = load i8, i8* %from.0104, align 1, !tbaa !8
  %conv = zext i8 %2 to i32
  %call13 = tail call i32 @ossl_ctype_check(i32 noundef %conv, i32 noundef 8) #5
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.rhs18.preheader, label %while.body

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8, i8* %from.0104, i64 1
  %dec = add nsw i32 %len.0105, -1
  %cmp12 = icmp sgt i32 %len.0105, 1
  br i1 %cmp12, label %land.rhs, label %while.end26.thread, !llvm.loop !35

land.rhs18.preheader:                             ; preds = %land.rhs
  %idx.ext126 = zext i32 %len.0105 to i64
  %add.ptr = getelementptr inbounds i8, i8* %from.0104, i64 %idx.ext126
  br label %land.rhs18

land.rhs18:                                       ; preds = %land.rhs18.preheader, %while.body23
  %len.1111 = phi i32 [ %dec25, %while.body23 ], [ %len.0105, %land.rhs18.preheader ]
  %to.0110 = phi i8* [ %arrayidx, %while.body23 ], [ %add.ptr, %land.rhs18.preheader ]
  %arrayidx = getelementptr inbounds i8, i8* %to.0110, i64 -1
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv19 = zext i8 %3 to i32
  %call20 = tail call i32 @ossl_ctype_check(i32 noundef %conv19, i32 noundef 8) #5
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %while.body31.preheader, label %while.body23

while.body23:                                     ; preds = %land.rhs18
  %dec25 = add nsw i32 %len.1111, -1
  %cmp16 = icmp sgt i32 %len.1111, 1
  br i1 %cmp16, label %land.rhs18, label %while.end26.thread, !llvm.loop !36

while.end26.thread:                               ; preds = %while.body, %while.body23, %if.end9
  %4 = load i8*, i8** %data, align 8, !tbaa !34
  br label %while.end58

while.body31.preheader:                           ; preds = %land.rhs18
  %5 = load i8*, i8** %data, align 8, !tbaa !34
  br label %while.body31

while.body31:                                     ; preds = %while.body31.preheader, %if.end57
  %i.0117 = phi i32 [ %i.2, %if.end57 ], [ 0, %while.body31.preheader ]
  %from.1116 = phi i8* [ %from.3, %if.end57 ], [ %from.0104, %while.body31.preheader ]
  %to.1115 = phi i8* [ %to.2, %if.end57 ], [ %5, %while.body31.preheader ]
  %6 = load i8, i8* %from.1116, align 1, !tbaa !8
  %conv32 = zext i8 %6 to i32
  %and33 = and i32 %conv32, 128
  %cmp34 = icmp eq i32 %and33, 0
  br i1 %cmp34, label %if.else, label %if.then36

if.then36:                                        ; preds = %while.body31
  %incdec.ptr37 = getelementptr inbounds i8, i8* %from.1116, i64 1
  store i8 %6, i8* %to.1115, align 1, !tbaa !8
  %inc = add nsw i32 %i.0117, 1
  br label %if.end57

if.else:                                          ; preds = %while.body31
  %call40 = tail call i32 @ossl_ctype_check(i32 noundef %conv32, i32 noundef 8) #5
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.else49, label %if.then42

if.then42:                                        ; preds = %if.else
  store i8 32, i8* %to.1115, align 1, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %do.body, %if.then42
  %from.2 = phi i8* [ %from.1116, %if.then42 ], [ %incdec.ptr44, %do.body ]
  %i.1 = phi i32 [ %i.0117, %if.then42 ], [ %inc45, %do.body ]
  %incdec.ptr44 = getelementptr inbounds i8, i8* %from.2, i64 1
  %inc45 = add nsw i32 %i.1, 1
  %7 = load i8, i8* %incdec.ptr44, align 1, !tbaa !8
  %conv46 = zext i8 %7 to i32
  %call47 = tail call i32 @ossl_ctype_check(i32 noundef %conv46, i32 noundef 8) #5
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end57, label %do.body, !llvm.loop !37

if.else49:                                        ; preds = %if.else
  %8 = load i8, i8* %from.1116, align 1, !tbaa !8
  %conv50 = zext i8 %8 to i32
  %call51 = tail call i32 @ossl_tolower(i32 noundef %conv50) #5
  %conv52 = trunc i32 %call51 to i8
  store i8 %conv52, i8* %to.1115, align 1, !tbaa !8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %from.1116, i64 1
  %inc55 = add nsw i32 %i.0117, 1
  br label %if.end57

if.end57:                                         ; preds = %do.body, %if.else49, %if.then36
  %from.3 = phi i8* [ %incdec.ptr54, %if.else49 ], [ %incdec.ptr37, %if.then36 ], [ %incdec.ptr44, %do.body ]
  %i.2 = phi i32 [ %inc55, %if.else49 ], [ %inc, %if.then36 ], [ %inc45, %do.body ]
  %to.2 = getelementptr inbounds i8, i8* %to.1115, i64 1
  %cmp29 = icmp slt i32 %i.2, %len.1111
  br i1 %cmp29, label %while.body31, label %while.end58.loopexit, !llvm.loop !38

while.end58.loopexit:                             ; preds = %if.end57
  %.pre = load i8*, i8** %data, align 8, !tbaa !34
  br label %while.end58

while.end58:                                      ; preds = %while.end26.thread, %while.end58.loopexit
  %9 = phi i8* [ %.pre, %while.end58.loopexit ], [ %4, %while.end26.thread ]
  %to.1.lcssa = phi i8* [ %to.2, %while.end58.loopexit ], [ %4, %while.end26.thread ]
  %sub.ptr.lhs.cast = ptrtoint i8* %to.1.lcssa to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv60 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv60, i32* %length, align 8, !tbaa !33
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then, %while.end58
  %retval.0 = phi i32 [ 1, %while.end58 ], [ %., %if.then ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @i2d_name_canon(%struct.stack_st_STACK_OF_X509_NAME_ENTRY* noundef %_intname, i8** noundef %in) unnamed_addr #1 {
entry:
  %v = alloca %struct.ASN1_VALUE_st*, align 8
  %0 = bitcast %struct.ASN1_VALUE_st** %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast %struct.stack_st_STACK_OF_X509_NAME_ENTRY* %_intname to %struct.stack_st_ASN1_VALUE*
  %call = call fastcc %struct.stack_st* @ossl_check_const_ASN1_VALUE_sk_type(%struct.stack_st_ASN1_VALUE* noundef %1) #6
  %call121 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %cmp22 = icmp sgt i32 %call121, 0
  br i1 %cmp22, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %2 = bitcast %struct.ASN1_VALUE_st** %v to i8**
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end ]
  %len.023 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end ]
  %call3 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.024) #5
  store i8* %call3, i8** %2, align 8, !tbaa !4
  %call5 = call i32 @ASN1_item_ex_i2d(%struct.ASN1_VALUE_st** noundef nonnull %v, i8** noundef %in, %struct.ASN1_ITEM_st* noundef nonnull @X509_NAME_ENTRIES_it.local_it, i32 noundef -1, i32 noundef -1) #5
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %add = add nsw i32 %call5, %len.023
  %inc = add nuw nsw i32 %i.024, 1
  %call1 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %cleanup, !llvm.loop !39

cleanup:                                          ; preds = %for.body, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %add, %if.end ], [ %call5, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i64 @ASN1_tag2bit(i32 noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_copy(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_to_UTF8(i8** noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @ossl_tolower(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_VALUE_sk_type(%struct.stack_st_ASN1_VALUE* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @ASN1_item_ex_i2d(%struct.ASN1_VALUE_st** noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @x509_name_encode(%struct.X509_name_st* nocapture noundef %a) unnamed_addr #1 {
entry:
  %intname = alloca %union.anon.1, align 8
  %p = alloca i8*, align 8
  %0 = bitcast %union.anon.1* %intname to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %call = tail call fastcc %struct.stack_st_STACK_OF_X509_NAME_ENTRY* @sk_STACK_OF_X509_NAME_ENTRY_new_null() #6
  %s = getelementptr inbounds %union.anon.1, %union.anon.1* %intname, i64 0, i32 0
  store %struct.stack_st_STACK_OF_X509_NAME_ENTRY* %call, %struct.stack_st_STACK_OF_X509_NAME_ENTRY** %s, align 8, !tbaa !8
  %tobool.not = icmp eq %struct.stack_st_STACK_OF_X509_NAME_ENTRY* %call, null
  br i1 %tobool.not, label %memerr, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %entries3 = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %a, i64 0, i32 0
  %2 = load %struct.stack_st_X509_NAME_ENTRY*, %struct.stack_st_X509_NAME_ENTRY** %entries3, align 8, !tbaa !17
  %call466 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %2) #6
  %call567 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call466) #5
  %cmp68 = icmp sgt i32 %call567, 0
  br i1 %cmp68, label %for.body, label %for.end

for.cond:                                         ; preds = %if.end23
  %3 = load %struct.stack_st_X509_NAME_ENTRY*, %struct.stack_st_X509_NAME_ENTRY** %entries3, align 8, !tbaa !17
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %3) #6
  %call5 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #5
  %cmp = icmp slt i32 %inc, %call5
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !40

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %set.071 = phi i32 [ %set.1, %for.cond ], [ -1, %for.cond.preheader ]
  %i.070 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %entries.069 = phi %struct.stack_st_X509_NAME_ENTRY* [ %entries.1, %for.cond ], [ null, %for.cond.preheader ]
  %4 = load %struct.stack_st_X509_NAME_ENTRY*, %struct.stack_st_X509_NAME_ENTRY** %entries3, align 8, !tbaa !17
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %4) #6
  %call8 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call7, i32 noundef %i.070) #5
  %set9 = getelementptr inbounds i8, i8* %call8, i64 16
  %5 = bitcast i8* %set9 to i32*
  %6 = load i32, i32* %5, align 8, !tbaa !20
  %cmp10.not = icmp eq i32 %6, %set.071
  br i1 %cmp10.not, label %if.end23, label %if.then11

if.then11:                                        ; preds = %for.body
  %call12 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %7 = bitcast %struct.stack_st* %call12 to %struct.stack_st_X509_NAME_ENTRY*
  %tobool13.not = icmp eq %struct.stack_st* %call12, null
  br i1 %tobool13.not, label %memerr, label %if.end15

if.end15:                                         ; preds = %if.then11
  %call17 = tail call fastcc i32 @sk_STACK_OF_X509_NAME_ENTRY_push(%struct.stack_st_STACK_OF_X509_NAME_ENTRY* noundef nonnull %call, %struct.stack_st_X509_NAME_ENTRY* noundef nonnull %7) #6
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end15
  %8 = bitcast %struct.stack_st* %call12 to %struct.stack_st_X509_NAME_ENTRY*
  %call20 = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef nonnull %8) #6
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call20) #5
  br label %memerr

if.end21:                                         ; preds = %if.end15
  %9 = load i32, i32* %5, align 8, !tbaa !20
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %for.body
  %entries.1 = phi %struct.stack_st_X509_NAME_ENTRY* [ %7, %if.end21 ], [ %entries.069, %for.body ]
  %set.1 = phi i32 [ %9, %if.end21 ], [ %set.071, %for.body ]
  %call24 = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_ENTRY_sk_type(%struct.stack_st_X509_NAME_ENTRY* noundef %entries.1) #6
  %call26 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call24, i8* noundef nonnull %call8) #5
  %tobool27.not = icmp eq i32 %call26, 0
  %inc = add nuw nsw i32 %i.070, 1
  br i1 %tobool27.not, label %memerr, label %for.cond

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %a30 = bitcast %union.anon.1* %intname to %struct.ASN1_VALUE_st**
  %call32 = call i32 @ASN1_item_ex_i2d(%struct.ASN1_VALUE_st** noundef nonnull %a30, i8** noundef null, %struct.ASN1_ITEM_st* noundef nonnull @X509_NAME_INTERNAL_it.local_it, i32 noundef -1, i32 noundef -1) #5
  %bytes = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %a, i64 0, i32 2
  %10 = load %struct.buf_mem_st*, %struct.buf_mem_st** %bytes, align 8, !tbaa !9
  %conv = sext i32 %call32 to i64
  %call33 = call i64 @BUF_MEM_grow(%struct.buf_mem_st* noundef %10, i64 noundef %conv) #5
  %tobool34.not = icmp eq i64 %call33, 0
  br i1 %tobool34.not, label %for.end.memerr_crit_edge, label %if.end36

for.end.memerr_crit_edge:                         ; preds = %for.end
  %.pre = load %struct.stack_st_STACK_OF_X509_NAME_ENTRY*, %struct.stack_st_STACK_OF_X509_NAME_ENTRY** %s, align 8, !tbaa !8
  br label %memerr

if.end36:                                         ; preds = %for.end
  %11 = load %struct.buf_mem_st*, %struct.buf_mem_st** %bytes, align 8, !tbaa !9
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %11, i64 0, i32 1
  %12 = load i8*, i8** %data, align 8, !tbaa !12
  store i8* %12, i8** %p, align 8, !tbaa !4
  %call40 = call i32 @ASN1_item_ex_i2d(%struct.ASN1_VALUE_st** noundef nonnull %a30, i8** noundef nonnull %p, %struct.ASN1_ITEM_st* noundef nonnull @X509_NAME_INTERNAL_it.local_it, i32 noundef -1, i32 noundef -1) #5
  %13 = load %struct.stack_st_STACK_OF_X509_NAME_ENTRY*, %struct.stack_st_STACK_OF_X509_NAME_ENTRY** %s, align 8, !tbaa !8
  call fastcc void @sk_STACK_OF_X509_NAME_ENTRY_pop_free(%struct.stack_st_STACK_OF_X509_NAME_ENTRY* noundef %13, void (%struct.stack_st_X509_NAME_ENTRY*)* noundef nonnull @local_sk_X509_NAME_ENTRY_free) #6
  %modified = getelementptr inbounds %struct.X509_name_st, %struct.X509_name_st* %a, i64 0, i32 1
  store i32 0, i32* %modified, align 8, !tbaa !18
  br label %cleanup

memerr:                                           ; preds = %if.end23, %if.then11, %for.end.memerr_crit_edge, %entry, %if.then19
  %14 = phi %struct.stack_st_STACK_OF_X509_NAME_ENTRY* [ %.pre, %for.end.memerr_crit_edge ], [ null, %entry ], [ %call, %if.then19 ], [ %call, %if.then11 ], [ %call, %if.end23 ]
  call fastcc void @sk_STACK_OF_X509_NAME_ENTRY_pop_free(%struct.stack_st_STACK_OF_X509_NAME_ENTRY* noundef %14, void (%struct.stack_st_X509_NAME_ENTRY*)* noundef nonnull @local_sk_X509_NAME_ENTRY_free) #6
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 279, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.x509_name_encode, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %memerr, %if.end36
  %retval.0 = phi i32 [ -1, %memerr ], [ %call32, %if.end36 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare i32 @X509_NAME_print_ex(%struct.bio_st* noundef, %struct.X509_name_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

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
!9 = !{!10, !5, i64 16}
!10 = !{!"X509_name_st", !5, i64 0, !11, i64 8, !5, i64 16, !5, i64 24, !11, i64 32}
!11 = !{!"int", !6, i64 0}
!12 = !{!13, !5, i64 8}
!13 = !{!"buf_mem_st", !14, i64 0, !5, i64 8, !14, i64 16, !14, i64 24}
!14 = !{!"long", !6, i64 0}
!15 = !{!13, !14, i64 0}
!16 = !{!14, !14, i64 0}
!17 = !{!10, !5, i64 0}
!18 = !{!10, !11, i64 8}
!19 = !{!10, !5, i64 24}
!20 = !{!21, !11, i64 16}
!21 = !{!"X509_name_entry_st", !5, i64 0, !5, i64 8, !11, i64 16, !11, i64 20}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, !23}
!25 = !{!26, !14, i64 8}
!26 = !{!"asn1_pctx_st", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32}
!27 = !{!10, !11, i64 32}
!28 = distinct !{!28, !23}
!29 = !{!21, !5, i64 0}
!30 = !{!21, !5, i64 8}
!31 = !{!32, !11, i64 4}
!32 = !{!"asn1_string_st", !11, i64 0, !11, i64 4, !5, i64 8, !14, i64 16}
!33 = !{!32, !11, i64 0}
!34 = !{!32, !5, i64 8}
!35 = distinct !{!35, !23}
!36 = distinct !{!36, !23}
!37 = distinct !{!37, !23}
!38 = distinct !{!38, !23}
!39 = distinct !{!39, !23}
!40 = distinct !{!40, !23}
