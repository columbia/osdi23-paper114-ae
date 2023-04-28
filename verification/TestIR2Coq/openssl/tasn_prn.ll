; ModuleID = 'crypto/asn1/tasn_prn.c'
source_filename = "crypto/asn1/tasn_prn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_pctx_st = type { i64, i64, i64, i64, i64 }
%struct.bio_st = type opaque
%struct.ASN1_VALUE_st = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.ASN1_PRINT_ARG_st = type { %struct.bio_st*, i32, %struct.asn1_pctx_st* }
%struct.ASN1_AUX_st = type { i8*, i32, i32, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* }
%struct.ASN1_EXTERN_FUNCS_st = type { i8*, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, i32 (%struct.ASN1_VALUE_st**, i8**, i64, %struct.ASN1_ITEM_st*, i32, i32, i8, %struct.ASN1_TLC_st*)*, i32 (%struct.ASN1_VALUE_st**, i8**, %struct.ASN1_ITEM_st*, i32, i32)*, i32 (%struct.bio_st*, %struct.ASN1_VALUE_st**, i32, i8*, %struct.asn1_pctx_st*)*, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ASN1_VALUE_st**, i8**, i64, %struct.ASN1_ITEM_st*, i32, i32, i8, %struct.ASN1_TLC_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.ASN1_TLC_st = type { i8, i32, i64, i32, i32, i32 }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_const_ASN1_VALUE = type opaque
%struct.ASN1_PRIMITIVE_FUNCS_st = type { i8*, i64, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, i32 (%struct.ASN1_VALUE_st**, i8*, i32, i32, i8*, %struct.ASN1_ITEM_st*)*, i32 (%struct.ASN1_VALUE_st**, i8*, i32*, %struct.ASN1_ITEM_st*)*, i32 (%struct.bio_st*, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i32, %struct.asn1_pctx_st*)* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.stack_st = type opaque
%struct.v3_ext_method = type { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* }
%struct.stack_st_CONF_VALUE = type opaque
%struct.v3_ext_ctx = type { i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_req_st*, %struct.X509_crl_st*, %struct.X509V3_CONF_METHOD_st*, i8*, %struct.evp_pkey_st* }
%struct.x509_st = type opaque
%struct.X509_req_st = type opaque
%struct.X509_crl_st = type opaque
%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.evp_pkey_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/asn1/tasn_prn.c\00", align 1
@__func__.ASN1_PCTX_new = private unnamed_addr constant [14 x i8] c"ASN1_PCTX_new\00", align 1
@default_pctx = internal global %struct.asn1_pctx_st { i64 1, i64 0, i64 0, i64 0, i64 0 }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"<ABSENT>\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c":EXTERNAL TYPE %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"ERROR: selector [%d] invalid\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" {\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%*s}\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Unprocessed type %d\0A\00", align 1
@asn1_print_fsname.spaces = internal constant [21 x i8] c"                    \00", align 16
@.str.9 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"SEQUENCE\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"%*s%s OF %s {\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"%*s%s:\0A\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"%*s<%s>\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"ABSENT\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"EMPTY\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"BOOL ABSENT\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c" (%ld unused bits)\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_pctx_st* @ASN1_PCTX_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 40, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 39) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ASN1_PCTX_new, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.asn1_pctx_st*
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.asn1_pctx_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.asn1_pctx_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @ASN1_PCTX_free(%struct.asn1_pctx_st* noundef %p) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.asn1_pctx_st* %p to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 49) #5
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @ASN1_PCTX_get_flags(%struct.asn1_pctx_st* nocapture noundef readonly %p) local_unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.asn1_pctx_st, %struct.asn1_pctx_st* %p, i64 0, i32 0
  %0 = load i64, i64* %flags, align 8, !tbaa !4
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @ASN1_PCTX_set_flags(%struct.asn1_pctx_st* nocapture noundef writeonly %p, i64 noundef %flags) local_unnamed_addr #4 {
entry:
  %flags1 = getelementptr inbounds %struct.asn1_pctx_st, %struct.asn1_pctx_st* %p, i64 0, i32 0
  store i64 %flags, i64* %flags1, align 8, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @ASN1_PCTX_get_nm_flags(%struct.asn1_pctx_st* nocapture noundef readonly %p) local_unnamed_addr #3 {
entry:
  %nm_flags = getelementptr inbounds %struct.asn1_pctx_st, %struct.asn1_pctx_st* %p, i64 0, i32 1
  %0 = load i64, i64* %nm_flags, align 8, !tbaa !9
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @ASN1_PCTX_set_nm_flags(%struct.asn1_pctx_st* nocapture noundef writeonly %p, i64 noundef %flags) local_unnamed_addr #4 {
entry:
  %nm_flags = getelementptr inbounds %struct.asn1_pctx_st, %struct.asn1_pctx_st* %p, i64 0, i32 1
  store i64 %flags, i64* %nm_flags, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @ASN1_PCTX_get_cert_flags(%struct.asn1_pctx_st* nocapture noundef readonly %p) local_unnamed_addr #3 {
entry:
  %cert_flags = getelementptr inbounds %struct.asn1_pctx_st, %struct.asn1_pctx_st* %p, i64 0, i32 2
  %0 = load i64, i64* %cert_flags, align 8, !tbaa !10
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @ASN1_PCTX_set_cert_flags(%struct.asn1_pctx_st* nocapture noundef writeonly %p, i64 noundef %flags) local_unnamed_addr #4 {
entry:
  %cert_flags = getelementptr inbounds %struct.asn1_pctx_st, %struct.asn1_pctx_st* %p, i64 0, i32 2
  store i64 %flags, i64* %cert_flags, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @ASN1_PCTX_get_oid_flags(%struct.asn1_pctx_st* nocapture noundef readonly %p) local_unnamed_addr #3 {
entry:
  %oid_flags = getelementptr inbounds %struct.asn1_pctx_st, %struct.asn1_pctx_st* %p, i64 0, i32 3
  %0 = load i64, i64* %oid_flags, align 8, !tbaa !11
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @ASN1_PCTX_set_oid_flags(%struct.asn1_pctx_st* nocapture noundef writeonly %p, i64 noundef %flags) local_unnamed_addr #4 {
entry:
  %oid_flags = getelementptr inbounds %struct.asn1_pctx_st, %struct.asn1_pctx_st* %p, i64 0, i32 3
  store i64 %flags, i64* %oid_flags, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @ASN1_PCTX_get_str_flags(%struct.asn1_pctx_st* nocapture noundef readonly %p) local_unnamed_addr #3 {
entry:
  %str_flags = getelementptr inbounds %struct.asn1_pctx_st, %struct.asn1_pctx_st* %p, i64 0, i32 4
  %0 = load i64, i64* %str_flags, align 8, !tbaa !12
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @ASN1_PCTX_set_str_flags(%struct.asn1_pctx_st* nocapture noundef writeonly %p, i64 noundef %flags) local_unnamed_addr #4 {
entry:
  %str_flags = getelementptr inbounds %struct.asn1_pctx_st, %struct.asn1_pctx_st* %p, i64 0, i32 4
  store i64 %flags, i64* %str_flags, align 8, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_item_print(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st* noundef %ifld, i32 noundef %indent, %struct.ASN1_ITEM_st* noundef %it, %struct.asn1_pctx_st* noundef %pctx) local_unnamed_addr #0 {
entry:
  %ifld.addr = alloca %struct.ASN1_VALUE_st*, align 8
  store %struct.ASN1_VALUE_st* %ifld, %struct.ASN1_VALUE_st** %ifld.addr, align 8, !tbaa !13
  %cmp = icmp eq %struct.asn1_pctx_st* %pctx, null
  %spec.store.select = select i1 %cmp, %struct.asn1_pctx_st* @default_pctx, %struct.asn1_pctx_st* %pctx
  %flags = getelementptr inbounds %struct.asn1_pctx_st, %struct.asn1_pctx_st* %spec.store.select, i64 0, i32 0
  %0 = load i64, i64* %flags, align 8, !tbaa !4
  %and = and i64 %0, 256
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.end3

if.else:                                          ; preds = %entry
  %sname2 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 6
  %1 = load i8*, i8** %sname2, align 8, !tbaa !15
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.else
  %sname.0 = phi i8* [ %1, %if.else ], [ null, %entry ]
  %call = call fastcc i32 @asn1_item_print_ctx(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st** noundef nonnull %ifld.addr, i32 noundef %indent, %struct.ASN1_ITEM_st* noundef %it, i8* noundef null, i8* noundef %sname.0, i32 noundef 0, %struct.asn1_pctx_st* noundef nonnull %spec.store.select) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_item_print_ctx(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st** noundef %fld, i32 noundef %indent, %struct.ASN1_ITEM_st* noundef %it, i8* noundef %fname, i8* noundef %sname, i32 noundef %nohdr, %struct.asn1_pctx_st* noundef %pctx) unnamed_addr #0 {
entry:
  %parg = alloca %struct.ASN1_PRINT_ARG_st, align 8
  %funcs = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 4
  %0 = bitcast i8** %funcs to %struct.ASN1_AUX_st**
  %1 = load %struct.ASN1_AUX_st*, %struct.ASN1_AUX_st** %0, align 8, !tbaa !17
  %2 = bitcast %struct.ASN1_PRINT_ARG_st* %parg to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #7
  %cmp.not = icmp eq %struct.ASN1_AUX_st* %1, null
  %3 = bitcast %struct.ASN1_AUX_st* %1 to %struct.ASN1_EXTERN_FUNCS_st*
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %out1 = getelementptr inbounds %struct.ASN1_PRINT_ARG_st, %struct.ASN1_PRINT_ARG_st* %parg, i64 0, i32 0
  store %struct.bio_st* %out, %struct.bio_st** %out1, align 8, !tbaa !18
  %indent2 = getelementptr inbounds %struct.ASN1_PRINT_ARG_st, %struct.ASN1_PRINT_ARG_st* %parg, i64 0, i32 1
  store i32 %indent, i32* %indent2, align 8, !tbaa !21
  %pctx3 = getelementptr inbounds %struct.ASN1_PRINT_ARG_st, %struct.ASN1_PRINT_ARG_st* %parg, i64 0, i32 2
  store %struct.asn1_pctx_st* %pctx, %struct.asn1_pctx_st** %pctx3, align 8, !tbaa !22
  %flags = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %1, i64 0, i32 1
  %4 = load i32, i32* %flags, align 8, !tbaa !23
  %and = and i32 %4, 8
  %cmp4.not = icmp eq i32 %and, 0
  %asn1_const_cb = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %1, i64 0, i32 6
  %asn1_cb5 = getelementptr inbounds %struct.ASN1_AUX_st, %struct.ASN1_AUX_st* %1, i64 0, i32 4
  %cond.in = select i1 %cmp4.not, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)** %asn1_cb5, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)** %asn1_const_cb
  %cond = load i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)** %cond.in, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %asn1_cb.0 = phi i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* [ %cond, %if.then ], [ null, %entry ]
  %itype = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 0
  %5 = load i8, i8* %itype, align 8, !tbaa !25
  %cmp6.not = icmp eq i8 %5, 0
  br i1 %cmp6.not, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end
  %utype = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 1
  %6 = load i64, i64* %utype, align 8, !tbaa !26
  %cmp8.not = icmp eq i64 %6, 1
  br i1 %cmp8.not, label %sw.bb, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %7 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %fld, align 8, !tbaa !13
  %cmp10 = icmp eq %struct.ASN1_VALUE_st* %7, null
  br i1 %cmp10, label %if.then12, label %if.end27

if.then12:                                        ; preds = %land.lhs.true
  %flags13 = getelementptr inbounds %struct.asn1_pctx_st, %struct.asn1_pctx_st* %pctx, i64 0, i32 0
  %8 = load i64, i64* %flags13, align 8, !tbaa !4
  %and14 = and i64 %8, 1
  %tobool.not = icmp eq i64 %and14, 0
  br i1 %tobool.not, label %if.end26, label %if.then15

if.then15:                                        ; preds = %if.then12
  %tobool16.not = icmp eq i32 %nohdr, 0
  br i1 %tobool16.not, label %land.lhs.true17, label %if.end20

land.lhs.true17:                                  ; preds = %if.then15
  %call = tail call fastcc i32 @asn1_print_fsname(%struct.bio_st* noundef %out, i32 noundef %indent, i8* noundef %fname, i8* noundef %sname, %struct.asn1_pctx_st* noundef nonnull %pctx) #6
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %cleanup172, label %if.end20

if.end20:                                         ; preds = %land.lhs.true17, %if.then15
  %call21 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #5
  %cmp22 = icmp slt i32 %call21, 1
  br i1 %cmp22, label %cleanup172, label %if.end26

if.end26:                                         ; preds = %if.end20, %if.then12
  br label %cleanup172

if.end27:                                         ; preds = %land.lhs.true
  %conv29 = sext i8 %5 to i32
  switch i32 %conv29, label %sw.default [
    i32 0, label %sw.bb
    i32 5, label %sw.bb38
    i32 4, label %sw.bb43
    i32 2, label %sw.bb76
    i32 1, label %sw.bb97
    i32 6, label %sw.bb97
  ]

sw.bb:                                            ; preds = %lor.lhs.false, %if.end27
  %templates = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 2
  %9 = load %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st** %templates, align 8, !tbaa !27
  %tobool30.not = icmp eq %struct.ASN1_TEMPLATE_st* %9, null
  br i1 %tobool30.not, label %sw.bb38, label %if.then31

if.then31:                                        ; preds = %sw.bb
  %call33 = tail call fastcc i32 @asn1_template_print_ctx(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st** noundef %fld, i32 noundef %indent, %struct.ASN1_TEMPLATE_st* noundef nonnull %9, %struct.asn1_pctx_st* noundef %pctx) #6
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %cleanup172, label %sw.epilog

sw.bb38:                                          ; preds = %sw.bb, %if.end27
  %call39 = tail call fastcc i32 @asn1_primitive_print(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st** noundef %fld, %struct.ASN1_ITEM_st* noundef nonnull %it, i32 noundef %indent, i8* noundef %fname, i8* noundef %sname, %struct.asn1_pctx_st* noundef %pctx) #6
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %cleanup172, label %sw.epilog

sw.bb43:                                          ; preds = %if.end27
  %tobool44.not = icmp eq i32 %nohdr, 0
  br i1 %tobool44.not, label %land.lhs.true45, label %if.end49

land.lhs.true45:                                  ; preds = %sw.bb43
  %call46 = tail call fastcc i32 @asn1_print_fsname(%struct.bio_st* noundef %out, i32 noundef %indent, i8* noundef %fname, i8* noundef %sname, %struct.asn1_pctx_st* noundef %pctx) #6
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %cleanup172, label %land.lhs.true45.if.end49_crit_edge

land.lhs.true45.if.end49_crit_edge:               ; preds = %land.lhs.true45
  %.phi.trans.insert = bitcast i8** %funcs to %struct.ASN1_EXTERN_FUNCS_st**
  %.pre = load %struct.ASN1_EXTERN_FUNCS_st*, %struct.ASN1_EXTERN_FUNCS_st** %.phi.trans.insert, align 8, !tbaa !17
  br label %if.end49

if.end49:                                         ; preds = %sw.bb43, %land.lhs.true45.if.end49_crit_edge
  %10 = phi %struct.ASN1_EXTERN_FUNCS_st* [ %.pre, %land.lhs.true45.if.end49_crit_edge ], [ %3, %sw.bb43 ]
  %tobool51.not = icmp eq %struct.ASN1_EXTERN_FUNCS_st* %10, null
  br i1 %tobool51.not, label %if.else, label %land.lhs.true52

land.lhs.true52:                                  ; preds = %if.end49
  %asn1_ex_print = getelementptr inbounds %struct.ASN1_EXTERN_FUNCS_st, %struct.ASN1_EXTERN_FUNCS_st* %10, i64 0, i32 6
  %11 = load i32 (%struct.bio_st*, %struct.ASN1_VALUE_st**, i32, i8*, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.ASN1_VALUE_st**, i32, i8*, %struct.asn1_pctx_st*)** %asn1_ex_print, align 8, !tbaa !28
  %tobool53.not = icmp eq i32 (%struct.bio_st*, %struct.ASN1_VALUE_st**, i32, i8*, %struct.asn1_pctx_st*)* %11, null
  br i1 %tobool53.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %land.lhs.true52
  %call56 = tail call i32 %11(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st** noundef nonnull %fld, i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.asn1_pctx_st* noundef %pctx) #5
  switch i32 %call56, label %if.end67 [
    i32 0, label %cleanup172
    i32 2, label %land.lhs.true62
  ]

land.lhs.true62:                                  ; preds = %if.then54
  %call63 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #5
  %cmp64 = icmp slt i32 %call63, 1
  br i1 %cmp64, label %cleanup172, label %if.end67

if.end67:                                         ; preds = %if.then54, %land.lhs.true62
  br label %cleanup172

if.else:                                          ; preds = %land.lhs.true52, %if.end49
  %tobool68.not = icmp eq i8* %sname, null
  br i1 %tobool68.not, label %sw.epilog, label %land.lhs.true69

land.lhs.true69:                                  ; preds = %if.else
  %call70 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* noundef nonnull %sname) #5
  %cmp71 = icmp slt i32 %call70, 1
  br i1 %cmp71, label %cleanup172, label %sw.epilog

sw.bb76:                                          ; preds = %if.end27
  %call77 = tail call i32 @ossl_asn1_get_choice_selector_const(%struct.ASN1_VALUE_st** noundef nonnull %fld, %struct.ASN1_ITEM_st* noundef nonnull %it) #5
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.then84, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %sw.bb76
  %conv81288 = zext i32 %call77 to i64
  %tcount = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 3
  %12 = load i64, i64* %tcount, align 8, !tbaa !30
  %cmp82.not = icmp sgt i64 %12, %conv81288
  br i1 %cmp82.not, label %if.end90, label %if.then84

if.then84:                                        ; preds = %lor.lhs.false80, %sw.bb76
  %call85 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 noundef %call77) #5
  %cmp86 = icmp sgt i32 %call85, 0
  %. = zext i1 %cmp86 to i32
  br label %cleanup172

if.end90:                                         ; preds = %lor.lhs.false80
  %templates91 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 2
  %13 = load %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st** %templates91, align 8, !tbaa !27
  %add.ptr = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %13, i64 %conv81288
  %call92 = tail call %struct.ASN1_VALUE_st** @ossl_asn1_get_const_field_ptr(%struct.ASN1_VALUE_st** noundef nonnull %fld, %struct.ASN1_TEMPLATE_st* noundef %add.ptr) #5
  %call93 = tail call fastcc i32 @asn1_template_print_ctx(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st** noundef %call92, i32 noundef %indent, %struct.ASN1_TEMPLATE_st* noundef %add.ptr, %struct.asn1_pctx_st* noundef %pctx) #6
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %cleanup172, label %sw.epilog

sw.bb97:                                          ; preds = %if.end27, %if.end27
  %tobool98.not = icmp eq i32 %nohdr, 0
  br i1 %tobool98.not, label %land.lhs.true99, label %if.end103

land.lhs.true99:                                  ; preds = %sw.bb97
  %call100 = tail call fastcc i32 @asn1_print_fsname(%struct.bio_st* noundef %out, i32 noundef %indent, i8* noundef %fname, i8* noundef %sname, %struct.asn1_pctx_st* noundef %pctx) #6
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %cleanup172, label %if.end103

if.end103:                                        ; preds = %land.lhs.true99, %sw.bb97
  %tobool104 = icmp ne i8* %fname, null
  %tobool106 = icmp ne i8* %sname, null
  %or.cond = or i1 %tobool104, %tobool106
  br i1 %or.cond, label %if.then107, label %if.end124

if.then107:                                       ; preds = %if.end103
  %flags108 = getelementptr inbounds %struct.asn1_pctx_st, %struct.asn1_pctx_st* %pctx, i64 0, i32 0
  %14 = load i64, i64* %flags108, align 8, !tbaa !4
  %and109 = and i64 %14, 2
  %tobool110.not = icmp eq i64 %and109, 0
  br i1 %tobool110.not, label %if.else117, label %if.then111

if.then111:                                       ; preds = %if.then107
  %call112 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #5
  %cmp113 = icmp slt i32 %call112, 1
  br i1 %cmp113, label %cleanup172, label %if.end124

if.else117:                                       ; preds = %if.then107
  %call118 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #5
  %cmp119 = icmp slt i32 %call118, 1
  br i1 %cmp119, label %cleanup172, label %if.end124

if.end124:                                        ; preds = %if.then111, %if.else117, %if.end103
  %tobool125.not = icmp eq i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* %asn1_cb.0, null
  br i1 %tobool125.not, label %if.end136, label %if.then126

if.then126:                                       ; preds = %if.end124
  %call127 = call i32 %asn1_cb.0(i32 noundef 8, %struct.ASN1_VALUE_st** noundef nonnull %fld, %struct.ASN1_ITEM_st* noundef nonnull %it, i8* noundef nonnull %2) #5
  switch i32 %call127, label %if.end136 [
    i32 0, label %cleanup172
    i32 2, label %if.then134
  ]

if.then134:                                       ; preds = %if.then126
  br label %cleanup172

if.end136:                                        ; preds = %if.then126, %if.end124
  %tcount139 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 3
  %15 = load i64, i64* %tcount139, align 8, !tbaa !30
  %cmp140289 = icmp sgt i64 %15, 0
  br i1 %cmp140289, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end136
  %templates137 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 2
  %16 = load %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st** %templates137, align 8, !tbaa !27
  %add = add nsw i32 %indent, 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %tt.0290 = phi %struct.ASN1_TEMPLATE_st* [ %16, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %17 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %fld, align 8, !tbaa !13
  %call142 = call %struct.ASN1_TEMPLATE_st* @ossl_asn1_do_adb(%struct.ASN1_VALUE_st* noundef %17, %struct.ASN1_TEMPLATE_st* noundef %tt.0290, i32 noundef 1) #5
  %tobool143.not = icmp eq %struct.ASN1_TEMPLATE_st* %call142, null
  br i1 %tobool143.not, label %cleanup172, label %if.end145

if.end145:                                        ; preds = %for.body
  %call146 = call %struct.ASN1_VALUE_st** @ossl_asn1_get_const_field_ptr(%struct.ASN1_VALUE_st** noundef nonnull %fld, %struct.ASN1_TEMPLATE_st* noundef nonnull %call142) #5
  %call147 = call fastcc i32 @asn1_template_print_ctx(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st** noundef %call146, i32 noundef %add, %struct.ASN1_TEMPLATE_st* noundef nonnull %call142, %struct.asn1_pctx_st* noundef %pctx) #6
  %tobool148.not.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not.not, label %cleanup172, label %for.inc

for.inc:                                          ; preds = %if.end145
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %incdec.ptr = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt.0290, i64 1
  %18 = load i64, i64* %tcount139, align 8, !tbaa !30
  %cmp140 = icmp sgt i64 %18, %indvars.iv.next
  br i1 %cmp140, label %for.body, label %for.end, !llvm.loop !31

for.end:                                          ; preds = %for.inc, %if.end136
  %flags151 = getelementptr inbounds %struct.asn1_pctx_st, %struct.asn1_pctx_st* %pctx, i64 0, i32 0
  %19 = load i64, i64* %flags151, align 8, !tbaa !4
  %and152 = and i64 %19, 2
  %tobool153.not = icmp eq i64 %and152, 0
  br i1 %tobool153.not, label %if.end160, label %if.then154

if.then154:                                       ; preds = %for.end
  %call155 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)) #5
  %cmp156 = icmp slt i32 %call155, 0
  br i1 %cmp156, label %cleanup172, label %if.end160

if.end160:                                        ; preds = %if.then154, %for.end
  br i1 %tobool125.not, label %sw.epilog, label %if.then162

if.then162:                                       ; preds = %if.end160
  %call163 = call i32 %asn1_cb.0(i32 noundef 9, %struct.ASN1_VALUE_st** noundef nonnull %fld, %struct.ASN1_ITEM_st* noundef nonnull %it, i8* noundef nonnull %2) #5
  %cmp164 = icmp eq i32 %call163, 0
  br i1 %cmp164, label %cleanup172, label %sw.epilog

sw.default:                                       ; preds = %if.end27
  %call171 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv29) #5
  br label %cleanup172

sw.epilog:                                        ; preds = %if.end160, %if.then162, %if.end90, %land.lhs.true69, %if.else, %sw.bb38, %if.then31
  br label %cleanup172

cleanup172:                                       ; preds = %for.body, %if.end145, %if.then162, %if.then154, %if.then126, %if.else117, %if.then111, %land.lhs.true99, %if.end90, %if.then84, %land.lhs.true69, %land.lhs.true62, %if.then54, %land.lhs.true45, %sw.bb38, %if.then31, %if.end20, %land.lhs.true17, %sw.epilog, %sw.default, %if.then134, %if.end67, %if.end26
  %retval.2 = phi i32 [ 1, %if.end26 ], [ 0, %sw.default ], [ 1, %if.then134 ], [ 1, %sw.epilog ], [ 1, %if.end67 ], [ 0, %land.lhs.true17 ], [ 0, %if.end20 ], [ 0, %if.then31 ], [ 0, %sw.bb38 ], [ 0, %land.lhs.true45 ], [ %call56, %if.then54 ], [ 0, %land.lhs.true62 ], [ 0, %land.lhs.true69 ], [ %., %if.then84 ], [ 0, %if.end90 ], [ 0, %land.lhs.true99 ], [ 0, %if.then111 ], [ 0, %if.else117 ], [ %call127, %if.then126 ], [ 0, %if.then154 ], [ 0, %if.then162 ], [ 0, %if.end145 ], [ 0, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #7
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_print_fsname(%struct.bio_st* noundef %out, i32 noundef %indent, i8* noundef %fname, i8* noundef %sname, %struct.asn1_pctx_st* nocapture noundef readonly %pctx) unnamed_addr #0 {
entry:
  %cmp58 = icmp sgt i32 %indent, 20
  br i1 %cmp58, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %if.end
  %indent.addr.059 = phi i32 [ %sub, %if.end ], [ %indent, %entry ]
  %call = tail call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @asn1_print_fsname.spaces, i64 0, i64 0), i32 noundef 20) #5
  %cmp1.not = icmp eq i32 %call, 20
  br i1 %cmp1.not, label %if.end, label %return

if.end:                                           ; preds = %while.body
  %sub = add nsw i32 %indent.addr.059, -20
  %cmp = icmp sgt i32 %indent.addr.059, 40
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !33

while.end:                                        ; preds = %if.end, %entry
  %indent.addr.0.lcssa = phi i32 [ %indent, %entry ], [ %sub, %if.end ]
  %call2 = tail call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @asn1_print_fsname.spaces, i64 0, i64 0), i32 noundef %indent.addr.0.lcssa) #5
  %cmp3.not = icmp eq i32 %call2, %indent.addr.0.lcssa
  br i1 %cmp3.not, label %if.end5, label %return

if.end5:                                          ; preds = %while.end
  %flags = getelementptr inbounds %struct.asn1_pctx_st, %struct.asn1_pctx_st* %pctx, i64 0, i32 0
  %0 = load i64, i64* %flags, align 8, !tbaa !4
  %and = and i64 %0, 256
  %tobool.not = icmp eq i64 %and, 0
  %spec.select = select i1 %tobool.not, i8* %sname, i8* null
  %and9 = and i64 %0, 64
  %tobool10.not = icmp eq i64 %and9, 0
  %fname.addr.0 = select i1 %tobool10.not, i8* %fname, i8* null
  %tobool13 = icmp ne i8* %spec.select, null
  %tobool14 = icmp ne i8* %fname.addr.0, null
  %or.cond = or i1 %tobool13, %tobool14
  br i1 %or.cond, label %if.end16, label %return

if.end16:                                         ; preds = %if.end5
  br i1 %tobool14, label %if.then18, label %if.end23.thread

if.then18:                                        ; preds = %if.end16
  %call19 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef nonnull %fname.addr.0) #5
  %cmp20 = icmp slt i32 %call19, 1
  br i1 %cmp20, label %return, label %if.end23

if.end23:                                         ; preds = %if.then18
  br i1 %tobool13, label %if.then27, label %if.end37

if.end23.thread:                                  ; preds = %if.end16
  br i1 %tobool13, label %if.else, label %if.end37

if.then27:                                        ; preds = %if.end23
  %call28 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %spec.select) #5
  %cmp29 = icmp slt i32 %call28, 1
  br i1 %cmp29, label %return, label %if.end37

if.else:                                          ; preds = %if.end23.thread
  %call32 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef nonnull %spec.select) #5
  %cmp33 = icmp slt i32 %call32, 1
  br i1 %cmp33, label %return, label %if.end37

if.end37:                                         ; preds = %if.end23.thread, %if.then27, %if.else, %if.end23
  %call38 = tail call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 noundef 2) #5
  %cmp39.not = icmp eq i32 %call38, 2
  %. = zext i1 %cmp39.not to i32
  br label %return

return:                                           ; preds = %while.body, %if.end37, %if.else, %if.then27, %if.then18, %if.end5, %while.end
  %retval.0 = phi i32 [ 0, %while.end ], [ 1, %if.end5 ], [ 0, %if.then18 ], [ 0, %if.then27 ], [ 0, %if.else ], [ %., %if.end37 ], [ 0, %while.body ]
  ret i32 %retval.0
}

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_template_print_ctx(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st** noundef %fld, i32 noundef %indent, %struct.ASN1_TEMPLATE_st* nocapture noundef readonly %tt, %struct.asn1_pctx_st* noundef %pctx) unnamed_addr #0 {
entry:
  %tfld = alloca %struct.ASN1_VALUE_st*, align 8
  %skitem = alloca %struct.ASN1_VALUE_st*, align 8
  %0 = bitcast %struct.ASN1_VALUE_st** %tfld to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %flags1 = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 0
  %1 = load i64, i64* %flags1, align 8, !tbaa !34
  %conv = trunc i64 %1 to i32
  %flags2 = getelementptr inbounds %struct.asn1_pctx_st, %struct.asn1_pctx_st* %pctx, i64 0, i32 0
  %2 = load i64, i64* %flags2, align 8, !tbaa !4
  %and = and i64 %2, 128
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %item = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 4
  %3 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %item, align 8, !tbaa !36
  %call = tail call %struct.ASN1_ITEM_st* %3() #5
  %sname3 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %call, i64 0, i32 6
  %4 = load i8*, i8** %sname3, align 8, !tbaa !15
  %.pre = load i64, i64* %flags2, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi i64 [ %.pre, %if.then ], [ %2, %entry ]
  %sname.0 = phi i8* [ %4, %if.then ], [ null, %entry ]
  %and5 = and i64 %5, 64
  %tobool6.not = icmp eq i64 %and5, 0
  br i1 %tobool6.not, label %if.else8, label %if.end9

if.else8:                                         ; preds = %if.end
  %field_name = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 3
  %6 = load i8*, i8** %field_name, align 8, !tbaa !37
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.else8
  %fname.0 = phi i8* [ %6, %if.else8 ], [ null, %if.end ]
  %and10 = and i32 %conv, 4096
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end9
  %7 = bitcast %struct.ASN1_VALUE_st** %tfld to %struct.ASN1_VALUE_st***
  store %struct.ASN1_VALUE_st** %fld, %struct.ASN1_VALUE_st*** %7, align 8, !tbaa !13
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9
  %fld.addr.0 = phi %struct.ASN1_VALUE_st** [ %tfld, %if.then12 ], [ %fld, %if.end9 ]
  %and14 = and i32 %conv, 6
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end81, label %if.then16

if.then16:                                        ; preds = %if.end13
  %8 = bitcast %struct.ASN1_VALUE_st** %skitem to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7
  %tobool17.not = icmp eq i8* %fname.0, null
  br i1 %tobool17.not, label %if.end40, label %if.then18

if.then18:                                        ; preds = %if.then16
  %and20 = and i64 %5, 4
  %tobool21.not = icmp eq i64 %and20, 0
  br i1 %tobool21.not, label %if.else33, label %if.then22

if.then22:                                        ; preds = %if.then18
  %and23 = and i32 %conv, 2
  %tobool24.not = icmp eq i32 %and23, 0
  %. = select i1 %tobool24.not, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %field_name28 = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 3
  %9 = load i8*, i8** %field_name28, align 8, !tbaa !37
  %call29 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* noundef %., i8* noundef %9) #5
  %cmp = icmp slt i32 %call29, 1
  br i1 %cmp, label %cleanup, label %if.end40

if.else33:                                        ; preds = %if.then18
  %call34 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %fname.0) #5
  %cmp35 = icmp slt i32 %call34, 1
  br i1 %cmp35, label %cleanup, label %if.end40

if.end40:                                         ; preds = %if.then22, %if.else33, %if.then16
  %10 = bitcast %struct.ASN1_VALUE_st** %fld.addr.0 to %struct.stack_st_const_ASN1_VALUE**
  %11 = load %struct.stack_st_const_ASN1_VALUE*, %struct.stack_st_const_ASN1_VALUE** %10, align 8, !tbaa !13
  %call41130 = call fastcc i32 @sk_const_ASN1_VALUE_num(%struct.stack_st_const_ASN1_VALUE* noundef %11) #6
  %cmp42131 = icmp sgt i32 %call41130, 0
  br i1 %cmp42131, label %for.body.lr.ph, label %land.lhs.true60

for.body.lr.ph:                                   ; preds = %if.end40
  %add = add nsw i32 %indent, 2
  %item52 = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0132 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %cmp44.not = icmp eq i32 %i.0132, 0
  br i1 %cmp44.not, label %if.end50, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call46 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #5
  %cmp47 = icmp slt i32 %call46, 1
  br i1 %cmp47, label %cleanup, label %if.end50

if.end50:                                         ; preds = %land.lhs.true, %for.body
  %call51 = call fastcc %struct.ASN1_VALUE_st* @sk_const_ASN1_VALUE_value(%struct.stack_st_const_ASN1_VALUE* noundef %11, i32 noundef %i.0132) #6
  store %struct.ASN1_VALUE_st* %call51, %struct.ASN1_VALUE_st** %skitem, align 8, !tbaa !13
  %12 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %item52, align 8, !tbaa !36
  %call53 = call %struct.ASN1_ITEM_st* %12() #5
  %call54 = call fastcc i32 @asn1_item_print_ctx(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st** noundef nonnull %skitem, i32 noundef %add, %struct.ASN1_ITEM_st* noundef %call53, i8* noundef null, i8* noundef null, i32 noundef 1, %struct.asn1_pctx_st* noundef %pctx) #6
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.end50
  %inc = add nuw nsw i32 %i.0132, 1
  %call41 = call fastcc i32 @sk_const_ASN1_VALUE_num(%struct.stack_st_const_ASN1_VALUE* noundef %11) #6
  %cmp42 = icmp slt i32 %inc, %call41
  br i1 %cmp42, label %for.body, label %for.end, !llvm.loop !38

for.end:                                          ; preds = %for.inc
  br i1 %cmp42131, label %if.end68, label %land.lhs.true60

land.lhs.true60:                                  ; preds = %if.end40, %for.end
  %add61 = add nsw i32 %indent, 2
  %cmp62 = icmp eq %struct.stack_st_const_ASN1_VALUE* %11, null
  %cond = select i1 %cmp62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0)
  %call64 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 noundef %add61, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* noundef %cond) #5
  %cmp65 = icmp slt i32 %call64, 1
  br i1 %cmp65, label %cleanup, label %if.end68

if.end68:                                         ; preds = %land.lhs.true60, %for.end
  %13 = load i64, i64* %flags2, align 8, !tbaa !4
  %and70 = and i64 %13, 2
  %tobool71.not = icmp eq i64 %and70, 0
  br i1 %tobool71.not, label %if.end78, label %if.then72

if.then72:                                        ; preds = %if.end68
  %call73 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)) #5
  %cmp74 = icmp slt i32 %call73, 1
  br i1 %cmp74, label %cleanup, label %if.end78

if.end78:                                         ; preds = %if.then72, %if.end68
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %land.lhs.true, %if.then72, %land.lhs.true60, %if.else33, %if.then22, %if.end78
  %retval.0 = phi i32 [ 1, %if.end78 ], [ 0, %if.then22 ], [ 0, %if.else33 ], [ 0, %land.lhs.true60 ], [ 0, %if.then72 ], [ 0, %land.lhs.true ], [ 0, %if.end50 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7
  br label %cleanup85

if.end81:                                         ; preds = %if.end13
  %item82 = getelementptr inbounds %struct.ASN1_TEMPLATE_st, %struct.ASN1_TEMPLATE_st* %tt, i64 0, i32 4
  %14 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %item82, align 8, !tbaa !36
  %call83 = tail call %struct.ASN1_ITEM_st* %14() #5
  %call84 = call fastcc i32 @asn1_item_print_ctx(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st** noundef %fld.addr.0, i32 noundef %indent, %struct.ASN1_ITEM_st* noundef %call83, i8* noundef %fname.0, i8* noundef %sname.0, i32 noundef 0, %struct.asn1_pctx_st* noundef nonnull %pctx) #6
  br label %cleanup85

cleanup85:                                        ; preds = %if.end81, %cleanup
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ %call84, %if.end81 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_primitive_print(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st** noundef %fld, %struct.ASN1_ITEM_st* noundef %it, i32 noundef %indent, i8* noundef %fname, i8* noundef %sname, %struct.asn1_pctx_st* noundef %pctx) unnamed_addr #0 {
entry:
  %funcs = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 4
  %0 = bitcast i8** %funcs to %struct.ASN1_PRIMITIVE_FUNCS_st**
  %1 = load %struct.ASN1_PRIMITIVE_FUNCS_st*, %struct.ASN1_PRIMITIVE_FUNCS_st** %0, align 8, !tbaa !17
  %call = tail call fastcc i32 @asn1_print_fsname(%struct.bio_st* noundef %out, i32 noundef %indent, i8* noundef %fname, i8* noundef %sname, %struct.asn1_pctx_st* noundef %pctx) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq %struct.ASN1_PRIMITIVE_FUNCS_st* %1, null
  br i1 %tobool1.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %prim_print = getelementptr inbounds %struct.ASN1_PRIMITIVE_FUNCS_st, %struct.ASN1_PRIMITIVE_FUNCS_st* %1, i64 0, i32 7
  %2 = load i32 (%struct.bio_st*, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i32, %struct.asn1_pctx_st*)** %prim_print, align 8, !tbaa !39
  %tobool2.not = icmp eq i32 (%struct.bio_st*, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i32, %struct.asn1_pctx_st*)* %2, null
  br i1 %tobool2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  %call5 = tail call i32 %2(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st** noundef %fld, %struct.ASN1_ITEM_st* noundef nonnull %it, i32 noundef %indent, %struct.asn1_pctx_st* noundef %pctx) #5
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %itype = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 0
  %3 = load i8, i8* %itype, align 8, !tbaa !25
  %cmp = icmp eq i8 %3, 5
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  %4 = bitcast %struct.ASN1_VALUE_st** %fld to %struct.asn1_string_st**
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %4, align 8, !tbaa !13
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %5, i64 0, i32 1
  %6 = load i32, i32* %type, align 4, !tbaa !41
  %and = and i32 %6, -257
  %conv9 = sext i32 %and to i64
  br label %if.else29

if.else:                                          ; preds = %if.end6
  %utype10 = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 1
  %7 = load i64, i64* %utype10, align 8, !tbaa !26
  %cmp11 = icmp eq i64 %7, 1
  br i1 %cmp11, label %if.else29, label %if.end16

if.end16:                                         ; preds = %if.else
  %8 = bitcast %struct.ASN1_VALUE_st** %fld to %struct.asn1_string_st**
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %8, align 8, !tbaa !13
  %cmp17 = icmp eq i64 %7, -4
  br i1 %cmp17, label %if.then19, label %if.else29

if.then19:                                        ; preds = %if.end16
  %type20 = getelementptr %struct.asn1_string_st, %struct.asn1_string_st* %9, i64 0, i32 0
  %10 = load i32, i32* %type20, align 8, !tbaa !43
  %conv21 = sext i32 %10 to i64
  %value = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %9, i64 0, i32 2
  %asn1_value = bitcast i8** %value to %struct.ASN1_VALUE_st**
  %11 = bitcast i8** %value to %struct.asn1_string_st**
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %11, align 8, !tbaa !13
  %flags = getelementptr inbounds %struct.asn1_pctx_st, %struct.asn1_pctx_st* %pctx, i64 0, i32 0
  %13 = load i64, i64* %flags, align 8, !tbaa !4
  %and22 = and i64 %13, 16
  %tobool23.not = icmp eq i64 %and22, 0
  br i1 %tobool23.not, label %if.end38.sink.split, label %if.end38

if.else29:                                        ; preds = %if.else, %if.then8, %if.end16
  %str.0168 = phi %struct.asn1_string_st* [ %9, %if.end16 ], [ null, %if.else ], [ %5, %if.then8 ]
  %utype.0167 = phi i64 [ %7, %if.end16 ], [ 1, %if.else ], [ %conv9, %if.then8 ]
  %flags30 = getelementptr inbounds %struct.asn1_pctx_st, %struct.asn1_pctx_st* %pctx, i64 0, i32 0
  %14 = load i64, i64* %flags30, align 8, !tbaa !4
  %and31 = and i64 %14, 8
  %tobool32.not = icmp eq i64 %and31, 0
  br i1 %tobool32.not, label %if.end38, label %if.then33

if.then33:                                        ; preds = %if.else29
  %conv34 = trunc i64 %utype.0167 to i32
  br label %if.end38.sink.split

if.end38.sink.split:                              ; preds = %if.then19, %if.then33
  %.sink = phi i32 [ %conv34, %if.then33 ], [ %10, %if.then19 ]
  %utype.1.ph = phi i64 [ %utype.0167, %if.then33 ], [ %conv21, %if.then19 ]
  %str.1.ph = phi %struct.asn1_string_st* [ %str.0168, %if.then33 ], [ %12, %if.then19 ]
  %fld.addr.0.ph = phi %struct.ASN1_VALUE_st** [ %fld, %if.then33 ], [ %asn1_value, %if.then19 ]
  %call27 = tail call i8* @ASN1_tag2str(i32 noundef %.sink) #5
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %if.else29, %if.then19
  %utype.1 = phi i64 [ %conv21, %if.then19 ], [ %utype.0167, %if.else29 ], [ %utype.1.ph, %if.end38.sink.split ]
  %str.1 = phi %struct.asn1_string_st* [ %12, %if.then19 ], [ %str.0168, %if.else29 ], [ %str.1.ph, %if.end38.sink.split ]
  %pname.1 = phi i8* [ null, %if.then19 ], [ null, %if.else29 ], [ %call27, %if.end38.sink.split ]
  %fld.addr.0 = phi %struct.ASN1_VALUE_st** [ %asn1_value, %if.then19 ], [ %fld, %if.else29 ], [ %fld.addr.0.ph, %if.end38.sink.split ]
  %cmp39 = icmp eq i64 %utype.1, 5
  br i1 %cmp39, label %if.then41, label %if.end47

if.then41:                                        ; preds = %if.end38
  %call42 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #5
  %cmp43 = icmp sgt i32 %call42, 0
  %. = zext i1 %cmp43 to i32
  br label %cleanup

if.end47:                                         ; preds = %if.end38
  %tobool48.not = icmp eq i8* %pname.1, null
  br i1 %tobool48.not, label %if.end60, label %if.then49

if.then49:                                        ; preds = %if.end47
  %call50 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef nonnull %pname.1) #5
  %cmp51 = icmp slt i32 %call50, 1
  br i1 %cmp51, label %cleanup, label %if.end54

if.end54:                                         ; preds = %if.then49
  %call55 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #5
  %cmp56 = icmp slt i32 %call55, 1
  br i1 %cmp56, label %cleanup, label %if.end60

if.end60:                                         ; preds = %if.end54, %if.end47
  switch i64 %utype.1, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb67
    i64 10, label %sw.bb67
    i64 23, label %sw.bb69
    i64 24, label %sw.bb71
    i64 6, label %sw.bb73
    i64 4, label %sw.epilog.thread
    i64 3, label %sw.epilog.thread
    i64 16, label %sw.bb77
    i64 17, label %sw.bb77
    i64 -3, label %sw.bb77
  ]

sw.bb:                                            ; preds = %if.end60
  %15 = bitcast %struct.ASN1_VALUE_st** %fld.addr.0 to i32*
  %16 = load i32, i32* %15, align 4, !tbaa !45
  %cmp61 = icmp eq i32 %16, -1
  br i1 %cmp61, label %if.then63, label %if.end65

if.then63:                                        ; preds = %sw.bb
  %size = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 5
  %17 = load i64, i64* %size, align 8, !tbaa !46
  %conv64 = trunc i64 %17 to i32
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %sw.bb
  %boolval.0 = phi i32 [ %conv64, %if.then63 ], [ %16, %sw.bb ]
  %call66 = tail call fastcc i32 @asn1_print_boolean(%struct.bio_st* noundef %out, i32 noundef %boolval.0) #6
  br label %sw.epilog

sw.bb67:                                          ; preds = %if.end60, %if.end60
  %call68 = tail call fastcc i32 @asn1_print_integer(%struct.bio_st* noundef %out, %struct.asn1_string_st* noundef %str.1) #6
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end60
  %call70 = tail call i32 @ASN1_UTCTIME_print(%struct.bio_st* noundef %out, %struct.asn1_string_st* noundef %str.1) #5
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end60
  %call72 = tail call i32 @ASN1_GENERALIZEDTIME_print(%struct.bio_st* noundef %out, %struct.asn1_string_st* noundef %str.1) #5
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.end60
  %18 = bitcast %struct.ASN1_VALUE_st** %fld.addr.0 to %struct.asn1_object_st**
  %19 = load %struct.asn1_object_st*, %struct.asn1_object_st** %18, align 8, !tbaa !13
  %call74 = tail call fastcc i32 @asn1_print_oid(%struct.bio_st* noundef %out, %struct.asn1_object_st* noundef %19) #6
  br label %sw.epilog

sw.bb77:                                          ; preds = %if.end60, %if.end60, %if.end60
  %call78 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #5
  %cmp79 = icmp slt i32 %call78, 1
  br i1 %cmp79, label %cleanup, label %if.end82

if.end82:                                         ; preds = %sw.bb77
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str.1, i64 0, i32 2
  %20 = load i8*, i8** %data, align 8, !tbaa !47
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str.1, i64 0, i32 0
  %21 = load i32, i32* %length, align 8, !tbaa !48
  %conv83 = sext i32 %21 to i64
  %call84 = tail call i32 @ASN1_parse_dump(%struct.bio_st* noundef %out, i8* noundef %20, i64 noundef %conv83, i32 noundef %indent, i32 noundef 0) #5
  %cmp85 = icmp slt i32 %call84, 1
  br i1 %cmp85, label %cleanup, label %if.end99

sw.default:                                       ; preds = %if.end60
  %str_flags = getelementptr inbounds %struct.asn1_pctx_st, %struct.asn1_pctx_st* %pctx, i64 0, i32 4
  %22 = load i64, i64* %str_flags, align 8, !tbaa !12
  %call89 = tail call i32 @ASN1_STRING_print_ex(%struct.bio_st* noundef %out, %struct.asn1_string_st* noundef %str.1, i64 noundef %22) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb73, %sw.bb71, %sw.bb69, %sw.bb67, %if.end65
  %ret.1 = phi i32 [ %call89, %sw.default ], [ %call74, %sw.bb73 ], [ %call72, %sw.bb71 ], [ %call70, %sw.bb69 ], [ %call68, %sw.bb67 ], [ %call66, %if.end65 ]
  %tobool90.not = icmp eq i32 %ret.1, 0
  br i1 %tobool90.not, label %cleanup, label %land.lhs.true94

sw.epilog.thread:                                 ; preds = %if.end60, %if.end60
  %call76 = tail call fastcc i32 @asn1_print_obstring(%struct.bio_st* noundef %out, %struct.asn1_string_st* noundef %str.1, i32 noundef %indent) #6
  %tobool90.not180 = icmp eq i32 %call76, 0
  br i1 %tobool90.not180, label %cleanup, label %if.end99

land.lhs.true94:                                  ; preds = %sw.epilog
  %call95 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #5
  %cmp96 = icmp slt i32 %call95, 1
  br i1 %cmp96, label %cleanup, label %if.end99

if.end99:                                         ; preds = %sw.epilog.thread, %if.end82, %land.lhs.true94
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.thread, %if.end82, %land.lhs.true94, %sw.epilog, %sw.bb77, %if.end54, %if.then49, %if.then41, %entry, %if.end99, %if.then3
  %retval.0 = phi i32 [ %call5, %if.then3 ], [ 1, %if.end99 ], [ 0, %entry ], [ %., %if.then41 ], [ 0, %if.then49 ], [ 0, %if.end54 ], [ 0, %sw.bb77 ], [ 0, %sw.epilog ], [ 0, %land.lhs.true94 ], [ 0, %if.end82 ], [ 0, %sw.epilog.thread ]
  ret i32 %retval.0
}

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @ossl_asn1_get_choice_selector_const(%struct.ASN1_VALUE_st** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_VALUE_st** @ossl_asn1_get_const_field_ptr(%struct.ASN1_VALUE_st** noundef, %struct.ASN1_TEMPLATE_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_TEMPLATE_st* @ossl_asn1_do_adb(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_TEMPLATE_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_const_ASN1_VALUE_num(%struct.stack_st_const_ASN1_VALUE* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_const_ASN1_VALUE* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ASN1_VALUE_st* @sk_const_ASN1_VALUE_value(%struct.stack_st_const_ASN1_VALUE* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_const_ASN1_VALUE* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #5
  %1 = bitcast i8* %call to %struct.ASN1_VALUE_st*
  ret %struct.ASN1_VALUE_st* %1
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @ASN1_tag2str(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_print_boolean(%struct.bio_st* noundef %out, i32 noundef %boolval) unnamed_addr #0 {
entry:
  %switch.selectcmp = icmp eq i32 %boolval, 0
  %switch.select = select i1 %switch.selectcmp, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)
  %switch.selectcmp3 = icmp eq i32 %boolval, -1
  %switch.select4 = select i1 %switch.selectcmp3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* %switch.select
  %call = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef %switch.select4) #5
  %cmp = icmp sgt i32 %call, 0
  %retval.0 = zext i1 %cmp to i32
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_print_integer(%struct.bio_st* noundef %out, %struct.asn1_string_st* noundef %str) unnamed_addr #0 {
entry:
  %call = tail call i8* @i2s_ASN1_INTEGER(%struct.v3_ext_method* noundef null, %struct.asn1_string_st* noundef %str) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef nonnull %call) #5
  %cmp2 = icmp sgt i32 %call1, 0
  %spec.select = zext i1 %cmp2 to i32
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 402) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @ASN1_UTCTIME_print(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_GENERALIZEDTIME_print(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_print_oid(%struct.bio_st* noundef %out, %struct.asn1_object_st* noundef %oid) unnamed_addr #0 {
entry:
  %objbuf = alloca [80 x i8], align 16
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %objbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #7
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %oid) #5
  %call1 = tail call i8* @OBJ_nid2ln(i32 noundef %call) #5
  %tobool.not = icmp eq i8* %call1, null
  %spec.store.select = select i1 %tobool.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* %call1
  %call2 = call i32 @OBJ_obj2txt(i8* noundef nonnull %0, i32 noundef 80, %struct.asn1_object_st* noundef %oid, i32 noundef 1) #5
  %call4 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8* noundef %spec.store.select, i8* noundef nonnull %0) #5
  %cmp = icmp sgt i32 %call4, 0
  %. = zext i1 %cmp to i32
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #7
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_print_obstring(%struct.bio_st* noundef %out, %struct.asn1_string_st* nocapture noundef readonly %str, i32 noundef %indent) unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str, i64 0, i32 1
  %0 = load i32, i32* %type, align 4, !tbaa !41
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str, i64 0, i32 3
  %1 = load i64, i64* %flags, align 8, !tbaa !49
  %and = and i64 %1, 7
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i64 noundef %and) #5
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %return, label %if.end7

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #5
  %cmp4 = icmp slt i32 %call3, 1
  br i1 %cmp4, label %return, label %if.end7

if.end7:                                          ; preds = %if.else, %if.then
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !48
  %cmp8 = icmp sgt i32 %2, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end7
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str, i64 0, i32 2
  %3 = load i8*, i8** %data, align 8, !tbaa !47
  %add = add nsw i32 %indent, 2
  %call10 = tail call i32 @BIO_dump_indent(%struct.bio_st* noundef %out, i8* noundef %3, i32 noundef %2, i32 noundef %add) #5
  %cmp11 = icmp slt i32 %call10, 1
  br i1 %cmp11, label %return, label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %if.end7
  br label %return

return:                                           ; preds = %land.lhs.true, %if.else, %if.then, %if.end13
  %retval.0 = phi i32 [ 1, %if.end13 ], [ 0, %if.then ], [ 0, %if.else ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

declare i32 @ASN1_parse_dump(%struct.bio_st* noundef, i8* noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_print_ex(%struct.bio_st* noundef, %struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

declare i8* @i2s_ASN1_INTEGER(%struct.v3_ext_method* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i8* @OBJ_nid2ln(i32 noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_dump_indent(%struct.bio_st* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"asn1_pctx_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 8}
!10 = !{!5, !6, i64 16}
!11 = !{!5, !6, i64 24}
!12 = !{!5, !6, i64 32}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!16, !14, i64 48}
!16 = !{!"ASN1_ITEM_st", !7, i64 0, !6, i64 8, !14, i64 16, !6, i64 24, !14, i64 32, !6, i64 40, !14, i64 48}
!17 = !{!16, !14, i64 32}
!18 = !{!19, !14, i64 0}
!19 = !{!"ASN1_PRINT_ARG_st", !14, i64 0, !20, i64 8, !14, i64 16}
!20 = !{!"int", !7, i64 0}
!21 = !{!19, !20, i64 8}
!22 = !{!19, !14, i64 16}
!23 = !{!24, !20, i64 8}
!24 = !{!"ASN1_AUX_st", !14, i64 0, !20, i64 8, !20, i64 12, !20, i64 16, !14, i64 24, !20, i64 32, !14, i64 40}
!25 = !{!16, !7, i64 0}
!26 = !{!16, !6, i64 8}
!27 = !{!16, !14, i64 16}
!28 = !{!29, !14, i64 48}
!29 = !{!"ASN1_EXTERN_FUNCS_st", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64}
!30 = !{!16, !6, i64 24}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = distinct !{!33, !32}
!34 = !{!35, !6, i64 0}
!35 = !{!"ASN1_TEMPLATE_st", !6, i64 0, !6, i64 8, !6, i64 16, !14, i64 24, !14, i64 32}
!36 = !{!35, !14, i64 32}
!37 = !{!35, !14, i64 24}
!38 = distinct !{!38, !32}
!39 = !{!40, !14, i64 56}
!40 = !{!"ASN1_PRIMITIVE_FUNCS_st", !14, i64 0, !6, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56}
!41 = !{!42, !20, i64 4}
!42 = !{!"asn1_string_st", !20, i64 0, !20, i64 4, !14, i64 8, !6, i64 16}
!43 = !{!44, !20, i64 0}
!44 = !{!"asn1_type_st", !20, i64 0, !7, i64 8}
!45 = !{!20, !20, i64 0}
!46 = !{!16, !6, i64 40}
!47 = !{!42, !14, i64 8}
!48 = !{!42, !20, i64 0}
!49 = !{!42, !6, i64 16}
