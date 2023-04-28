; ModuleID = 'crypto/ec/ec_backend.c'
source_filename = "crypto/ec/ec_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_item_st = type { i32, i8* }
%struct.ec_key_st = type { %struct.ec_key_method_st*, %struct.engine_st*, i32, %struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, i32, i32, i32, %struct.crypto_ex_data_st, i8*, %struct.ossl_lib_ctx_st*, i8*, i64 }
%struct.ec_key_method_st = type { i8*, i32, i32 (%struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_group_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*, %struct.ec_point_st*)*, i32 (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* }
%struct.bignum_ctx = type opaque
%struct.ECDSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.engine_st = type opaque
%struct.ec_group_st = type { %struct.ec_method_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, i32, i32, i32, i32, i8*, i64, %struct.bignum_st*, [6 x i32], %struct.bignum_st*, %struct.bignum_st*, i32, i8*, i8*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, %struct.bn_mont_ctx_st*, i32, %union.anon, %struct.ossl_lib_ctx_st*, i8* }
%struct.ec_method_st = type { i32, i32, i32 (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, i32 (%struct.ec_point_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)*, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i64 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* }
%struct.bn_mont_ctx_st = type opaque
%union.anon = type { %struct.nistp224_pre_comp_st* }
%struct.nistp224_pre_comp_st = type opaque
%struct.ec_point_st = type { %struct.ec_method_st*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i32 }
%struct.bignum_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_param_bld_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.pkcs8_priv_key_info_st = type opaque

@encoding_nameid_map = internal unnamed_addr constant [2 x %struct.ossl_item_st] [%struct.ossl_item_st { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0) }, %struct.ossl_item_st { i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0) }], align 16
@check_group_type_nameid_map = internal unnamed_addr constant [3 x %struct.ossl_item_st] [%struct.ossl_item_st { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0) }, %struct.ossl_item_st { i32 8192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0) }, %struct.ossl_item_st { i32 16384, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0) }], align 16
@format_nameid_map = internal unnamed_addr constant [3 x %struct.ossl_item_st] [%struct.ossl_item_st { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0) }, %struct.ossl_item_st { i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0) }, %struct.ossl_item_st { i32 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [23 x i8] c"crypto/ec/ec_backend.c\00", align 1
@__func__.ossl_ec_group_todata = private unnamed_addr constant [21 x i8] c"ossl_ec_group_todata\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"point-format\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"use-cofactor-flag\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"include-public\00", align 1
@__func__.ossl_ec_key_dup = private unnamed_addr constant [16 x i8] c"ossl_ec_key_dup\00", align 1
@__func__.ossl_ec_key_param_from_x509_algor = private unnamed_addr constant [34 x i8] c"ossl_ec_key_param_from_x509_algor\00", align 1
@__func__.ossl_ec_key_from_pkcs8 = private unnamed_addr constant [23 x i8] c"ossl_ec_key_from_pkcs8\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"explicit\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"named_curve\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"named\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"named-nist\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"uncompressed\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"compressed\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"hybrid\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"prime-field\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"characteristic-two-field\00", align 1
@__func__.ec_group_explicit_todata = private unnamed_addr constant [25 x i8] c"ec_group_explicit_todata\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"field-type\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"generator\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"cofactor\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@__func__.ec_key_point_format_fromdata = private unnamed_addr constant [29 x i8] c"ec_key_point_format_fromdata\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"group-check\00", align 1

; Function Attrs: nofree noinline nounwind readonly uwtable
define i32 @ossl_ec_encoding_name2id(i8* noundef readonly %name) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %name, null
  br i1 %cmp, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %call = tail call i32 @strcasecmp(i8* noundef nonnull %name, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #6
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then3, label %for.inc

if.then3:                                         ; preds = %for.inc, %for.body.preheader
  %i.014.lcssa = phi i64 [ 0, %for.body.preheader ], [ 1, %for.inc ]
  %id = getelementptr inbounds [2 x %struct.ossl_item_st], [2 x %struct.ossl_item_st]* @encoding_nameid_map, i64 0, i64 %i.014.lcssa, i32 0
  %0 = load i32, i32* %id, align 16, !tbaa !4
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %call.1 = tail call i32 @strcasecmp(i8* noundef nonnull %name, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)) #6
  %cmp2.1 = icmp eq i32 %call.1, 0
  br i1 %cmp2.1, label %if.then3, label %cleanup

cleanup:                                          ; preds = %for.inc, %entry, %if.then3
  %retval.0 = phi i32 [ %0, %if.then3 ], [ 1, %entry ], [ -1, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define i8* @ossl_ec_check_group_type_id2name(i32 noundef %id) local_unnamed_addr #3 {
entry:
  switch i32 %id, label %cleanup [
    i32 0, label %if.then
    i32 8192, label %if.then.fold.split
    i32 16384, label %if.then.fold.split13
  ]

if.then.fold.split:                               ; preds = %entry
  br label %if.then

if.then.fold.split13:                             ; preds = %entry
  br label %if.then

if.then:                                          ; preds = %entry, %if.then.fold.split13, %if.then.fold.split
  %i.011.lcssa = phi i64 [ 0, %entry ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split13 ]
  %ptr = getelementptr inbounds [3 x %struct.ossl_item_st], [3 x %struct.ossl_item_st]* @check_group_type_nameid_map, i64 0, i64 %i.011.lcssa, i32 1
  %0 = load i8*, i8** %ptr, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %0, %if.then ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_set_check_group_type_from_name(%struct.ec_key_st* noundef %ec, i8* noundef %name) local_unnamed_addr #4 {
entry:
  %call = tail call fastcc i32 @ec_check_group_type_name2id(i8* noundef %name) #7
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @EC_KEY_clear_flags(%struct.ec_key_st* noundef %ec, i32 noundef 24576) #8
  tail call void @EC_KEY_set_flags(%struct.ec_key_st* noundef %ec, i32 noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define internal fastcc i32 @ec_check_group_type_name2id(i8* noundef readonly %name) unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %name, null
  br i1 %cmp, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %call = tail call i32 @strcasecmp(i8* noundef nonnull %name, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)) #6
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then3, label %for.inc

if.then3:                                         ; preds = %for.inc.1, %for.inc, %for.body.preheader
  %i.014.lcssa = phi i64 [ 0, %for.body.preheader ], [ 1, %for.inc ], [ 2, %for.inc.1 ]
  %id = getelementptr inbounds [3 x %struct.ossl_item_st], [3 x %struct.ossl_item_st]* @check_group_type_nameid_map, i64 0, i64 %i.014.lcssa, i32 0
  %0 = load i32, i32* %id, align 16, !tbaa !4
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %call.1 = tail call i32 @strcasecmp(i8* noundef nonnull %name, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0)) #6
  %cmp2.1 = icmp eq i32 %call.1, 0
  br i1 %cmp2.1, label %if.then3, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %call.2 = tail call i32 @strcasecmp(i8* noundef nonnull %name, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0)) #6
  %cmp2.2 = icmp eq i32 %call.2, 0
  br i1 %cmp2.2, label %if.then3, label %cleanup

cleanup:                                          ; preds = %for.inc.1, %entry, %if.then3
  %retval.0 = phi i32 [ %0, %if.then3 ], [ 0, %entry ], [ -1, %for.inc.1 ]
  ret i32 %retval.0
}

declare void @EC_KEY_clear_flags(%struct.ec_key_st* noundef, i32 noundef) local_unnamed_addr #5

declare void @EC_KEY_set_flags(%struct.ec_key_st* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind readonly uwtable
define i32 @ossl_ec_pt_format_name2id(i8* noundef readonly %name) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %name, null
  br i1 %cmp, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %call = tail call i32 @strcasecmp(i8* noundef nonnull %name, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #6
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then3, label %for.inc

if.then3:                                         ; preds = %for.inc.1, %for.inc, %for.body.preheader
  %i.014.lcssa = phi i64 [ 0, %for.body.preheader ], [ 1, %for.inc ], [ 2, %for.inc.1 ]
  %id = getelementptr inbounds [3 x %struct.ossl_item_st], [3 x %struct.ossl_item_st]* @format_nameid_map, i64 0, i64 %i.014.lcssa, i32 0
  %0 = load i32, i32* %id, align 16, !tbaa !4
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %call.1 = tail call i32 @strcasecmp(i8* noundef nonnull %name, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0)) #6
  %cmp2.1 = icmp eq i32 %call.1, 0
  br i1 %cmp2.1, label %if.then3, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %call.2 = tail call i32 @strcasecmp(i8* noundef nonnull %name, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)) #6
  %cmp2.2 = icmp eq i32 %call.2, 0
  br i1 %cmp2.2, label %if.then3, label %cleanup

cleanup:                                          ; preds = %for.inc.1, %entry, %if.then3
  %retval.0 = phi i32 [ %0, %if.then3 ], [ 4, %entry ], [ -1, %for.inc.1 ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define i8* @ossl_ec_pt_format_id2name(i32 noundef %id) local_unnamed_addr #3 {
entry:
  switch i32 %id, label %cleanup [
    i32 4, label %if.then
    i32 2, label %if.then.fold.split
    i32 6, label %if.then.fold.split13
  ]

if.then.fold.split:                               ; preds = %entry
  br label %if.then

if.then.fold.split13:                             ; preds = %entry
  br label %if.then

if.then:                                          ; preds = %entry, %if.then.fold.split13, %if.then.fold.split
  %i.011.lcssa = phi i64 [ 0, %entry ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split13 ]
  %ptr = getelementptr inbounds [3 x %struct.ossl_item_st], [3 x %struct.ossl_item_st]* @format_nameid_map, i64 0, i64 %i.011.lcssa, i32 1
  %0 = load i8*, i8** %ptr, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %0, %if.then ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_group_todata(%struct.ec_group_st* noundef %group, %struct.ossl_param_bld_st* noundef %tmpl, %struct.ossl_param_st* noundef %params, %struct.ossl_lib_ctx_st* nocapture noundef readnone %libctx, i8* nocapture noundef readnone %propq, %struct.bignum_ctx* noundef %bnctx, i8** noundef %genbuf) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.ec_group_st* %group, null
  br i1 %cmp, label %cleanup34.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @EC_GROUP_get_point_conversion_form(%struct.ec_group_st* noundef nonnull %group) #8
  %call1 = tail call i8* @ossl_ec_pt_format_id2name(i32 noundef %call) #7
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %cleanup34.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call i32 @ossl_param_build_set_utf8_string(%struct.ossl_param_bld_st* noundef %tmpl, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %call1) #8
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup34.sink.split, label %if.end5

if.end5:                                          ; preds = %lor.lhs.false
  %call6 = tail call i32 @EC_GROUP_get_asn1_flag(%struct.ec_group_st* noundef nonnull %group) #8
  %and = and i32 %call6, 1
  %call7 = tail call fastcc i8* @ec_param_encoding_id2name(i32 noundef %and) #7
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %cleanup34.sink.split, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end5
  %call10 = tail call i32 @ossl_param_build_set_utf8_string(%struct.ossl_param_bld_st* noundef %tmpl, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %call7) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup34.sink.split, label %if.end13

if.end13:                                         ; preds = %lor.lhs.false9
  %call14 = tail call i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef nonnull %group) #8
  %cmp15 = icmp eq %struct.ossl_param_bld_st* %tmpl, null
  %cmp17 = icmp eq i32 %call14, 0
  %or.cond = select i1 %cmp15, i1 true, i1 %cmp17
  br i1 %or.cond, label %if.then18, label %if.then25

if.then18:                                        ; preds = %if.end13
  %call19 = tail call fastcc i32 @ec_group_explicit_todata(%struct.ec_group_st* noundef nonnull %group, %struct.ossl_param_bld_st* noundef %tmpl, %struct.ossl_param_st* noundef %params, %struct.bignum_ctx* noundef %bnctx, i8** noundef %genbuf) #7
  %tobool20.not = icmp eq i32 %call19, 0
  %brmerge = select i1 %tobool20.not, i1 true, i1 %cmp17
  %not.tobool20.not = xor i1 %tobool20.not, true
  %.mux = zext i1 %not.tobool20.not to i32
  br i1 %brmerge, label %cleanup34, label %if.then25

if.then25:                                        ; preds = %if.end13, %if.then18
  %call26 = tail call i8* @OSSL_EC_curve_nid2name(i32 noundef %call14) #8
  %cmp27 = icmp eq i8* %call26, null
  br i1 %cmp27, label %cleanup34.sink.split, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.then25
  %call29 = tail call i32 @ossl_param_build_set_utf8_string(%struct.ossl_param_bld_st* noundef %tmpl, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %call26) #8
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %cleanup34.sink.split, label %cleanup34

cleanup34.sink.split:                             ; preds = %lor.lhs.false28, %if.then25, %if.end5, %lor.lhs.false9, %if.end, %lor.lhs.false, %entry
  %.sink66 = phi i32 [ 298, %entry ], [ 308, %lor.lhs.false ], [ 308, %if.end ], [ 317, %lor.lhs.false9 ], [ 317, %if.end5 ], [ 340, %if.then25 ], [ 340, %lor.lhs.false28 ]
  %.sink = phi i32 [ 134, %entry ], [ 104, %lor.lhs.false ], [ 104, %if.end ], [ 102, %lor.lhs.false9 ], [ 102, %if.end5 ], [ 141, %if.then25 ], [ 141, %lor.lhs.false28 ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink66, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_ec_group_todata, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef %.sink, i8* noundef null) #8
  br label %cleanup34

cleanup34:                                        ; preds = %cleanup34.sink.split, %if.then18, %lor.lhs.false28
  %retval.0 = phi i32 [ %.mux, %if.then18 ], [ 1, %lor.lhs.false28 ], [ 0, %cleanup34.sink.split ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #5

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #5

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #5

declare i32 @EC_GROUP_get_point_conversion_form(%struct.ec_group_st* noundef) local_unnamed_addr #5

declare i32 @ossl_param_build_set_utf8_string(%struct.ossl_param_bld_st* noundef, %struct.ossl_param_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #5

declare i32 @EC_GROUP_get_asn1_flag(%struct.ec_group_st* noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define internal fastcc i8* @ec_param_encoding_id2name(i32 noundef %id) unnamed_addr #3 {
entry:
  switch i32 %id, label %cleanup [
    i32 0, label %if.then
    i32 1, label %if.then.fold.split
  ]

if.then.fold.split:                               ; preds = %entry
  br label %if.then

if.then:                                          ; preds = %entry, %if.then.fold.split
  %i.011.lcssa = phi i64 [ 0, %entry ], [ 1, %if.then.fold.split ]
  %ptr = getelementptr inbounds [2 x %struct.ossl_item_st], [2 x %struct.ossl_item_st]* @encoding_nameid_map, i64 0, i64 %i.011.lcssa, i32 1
  %0 = load i8*, i8** %ptr, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %0, %if.then ], [ null, %entry ]
  ret i8* %retval.0
}

declare i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ec_group_explicit_todata(%struct.ec_group_st* noundef %group, %struct.ossl_param_bld_st* noundef %tmpl, %struct.ossl_param_st* noundef %params, %struct.bignum_ctx* noundef %bnctx, i8** noundef %genbuf) unnamed_addr #4 {
entry:
  %call = tail call i32 @EC_GROUP_get_field_type(%struct.ec_group_st* noundef %group) #8
  switch i32 %call, label %cleanup123.sink.split [
    i32 406, label %if.end4
    i32 407, label %if.then2
  ]

if.then2:                                         ; preds = %entry
  br label %if.end4

if.end4:                                          ; preds = %entry, %if.then2
  %field_type.0 = phi i8* [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), %if.then2 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), %entry ]
  %call5 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #8
  %call6 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #8
  %call7 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #8
  %cmp8 = icmp ne %struct.ossl_param_bld_st* %tmpl, null
  %cmp9 = icmp ne %struct.ossl_param_st* %call5, null
  %or.cond = select i1 %cmp8, i1 true, i1 %cmp9
  %cmp11 = icmp ne %struct.ossl_param_st* %call6, null
  %or.cond130 = select i1 %or.cond, i1 true, i1 %cmp11
  %cmp13 = icmp ne %struct.ossl_param_st* %call7, null
  %or.cond131 = select i1 %or.cond130, i1 true, i1 %cmp13
  br i1 %or.cond131, label %if.then14, label %if.end36

if.then14:                                        ; preds = %if.end4
  %call15 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %bnctx) #8
  %call16 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %bnctx) #8
  %call17 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %bnctx) #8
  %cmp18 = icmp eq %struct.bignum_st* %call17, null
  br i1 %cmp18, label %cleanup123.sink.split, label %if.end20

if.end20:                                         ; preds = %if.then14
  %call21 = tail call i32 @EC_GROUP_get_curve(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call16, %struct.bignum_st* noundef nonnull %call17, %struct.bignum_ctx* noundef %bnctx) #8
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %cleanup123.sink.split, label %if.end23

if.end23:                                         ; preds = %if.end20
  %call24 = tail call i32 @ossl_param_build_set_bn(%struct.ossl_param_bld_st* noundef %tmpl, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %struct.bignum_st* noundef %call15) #8
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %cleanup123.sink.split, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %if.end23
  %call27 = tail call i32 @ossl_param_build_set_bn(%struct.ossl_param_bld_st* noundef %tmpl, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), %struct.bignum_st* noundef %call16) #8
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %cleanup123.sink.split, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false26
  %call30 = tail call i32 @ossl_param_build_set_bn(%struct.ossl_param_bld_st* noundef %tmpl, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call17) #8
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup123.sink.split, label %if.end36

if.end36:                                         ; preds = %lor.lhs.false29, %if.end4
  %call37 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0)) #8
  %cmp40 = icmp ne %struct.ossl_param_st* %call37, null
  %or.cond132 = select i1 %cmp8, i1 true, i1 %cmp40
  br i1 %or.cond132, label %if.then41, label %if.end53

if.then41:                                        ; preds = %if.end36
  %call42 = tail call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef %group) #8
  %cmp43 = icmp eq %struct.bignum_st* %call42, null
  br i1 %cmp43, label %cleanup123.sink.split, label %if.end45

if.end45:                                         ; preds = %if.then41
  %call46 = tail call i32 @ossl_param_build_set_bn(%struct.ossl_param_bld_st* noundef %tmpl, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call42) #8
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %cleanup123.sink.split, label %if.end53

if.end53:                                         ; preds = %if.end45, %if.end36
  %call54 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0)) #8
  %cmp57 = icmp ne %struct.ossl_param_st* %call54, null
  %or.cond133 = select i1 %cmp8, i1 true, i1 %cmp57
  br i1 %or.cond133, label %if.then58, label %if.end63

if.then58:                                        ; preds = %if.end53
  %call59 = tail call i32 @ossl_param_build_set_utf8_string(%struct.ossl_param_bld_st* noundef %tmpl, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i8* noundef %field_type.0) #8
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %cleanup123.sink.split, label %if.end63

if.end63:                                         ; preds = %if.then58, %if.end53
  %call64 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0)) #8
  %cmp67 = icmp ne %struct.ossl_param_st* %call64, null
  %or.cond134 = select i1 %cmp8, i1 true, i1 %cmp67
  br i1 %or.cond134, label %if.then68, label %if.end87

if.then68:                                        ; preds = %if.end63
  %call69 = tail call %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef %group) #8
  %call70 = tail call i32 @EC_GROUP_get_point_conversion_form(%struct.ec_group_st* noundef %group) #8
  %cmp71 = icmp eq %struct.ec_point_st* %call69, null
  br i1 %cmp71, label %cleanup123.sink.split, label %if.end73

if.end73:                                         ; preds = %if.then68
  %call74 = tail call i64 @EC_POINT_point2buf(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef nonnull %call69, i32 noundef %call70, i8** noundef %genbuf, %struct.bignum_ctx* noundef %bnctx) #8
  %cmp75 = icmp eq i64 %call74, 0
  br i1 %cmp75, label %cleanup123.sink.split, label %if.end77

if.end77:                                         ; preds = %if.end73
  %0 = load i8*, i8** %genbuf, align 8, !tbaa !11
  %call78 = tail call i32 @ossl_param_build_set_octet_string(%struct.ossl_param_bld_st* noundef %tmpl, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* noundef %0, i64 noundef %call74) #8
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %cleanup123.sink.split, label %if.end87

if.end87:                                         ; preds = %if.end77, %if.end63
  %call88 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0)) #8
  %cmp91 = icmp ne %struct.ossl_param_st* %call88, null
  %or.cond135 = select i1 %cmp8, i1 true, i1 %cmp91
  br i1 %or.cond135, label %if.then92, label %if.end102

if.then92:                                        ; preds = %if.end87
  %call93 = tail call %struct.bignum_st* @EC_GROUP_get0_cofactor(%struct.ec_group_st* noundef %group) #8
  %cmp94.not = icmp eq %struct.bignum_st* %call93, null
  br i1 %cmp94.not, label %if.end102, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then92
  %call95 = tail call i32 @ossl_param_build_set_bn(%struct.ossl_param_bld_st* noundef %tmpl, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call93) #8
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %cleanup123.sink.split, label %if.end102

if.end102:                                        ; preds = %if.then92, %land.lhs.true, %if.end87
  %call103 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #8
  %cmp106 = icmp ne %struct.ossl_param_st* %call103, null
  %or.cond136 = select i1 %cmp8, i1 true, i1 %cmp106
  br i1 %or.cond136, label %if.then107, label %cleanup123

if.then107:                                       ; preds = %if.end102
  %call108 = tail call i8* @EC_GROUP_get0_seed(%struct.ec_group_st* noundef %group) #8
  %call109 = tail call i64 @EC_GROUP_get_seed_len(%struct.ec_group_st* noundef %group) #8
  %cmp110 = icmp ne i8* %call108, null
  %cmp112 = icmp ne i64 %call109, 0
  %or.cond137 = select i1 %cmp110, i1 %cmp112, i1 false
  br i1 %or.cond137, label %land.lhs.true113, label %cleanup123

land.lhs.true113:                                 ; preds = %if.then107
  %call114 = tail call i32 @ossl_param_build_set_octet_string(%struct.ossl_param_bld_st* noundef %tmpl, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* noundef nonnull %call108, i64 noundef %call109) #8
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %cleanup123.sink.split, label %cleanup123

cleanup123.sink.split:                            ; preds = %land.lhs.true113, %land.lhs.true, %if.end77, %if.end73, %if.then68, %if.then58, %if.end45, %if.then41, %if.end23, %lor.lhs.false26, %lor.lhs.false29, %if.end20, %if.then14, %entry
  %.sink234 = phi i32 [ 179, %entry ], [ 193, %if.then14 ], [ 198, %if.end20 ], [ 204, %lor.lhs.false29 ], [ 204, %lor.lhs.false26 ], [ 204, %if.end23 ], [ 214, %if.then41 ], [ 219, %if.end45 ], [ 229, %if.then58 ], [ 241, %if.then68 ], [ 246, %if.end73 ], [ 252, %if.end77 ], [ 264, %land.lhs.true ], [ 279, %land.lhs.true113 ]
  %.sink = phi i32 [ 103, %entry ], [ 786688, %if.then14 ], [ 141, %if.end20 ], [ 786688, %lor.lhs.false29 ], [ 786688, %lor.lhs.false26 ], [ 786688, %if.end23 ], [ 122, %if.then41 ], [ 786688, %if.end45 ], [ 786688, %if.then58 ], [ 173, %if.then68 ], [ 173, %if.end73 ], [ 786688, %if.end77 ], [ 786688, %land.lhs.true ], [ 786688, %land.lhs.true113 ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink234, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ec_group_explicit_todata, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef %.sink, i8* noundef null) #8
  br label %cleanup123

cleanup123:                                       ; preds = %cleanup123.sink.split, %if.then107, %land.lhs.true113, %if.end102
  %retval.0 = phi i32 [ 1, %if.end102 ], [ 1, %land.lhs.true113 ], [ 1, %if.then107 ], [ 0, %cleanup123.sink.split ]
  ret i32 %retval.0
}

declare i8* @OSSL_EC_curve_nid2name(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_set_ecdh_cofactor_mode(%struct.ec_key_st* noundef %ec, i32 noundef %mode) local_unnamed_addr #4 {
entry:
  %call = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef %ec) #8
  %0 = icmp ugt i32 %mode, 1
  br i1 %0, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.bignum_st* @EC_GROUP_get0_cofactor(%struct.ec_group_st* noundef %call) #8
  %cmp3 = icmp eq %struct.bignum_st* %call2, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @BN_is_one(%struct.bignum_st* noundef nonnull %call2) #8
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end5
  %cmp9 = icmp eq i32 %mode, 1
  br i1 %cmp9, label %if.then10, label %if.then12

if.then10:                                        ; preds = %if.end8
  tail call void @EC_KEY_set_flags(%struct.ec_key_st* noundef %ec, i32 noundef 4096) #8
  br label %cleanup

if.then12:                                        ; preds = %if.end8
  tail call void @EC_KEY_clear_flags(%struct.ec_key_st* noundef %ec, i32 noundef 4096) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.then12, %if.end5, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 1, %if.end5 ], [ 1, %if.then12 ], [ 1, %if.then10 ]
  ret i32 %retval.0
}

declare %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef) local_unnamed_addr #5

declare %struct.bignum_st* @EC_GROUP_get0_cofactor(%struct.ec_group_st* noundef) local_unnamed_addr #5

declare i32 @BN_is_one(%struct.bignum_st* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_key_fromdata(%struct.ec_key_st* noundef %ec, %struct.ossl_param_st* noundef %params, i32 noundef %include_private) local_unnamed_addr #4 {
entry:
  %priv_key = alloca %struct.bignum_st*, align 8
  %pub_key = alloca i8*, align 8
  %pub_key_len = alloca i64, align 8
  %0 = bitcast %struct.bignum_st** %priv_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.bignum_st* null, %struct.bignum_st** %priv_key, align 8, !tbaa !11
  %1 = bitcast i8** %pub_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store i8* null, i8** %pub_key, align 8, !tbaa !11
  %2 = bitcast i64* %pub_key_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  %call = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef %ec) #8
  %cmp = icmp eq %struct.ec_group_st* %call, null
  br i1 %cmp, label %cleanup59, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #8
  %tobool = icmp ne i32 %include_private, 0
  br i1 %tobool, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %param_priv_key.0 = phi %struct.ossl_param_st* [ %call3, %if.then2 ], [ null, %if.end ]
  %call5 = tail call %struct.ossl_lib_ctx_st* @ossl_ec_key_get_libctx(%struct.ec_key_st* noundef %ec) #8
  %call6 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %call5) #8
  %cmp7 = icmp eq %struct.bignum_ctx* %call6, null
  br i1 %cmp7, label %err, label %if.end9

if.end9:                                          ; preds = %if.end4
  %cmp10.not = icmp eq %struct.ossl_param_st* %call1, null
  br i1 %cmp10.not, label %if.end21, label %if.then11

if.then11:                                        ; preds = %if.end9
  %call12 = call i32 @OSSL_PARAM_get_octet_string(%struct.ossl_param_st* noundef nonnull %call1, i8** noundef nonnull %pub_key, i64 noundef 0, i64* noundef nonnull %pub_key_len) #8
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then11
  %call14 = call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef nonnull %call) #8
  %cmp15 = icmp eq %struct.ec_point_st* %call14, null
  br i1 %cmp15, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %3 = load i8*, i8** %pub_key, align 8, !tbaa !11
  %4 = load i64, i64* %pub_key_len, align 8, !tbaa !12
  %call17 = call i32 @EC_POINT_oct2point(%struct.ec_group_st* noundef nonnull %call, %struct.ec_point_st* noundef nonnull %call14, i8* noundef %3, i64 noundef %4, %struct.bignum_ctx* noundef nonnull %call6) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %if.end21

if.end21:                                         ; preds = %lor.lhs.false16, %if.end9
  %pub_point.0 = phi %struct.ec_point_st* [ %call14, %lor.lhs.false16 ], [ null, %if.end9 ]
  %cmp22 = icmp ne %struct.ossl_param_st* %param_priv_key.0, null
  %or.cond = and i1 %tobool, %cmp22
  br i1 %or.cond, label %if.then24, label %if.end52

if.then24:                                        ; preds = %if.end21
  %call25 = call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef nonnull %call) #8
  %cmp26 = icmp eq %struct.bignum_st* %call25, null
  br i1 %cmp26, label %err, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %if.then24
  %call28 = call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call25) #8
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %err

if.end31:                                         ; preds = %lor.lhs.false27
  %call32 = call i32 @bn_get_top(%struct.bignum_st* noundef nonnull %call25) #8
  %call33 = call %struct.bignum_st* @BN_secure_new() #8
  store %struct.bignum_st* %call33, %struct.bignum_st** %priv_key, align 8, !tbaa !11
  %cmp34 = icmp eq %struct.bignum_st* %call33, null
  br i1 %cmp34, label %err, label %if.end36

if.end36:                                         ; preds = %if.end31
  %add = add nsw i32 %call32, 2
  %call37 = call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef nonnull %call33, i32 noundef %add) #8
  %cmp38 = icmp eq %struct.bignum_st* %call37, null
  br i1 %cmp38, label %err, label %if.end40

if.end40:                                         ; preds = %if.end36
  call void @BN_set_flags(%struct.bignum_st* noundef nonnull %call33, i32 noundef 4) #8
  %call41 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef nonnull %param_priv_key.0, %struct.bignum_st** noundef nonnull %priv_key) #8
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %if.end46

if.end46:                                         ; preds = %if.end40
  %.pre = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !11
  %cmp47.not = icmp eq %struct.bignum_st* %.pre, null
  br i1 %cmp47.not, label %if.end52, label %land.lhs.true48

land.lhs.true48:                                  ; preds = %if.end46
  %call49 = call i32 @EC_KEY_set_private_key(%struct.ec_key_st* noundef %ec, %struct.bignum_st* noundef nonnull %.pre) #8
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err, label %if.end52

if.end52:                                         ; preds = %if.end21, %land.lhs.true48, %if.end46
  %cmp53.not = icmp eq %struct.ec_point_st* %pub_point.0, null
  br i1 %cmp53.not, label %if.end58, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %if.end52
  %call55 = call i32 @EC_KEY_set_public_key(%struct.ec_key_st* noundef %ec, %struct.ec_point_st* noundef nonnull %pub_point.0) #8
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %if.end58

if.end58:                                         ; preds = %land.lhs.true54, %if.end52
  br label %err

err:                                              ; preds = %if.end40, %if.end36, %if.end31, %if.then24, %lor.lhs.false27, %land.lhs.true54, %land.lhs.true48, %if.then11, %lor.lhs.false, %lor.lhs.false16, %if.end4, %if.end58
  %pub_point.1 = phi %struct.ec_point_st* [ null, %if.end4 ], [ null, %lor.lhs.false ], [ %pub_point.0, %if.end58 ], [ %pub_point.0, %land.lhs.true54 ], [ %pub_point.0, %land.lhs.true48 ], [ %call14, %lor.lhs.false16 ], [ null, %if.then11 ], [ %pub_point.0, %lor.lhs.false27 ], [ %pub_point.0, %if.then24 ], [ %pub_point.0, %if.end31 ], [ %pub_point.0, %if.end36 ], [ %pub_point.0, %if.end40 ]
  %ok.0 = phi i32 [ 0, %if.end4 ], [ 0, %lor.lhs.false ], [ 1, %if.end58 ], [ 0, %land.lhs.true54 ], [ 0, %land.lhs.true48 ], [ 0, %lor.lhs.false16 ], [ 0, %if.then11 ], [ 0, %lor.lhs.false27 ], [ 0, %if.then24 ], [ 0, %if.end31 ], [ 0, %if.end36 ], [ 0, %if.end40 ]
  call void @BN_CTX_free(%struct.bignum_ctx* noundef %call6) #8
  %5 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !11
  call void @BN_clear_free(%struct.bignum_st* noundef %5) #8
  %6 = load i8*, i8** %pub_key, align 8, !tbaa !11
  call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 489) #8
  call void @EC_POINT_free(%struct.ec_point_st* noundef %pub_point.1) #8
  br label %cleanup59

cleanup59:                                        ; preds = %entry, %err
  %retval.0 = phi i32 [ %ok.0, %err ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #5

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #5

declare %struct.ossl_lib_ctx_st* @ossl_ec_key_get_libctx(%struct.ec_key_st* noundef) local_unnamed_addr #5

declare i32 @OSSL_PARAM_get_octet_string(%struct.ossl_param_st* noundef, i8** noundef, i64 noundef, i64* noundef) local_unnamed_addr #5

declare %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef) local_unnamed_addr #5

declare i32 @EC_POINT_oct2point(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, i8* noundef, i64 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #5

declare %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef) local_unnamed_addr #5

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #5

declare i32 @bn_get_top(%struct.bignum_st* noundef) local_unnamed_addr #5

declare %struct.bignum_st* @BN_secure_new() local_unnamed_addr #5

declare %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #5

declare void @BN_set_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #5

declare i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef, %struct.bignum_st** noundef) local_unnamed_addr #5

declare i32 @EC_KEY_set_private_key(%struct.ec_key_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #5

declare i32 @EC_KEY_set_public_key(%struct.ec_key_st* noundef, %struct.ec_point_st* noundef) local_unnamed_addr #5

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #5

declare void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #5

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare void @EC_POINT_free(%struct.ec_point_st* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_group_fromdata(%struct.ec_key_st* noundef %ec, %struct.ossl_param_st* noundef %params) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.ec_key_st* %ec, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_ec_key_get_libctx(%struct.ec_key_st* noundef nonnull %ec) #8
  %call1 = tail call i8* @ossl_ec_key_get0_propq(%struct.ec_key_st* noundef nonnull %ec) #8
  %call2 = tail call %struct.ec_group_st* @EC_GROUP_new_from_params(%struct.ossl_param_st* noundef %params, %struct.ossl_lib_ctx_st* noundef %call, i8* noundef %call1) #8
  %call3 = tail call i32 @EC_KEY_set_group(%struct.ec_key_st* noundef nonnull %ec, %struct.ec_group_st* noundef %call2) #8
  %tobool.not = icmp ne i32 %call3, 0
  %spec.select = zext i1 %tobool.not to i32
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.ec_group_st* @EC_GROUP_new_from_params(%struct.ossl_param_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #5

declare i8* @ossl_ec_key_get0_propq(%struct.ec_key_st* noundef) local_unnamed_addr #5

declare i32 @EC_KEY_set_group(%struct.ec_key_st* noundef, %struct.ec_group_st* noundef) local_unnamed_addr #5

declare void @EC_GROUP_free(%struct.ec_group_st* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_key_otherparams_fromdata(%struct.ec_key_st* noundef %ec, %struct.ossl_param_st* noundef %params) local_unnamed_addr #4 {
entry:
  %mode = alloca i32, align 4
  %include = alloca i32, align 4
  %cmp = icmp eq %struct.ec_key_st* %ec, null
  br i1 %cmp, label %cleanup31, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0)) #8
  %cmp1.not = icmp eq %struct.ossl_param_st* %call, null
  br i1 %cmp1.not, label %if.end8, label %if.then2

if.then2:                                         ; preds = %if.end
  %0 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %call3 = call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef nonnull %call, i32* noundef nonnull %mode) #8
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then2
  %1 = load i32, i32* %mode, align 4, !tbaa !14
  %call4 = call i32 @ossl_ec_set_ecdh_cofactor_mode(%struct.ec_key_st* noundef nonnull %ec, i32 noundef %1) #7
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %if.end8.critedge

cleanup:                                          ; preds = %if.then2, %lor.lhs.false
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  br label %cleanup31

if.end8.critedge:                                 ; preds = %lor.lhs.false
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  br label %if.end8

if.end8:                                          ; preds = %if.end8.critedge, %if.end
  %call9 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0)) #8
  %cmp10.not = icmp eq %struct.ossl_param_st* %call9, null
  br i1 %cmp10.not, label %if.end22, label %if.then11

if.then11:                                        ; preds = %if.end8
  %2 = bitcast i32* %include to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #9
  store i32 1, i32* %include, align 4, !tbaa !14
  %call12 = call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef nonnull %call9, i32* noundef nonnull %include) #8
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup31.critedge, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.then11
  %3 = load i32, i32* %include, align 4, !tbaa !14
  call fastcc void @ec_set_include_public(%struct.ec_key_st* noundef nonnull %ec, i32 noundef %3) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #9
  br label %if.end22

if.end22:                                         ; preds = %lor.lhs.false14, %if.end8
  %call23 = call fastcc i32 @ec_key_point_format_fromdata(%struct.ec_key_st* noundef nonnull %ec, %struct.ossl_param_st* noundef %params) #7
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup31, label %if.end26

if.end26:                                         ; preds = %if.end22
  %call27 = call fastcc i32 @ec_key_group_check_fromdata(%struct.ec_key_st* noundef nonnull %ec, %struct.ossl_param_st* noundef %params) #7
  %tobool28.not = icmp ne i32 %call27, 0
  %. = zext i1 %tobool28.not to i32
  br label %cleanup31

cleanup31.critedge:                               ; preds = %if.then11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #9
  br label %cleanup31

cleanup31:                                        ; preds = %if.end26, %if.end22, %cleanup31.critedge, %cleanup, %entry
  %retval.3 = phi i32 [ 0, %cleanup ], [ 0, %entry ], [ 0, %cleanup31.critedge ], [ 0, %if.end22 ], [ %., %if.end26 ]
  ret i32 %retval.3
}

declare i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef, i32* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ec_set_include_public(%struct.ec_key_st* noundef %ec, i32 noundef %include) unnamed_addr #4 {
entry:
  %call = tail call i32 @EC_KEY_get_enc_flags(%struct.ec_key_st* noundef %ec) #8
  %tobool.not = icmp eq i32 %include, 0
  %and = and i32 %call, -3
  %masksel = select i1 %tobool.not, i32 2, i32 0
  %flags.0 = or i32 %and, %masksel
  tail call void @EC_KEY_set_enc_flags(%struct.ec_key_st* noundef %ec, i32 noundef %flags.0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ec_key_point_format_fromdata(%struct.ec_key_st* noundef %ec, %struct.ossl_param_st* noundef %params) unnamed_addr #4 {
entry:
  %format = alloca i32, align 4
  %0 = bitcast i32* %format to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  store i32 -1, i32* %format, align 4, !tbaa !14
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #8
  %cmp.not = icmp eq %struct.ossl_param_st* %call, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @ossl_ec_pt_format_param2id(%struct.ossl_param_st* noundef nonnull %call, i32* noundef nonnull %format) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 521, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ec_key_point_format_fromdata, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 104, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %1 = load i32, i32* %format, align 4, !tbaa !14
  tail call void @EC_KEY_set_conv_form(%struct.ec_key_st* noundef %ec, i32 noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 1, %if.end ], [ 1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ec_key_group_check_fromdata(%struct.ec_key_st* noundef %ec, %struct.ossl_param_st* noundef %params) unnamed_addr #4 {
entry:
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0)) #8
  %cmp.not = icmp eq %struct.ossl_param_st* %call, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @ec_set_check_group_type_from_param(%struct.ec_key_st* noundef %ec, %struct.ossl_param_st* noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_key_is_foreign(%struct.ec_key_st* noundef %ec) local_unnamed_addr #4 {
entry:
  %engine = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %ec, i64 0, i32 1
  %0 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !15
  %cmp.not = icmp eq %struct.engine_st* %0, null
  br i1 %cmp.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %call = tail call %struct.ec_key_method_st* @EC_KEY_get_method(%struct.ec_key_st* noundef nonnull %ec) #8
  %call1 = tail call %struct.ec_key_method_st* @EC_KEY_OpenSSL() #8
  %cmp2.not = icmp ne %struct.ec_key_method_st* %call, %call1
  %spec.select = zext i1 %cmp2.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

declare %struct.ec_key_method_st* @EC_KEY_get_method(%struct.ec_key_st* noundef) local_unnamed_addr #5

declare %struct.ec_key_method_st* @EC_KEY_OpenSSL() local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @ossl_ec_key_dup(%struct.ec_key_st* noundef %src, i32 noundef %selection) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.ec_key_st* %src, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 597, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ossl_ec_key_dup, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786690, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %libctx = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %src, i64 0, i32 12
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !18
  %propq = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %src, i64 0, i32 13
  %1 = load i8*, i8** %propq, align 8, !tbaa !19
  %engine = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %src, i64 0, i32 1
  %2 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !15
  %call = tail call %struct.ec_key_st* @ossl_ec_key_new_method_int(%struct.ossl_lib_ctx_st* noundef %0, i8* noundef %1, %struct.engine_st* noundef %2) #8
  %cmp1 = icmp eq %struct.ec_key_st* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %src, i64 0, i32 3
  %3 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !20
  %cmp4.not = icmp eq %struct.ec_group_st* %3, null
  %and = and i32 %selection, 4
  %cmp5.not = icmp eq i32 %and, 0
  %or.cond = or i1 %cmp5.not, %cmp4.not
  br i1 %or.cond, label %if.end35, label %if.then6

if.then6:                                         ; preds = %if.end3
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !18
  %5 = load i8*, i8** %propq, align 8, !tbaa !19
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %3, i64 0, i32 0
  %6 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !21
  %call10 = tail call %struct.ec_group_st* @ossl_ec_group_new_ex(%struct.ossl_lib_ctx_st* noundef %4, i8* noundef %5, %struct.ec_method_st* noundef %6) #8
  %group11 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %call, i64 0, i32 3
  store %struct.ec_group_st* %call10, %struct.ec_group_st** %group11, align 8, !tbaa !20
  %cmp13 = icmp eq %struct.ec_group_st* %call10, null
  br i1 %cmp13, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then6
  %7 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !20
  %call16 = tail call i32 @EC_GROUP_copy(%struct.ec_group_st* noundef nonnull %call10, %struct.ec_group_st* noundef %7) #8
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %err, label %if.end18

if.end18:                                         ; preds = %lor.lhs.false
  %meth19 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %src, i64 0, i32 0
  %8 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %meth19, align 8, !tbaa !23
  %cmp20.not = icmp eq %struct.ec_key_method_st* %8, null
  br i1 %cmp20.not, label %if.end35, label %if.then21

if.then21:                                        ; preds = %if.end18
  %9 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !15
  %cmp23.not = icmp eq %struct.engine_st* %9, null
  br i1 %cmp23.not, label %if.end29, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %if.then21
  %call26 = tail call i32 @ENGINE_init(%struct.engine_st* noundef nonnull %9) #8
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %err, label %land.lhs.true24.if.end29_crit_edge

land.lhs.true24.if.end29_crit_edge:               ; preds = %land.lhs.true24
  %.pre = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !15
  %.pre183 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %meth19, align 8, !tbaa !23
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true24.if.end29_crit_edge, %if.then21
  %10 = phi %struct.ec_key_method_st* [ %.pre183, %land.lhs.true24.if.end29_crit_edge ], [ %8, %if.then21 ]
  %11 = phi %struct.engine_st* [ %.pre, %land.lhs.true24.if.end29_crit_edge ], [ null, %if.then21 ]
  %engine31 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %call, i64 0, i32 1
  store %struct.engine_st* %11, %struct.engine_st** %engine31, align 8, !tbaa !15
  %meth33 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %call, i64 0, i32 0
  store %struct.ec_key_method_st* %10, %struct.ec_key_method_st** %meth33, align 8, !tbaa !23
  br label %if.end35

if.end35:                                         ; preds = %if.end18, %if.end29, %if.end3
  %pub_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %src, i64 0, i32 4
  %12 = load %struct.ec_point_st*, %struct.ec_point_st** %pub_key, align 8, !tbaa !24
  %cmp36.not = icmp eq %struct.ec_point_st* %12, null
  %and38 = and i32 %selection, 2
  %cmp39.not = icmp eq i32 %and38, 0
  %or.cond181 = or i1 %cmp39.not, %cmp36.not
  br i1 %or.cond181, label %if.end57, label %if.then40

if.then40:                                        ; preds = %if.end35
  %group41 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %call, i64 0, i32 3
  %13 = load %struct.ec_group_st*, %struct.ec_group_st** %group41, align 8, !tbaa !20
  %cmp42 = icmp eq %struct.ec_group_st* %13, null
  br i1 %cmp42, label %err, label %if.end44

if.end44:                                         ; preds = %if.then40
  %call46 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef nonnull %13) #8
  %pub_key47 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %call, i64 0, i32 4
  store %struct.ec_point_st* %call46, %struct.ec_point_st** %pub_key47, align 8, !tbaa !24
  %cmp49 = icmp eq %struct.ec_point_st* %call46, null
  br i1 %cmp49, label %err, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %if.end44
  %14 = load %struct.ec_point_st*, %struct.ec_point_st** %pub_key, align 8, !tbaa !24
  %call53 = tail call i32 @EC_POINT_copy(%struct.ec_point_st* noundef nonnull %call46, %struct.ec_point_st* noundef %14) #8
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %err, label %if.end57

if.end57:                                         ; preds = %lor.lhs.false50, %if.end35
  %priv_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %src, i64 0, i32 5
  %15 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !25
  %cmp58.not = icmp eq %struct.bignum_st* %15, null
  %and60 = and i32 %selection, 1
  %cmp61.not = icmp eq i32 %and60, 0
  %or.cond182 = or i1 %cmp61.not, %cmp58.not
  br i1 %or.cond182, label %if.end89, label %if.then62

if.then62:                                        ; preds = %if.end57
  %group63 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %call, i64 0, i32 3
  %16 = load %struct.ec_group_st*, %struct.ec_group_st** %group63, align 8, !tbaa !20
  %cmp64 = icmp eq %struct.ec_group_st* %16, null
  br i1 %cmp64, label %err, label %if.end66

if.end66:                                         ; preds = %if.then62
  %call67 = tail call %struct.bignum_st* @BN_new() #8
  %priv_key68 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %call, i64 0, i32 5
  store %struct.bignum_st* %call67, %struct.bignum_st** %priv_key68, align 8, !tbaa !25
  %cmp70 = icmp eq %struct.bignum_st* %call67, null
  br i1 %cmp70, label %err, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %if.end66
  %17 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !25
  %call74 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %call67, %struct.bignum_st* noundef %17) #8
  %tobool75.not = icmp eq %struct.bignum_st* %call74, null
  br i1 %tobool75.not, label %err, label %if.end77

if.end77:                                         ; preds = %lor.lhs.false71
  %18 = load %struct.ec_group_st*, %struct.ec_group_st** %group63, align 8, !tbaa !20
  %meth79 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %18, i64 0, i32 0
  %19 = load %struct.ec_method_st*, %struct.ec_method_st** %meth79, align 8, !tbaa !21
  %keycopy = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %19, i64 0, i32 45
  %20 = load i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)** %keycopy, align 8, !tbaa !26
  %tobool80.not = icmp eq i32 (%struct.ec_key_st*, %struct.ec_key_st*)* %20, null
  br i1 %tobool80.not, label %if.end89, label %land.lhs.true81

land.lhs.true81:                                  ; preds = %if.end77
  %call85 = tail call i32 %20(%struct.ec_key_st* noundef nonnull %call, %struct.ec_key_st* noundef nonnull %src) #8
  %cmp86 = icmp eq i32 %call85, 0
  br i1 %cmp86, label %err, label %if.end89

if.end89:                                         ; preds = %if.end77, %land.lhs.true81, %if.end57
  %and90 = and i32 %selection, 128
  %cmp91.not = icmp eq i32 %and90, 0
  br i1 %cmp91.not, label %if.end95, label %if.then92

if.then92:                                        ; preds = %if.end89
  %enc_flag = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %src, i64 0, i32 6
  %21 = load i32, i32* %enc_flag, align 8, !tbaa !28
  %enc_flag93 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %call, i64 0, i32 6
  store i32 %21, i32* %enc_flag93, align 8, !tbaa !28
  %conv_form = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %src, i64 0, i32 7
  %22 = load i32, i32* %conv_form, align 4, !tbaa !29
  %conv_form94 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %call, i64 0, i32 7
  store i32 %22, i32* %conv_form94, align 4, !tbaa !29
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %if.end89
  %version = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %src, i64 0, i32 2
  %23 = load i32, i32* %version, align 8, !tbaa !30
  %version96 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %call, i64 0, i32 2
  store i32 %23, i32* %version96, align 8, !tbaa !30
  %flags = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %src, i64 0, i32 9
  %24 = load i32, i32* %flags, align 4, !tbaa !31
  %flags97 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %call, i64 0, i32 9
  store i32 %24, i32* %flags97, align 4, !tbaa !31
  %ex_data = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %call, i64 0, i32 10
  %ex_data98 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %src, i64 0, i32 10
  %call99 = tail call i32 @CRYPTO_dup_ex_data(i32 noundef 8, %struct.crypto_ex_data_st* noundef nonnull %ex_data, %struct.crypto_ex_data_st* noundef nonnull %ex_data98) #8
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %err, label %if.end102

if.end102:                                        ; preds = %if.end95
  %meth103 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %call, i64 0, i32 0
  %25 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %meth103, align 8, !tbaa !23
  %cmp104.not = icmp eq %struct.ec_key_method_st* %25, null
  br i1 %cmp104.not, label %cleanup, label %land.lhs.true105

land.lhs.true105:                                 ; preds = %if.end102
  %copy = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %25, i64 0, i32 4
  %26 = load i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)** %copy, align 8, !tbaa !32
  %cmp107.not = icmp eq i32 (%struct.ec_key_st*, %struct.ec_key_st*)* %26, null
  br i1 %cmp107.not, label %cleanup, label %if.then108

if.then108:                                       ; preds = %land.lhs.true105
  %and109 = and i32 %selection, 3
  %cmp110.not = icmp eq i32 %and109, 3
  br i1 %cmp110.not, label %if.end112, label %err

if.end112:                                        ; preds = %if.then108
  %call115 = tail call i32 %26(%struct.ec_key_st* noundef nonnull %call, %struct.ec_key_st* noundef nonnull %src) #8
  %cmp116 = icmp eq i32 %call115, 0
  br i1 %cmp116, label %err, label %cleanup

err:                                              ; preds = %if.end112, %if.then108, %if.end95, %land.lhs.true81, %if.end66, %lor.lhs.false71, %if.then62, %if.end44, %lor.lhs.false50, %if.then40, %land.lhs.true24, %if.then6, %lor.lhs.false
  tail call void @EC_KEY_free(%struct.ec_key_st* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %land.lhs.true105, %if.end112, %if.end, %err, %if.then
  %retval.0 = phi %struct.ec_key_st* [ null, %if.then ], [ null, %err ], [ null, %if.end ], [ %call, %if.end112 ], [ %call, %land.lhs.true105 ], [ %call, %if.end102 ]
  ret %struct.ec_key_st* %retval.0
}

declare %struct.ec_key_st* @ossl_ec_key_new_method_int(%struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.engine_st* noundef) local_unnamed_addr #5

declare %struct.ec_group_st* @ossl_ec_group_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.ec_method_st* noundef) local_unnamed_addr #5

declare i32 @EC_GROUP_copy(%struct.ec_group_st* noundef, %struct.ec_group_st* noundef) local_unnamed_addr #5

declare i32 @ENGINE_init(%struct.engine_st* noundef) local_unnamed_addr #5

declare i32 @EC_POINT_copy(%struct.ec_point_st* noundef, %struct.ec_point_st* noundef) local_unnamed_addr #5

declare %struct.bignum_st* @BN_new() local_unnamed_addr #5

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #5

declare i32 @CRYPTO_dup_ex_data(i32 noundef, %struct.crypto_ex_data_st* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #5

declare void @EC_KEY_free(%struct.ec_key_st* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_encoding_param2id(%struct.ossl_param_st* noundef %p, i32* nocapture noundef writeonly %id) local_unnamed_addr #4 {
entry:
  %name = alloca i8*, align 8
  %0 = bitcast i8** %name to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* null, i8** %name, align 8, !tbaa !11
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %1 = load i32, i32* %data_type, align 8, !tbaa !34
  switch i32 %1, label %cleanup7 [
    i32 4, label %sw.bb
    i32 6, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %2 = load i8*, i8** %data, align 8, !tbaa !36
  store i8* %2, i8** %name, align 8, !tbaa !11
  %cmp = icmp ne i8* %2, null
  %conv = zext i1 %cmp to i32
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %call = call i32 @OSSL_PARAM_get_utf8_ptr(%struct.ossl_param_st* noundef nonnull %p, i8** noundef nonnull %name) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %status.0 = phi i32 [ %call, %sw.bb1 ], [ %conv, %sw.bb ]
  %tobool.not = icmp eq i32 %status.0, 0
  br i1 %tobool.not, label %cleanup7, label %if.then

if.then:                                          ; preds = %sw.epilog
  %3 = load i8*, i8** %name, align 8, !tbaa !11
  %call2 = call i32 @ossl_ec_encoding_name2id(i8* noundef %3) #7
  %cmp3 = icmp sgt i32 %call2, -1
  br i1 %cmp3, label %if.then5, label %cleanup7

if.then5:                                         ; preds = %if.then
  store i32 %call2, i32* %id, align 4, !tbaa !14
  br label %cleanup7

cleanup7:                                         ; preds = %entry, %sw.epilog, %if.then, %if.then5
  %retval.1 = phi i32 [ 1, %if.then5 ], [ 0, %if.then ], [ 0, %sw.epilog ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.1
}

declare i32 @OSSL_PARAM_get_utf8_ptr(%struct.ossl_param_st* noundef, i8** noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_pt_format_param2id(%struct.ossl_param_st* noundef %p, i32* nocapture noundef writeonly %id) local_unnamed_addr #4 {
entry:
  %name = alloca i8*, align 8
  %0 = bitcast i8** %name to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* null, i8** %name, align 8, !tbaa !11
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %1 = load i32, i32* %data_type, align 8, !tbaa !34
  switch i32 %1, label %cleanup7 [
    i32 4, label %sw.bb
    i32 6, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %2 = load i8*, i8** %data, align 8, !tbaa !36
  store i8* %2, i8** %name, align 8, !tbaa !11
  %cmp = icmp ne i8* %2, null
  %conv = zext i1 %cmp to i32
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %call = call i32 @OSSL_PARAM_get_utf8_ptr(%struct.ossl_param_st* noundef nonnull %p, i8** noundef nonnull %name) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %status.0 = phi i32 [ %call, %sw.bb1 ], [ %conv, %sw.bb ]
  %tobool.not = icmp eq i32 %status.0, 0
  br i1 %tobool.not, label %cleanup7, label %if.then

if.then:                                          ; preds = %sw.epilog
  %3 = load i8*, i8** %name, align 8, !tbaa !11
  %call2 = call i32 @ossl_ec_pt_format_name2id(i8* noundef %3) #7
  %cmp3 = icmp sgt i32 %call2, -1
  br i1 %cmp3, label %if.then5, label %cleanup7

if.then5:                                         ; preds = %if.then
  store i32 %call2, i32* %id, align 4, !tbaa !14
  br label %cleanup7

cleanup7:                                         ; preds = %entry, %sw.epilog, %if.then, %if.then5
  %retval.1 = phi i32 [ 1, %if.then5 ], [ 0, %if.then ], [ 0, %sw.epilog ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_x509_algor_is_sm2(%struct.X509_algor_st* noundef %palg) local_unnamed_addr #4 {
entry:
  %ptype = alloca i32, align 4
  %pval = alloca i8*, align 8
  %der = alloca i8*, align 8
  %0 = bitcast i32* %ptype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  store i32 0, i32* %ptype, align 4, !tbaa !14
  %1 = bitcast i8** %pval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store i8* null, i8** %pval, align 8, !tbaa !11
  call void @X509_ALGOR_get0(%struct.asn1_object_st** noundef null, i32* noundef nonnull %ptype, i8** noundef nonnull %pval, %struct.X509_algor_st* noundef %palg) #8
  %2 = load i32, i32* %ptype, align 4, !tbaa !14
  switch i32 %2, label %cleanup [
    i32 6, label %if.then
    i32 16, label %if.then4
  ]

if.then:                                          ; preds = %entry
  %3 = bitcast i8** %pval to %struct.asn1_object_st**
  %4 = load %struct.asn1_object_st*, %struct.asn1_object_st** %3, align 8, !tbaa !11
  %call = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %4) #8
  %cmp1 = icmp eq i32 %call, 1172
  %conv = zext i1 %cmp1 to i32
  br label %cleanup

if.then4:                                         ; preds = %entry
  %5 = bitcast i8** %pval to %struct.asn1_string_st**
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %5, align 8, !tbaa !11
  %7 = bitcast i8** %der to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #9
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %6, i64 0, i32 2
  %8 = load i8*, i8** %data, align 8, !tbaa !37
  store i8* %8, i8** %der, align 8, !tbaa !11
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %6, i64 0, i32 0
  %9 = load i32, i32* %length, align 8, !tbaa !39
  %conv5 = sext i32 %9 to i64
  %call6 = call %struct.ec_group_st* @d2i_ECPKParameters(%struct.ec_group_st** noundef null, i8** noundef nonnull %der, i64 noundef %conv5) #8
  %cmp7 = icmp eq %struct.ec_group_st* %call6, null
  br i1 %cmp7, label %if.end13, label %if.else

if.else:                                          ; preds = %if.then4
  %call10 = call i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef nonnull %call6) #8
  %cmp11 = icmp eq i32 %call10, 1172
  %conv12 = zext i1 %cmp11 to i32
  br label %if.end13

if.end13:                                         ; preds = %if.then4, %if.else
  %ret.0 = phi i32 [ %conv12, %if.else ], [ 0, %if.then4 ]
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %call6) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end13, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %ret.0, %if.end13 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare void @X509_ALGOR_get0(%struct.asn1_object_st** noundef, i32* noundef, i8** noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #5

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #5

declare %struct.ec_group_st* @d2i_ECPKParameters(%struct.ec_group_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @ossl_ec_key_param_from_x509_algor(%struct.X509_algor_st* noundef %palg, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #4 {
entry:
  %ptype = alloca i32, align 4
  %pval = alloca i8*, align 8
  %eckey = alloca %struct.ec_key_st*, align 8
  %pm = alloca i8*, align 8
  %0 = bitcast i32* %ptype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  store i32 0, i32* %ptype, align 4, !tbaa !14
  %1 = bitcast i8** %pval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store i8* null, i8** %pval, align 8, !tbaa !11
  %2 = bitcast %struct.ec_key_st** %eckey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  call void @X509_ALGOR_get0(%struct.asn1_object_st** noundef null, i32* noundef nonnull %ptype, i8** noundef nonnull %pval, %struct.X509_algor_st* noundef %palg) #8
  %call = call %struct.ec_key_st* @EC_KEY_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #8
  store %struct.ec_key_st* %call, %struct.ec_key_st** %eckey, align 8, !tbaa !11
  %cmp = icmp eq %struct.ec_key_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 771, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.ossl_ec_key_param_from_x509_algor, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #8
  br label %ecerr

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %ptype, align 4, !tbaa !14
  switch i32 %3, label %if.else27 [
    i32 16, label %if.then2
    i32 6, label %if.then12
  ]

if.then2:                                         ; preds = %if.end
  %4 = bitcast i8** %pval to %struct.asn1_string_st**
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %4, align 8, !tbaa !11
  %6 = bitcast i8** %pm to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %5, i64 0, i32 2
  %7 = load i8*, i8** %data, align 8, !tbaa !37
  store i8* %7, i8** %pm, align 8, !tbaa !11
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %5, i64 0, i32 0
  %8 = load i32, i32* %length, align 8, !tbaa !39
  %conv = sext i32 %8 to i64
  %call3 = call %struct.ec_key_st* @d2i_ECParameters(%struct.ec_key_st** noundef nonnull %eckey, i8** noundef nonnull %pm, i64 noundef %conv) #8
  %cmp4 = icmp eq %struct.ec_key_st* %call3, null
  br i1 %cmp4, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %.pre = load %struct.ec_key_st*, %struct.ec_key_st** %eckey, align 8, !tbaa !11
  br label %cleanup30

cleanup:                                          ; preds = %if.then2
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 782, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.ossl_ec_key_param_from_x509_algor, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 142, i8* noundef null) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %.pre53 = load %struct.ec_key_st*, %struct.ec_key_st** %eckey, align 8, !tbaa !11
  br label %ecerr

if.then12:                                        ; preds = %if.end
  %9 = bitcast i8** %pval to %struct.asn1_object_st**
  %10 = load %struct.asn1_object_st*, %struct.asn1_object_st** %9, align 8, !tbaa !11
  %call13 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %10) #8
  %call14 = call %struct.ec_group_st* @EC_GROUP_new_by_curve_name_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, i32 noundef %call13) #8
  %cmp15 = icmp eq %struct.ec_group_st* %call14, null
  br i1 %cmp15, label %ecerr, label %if.end18

if.end18:                                         ; preds = %if.then12
  call void @EC_GROUP_set_asn1_flag(%struct.ec_group_st* noundef nonnull %call14, i32 noundef 1) #8
  %call19 = call i32 @EC_KEY_set_group(%struct.ec_key_st* noundef nonnull %call, %struct.ec_group_st* noundef nonnull %call14) #8
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %ecerr, label %cleanup24

cleanup24:                                        ; preds = %if.end18
  call void @EC_GROUP_free(%struct.ec_group_st* noundef nonnull %call14) #8
  br label %cleanup30

if.else27:                                        ; preds = %if.end
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 800, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.ossl_ec_key_param_from_x509_algor, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 142, i8* noundef null) #8
  br label %ecerr

ecerr:                                            ; preds = %if.end18, %if.then12, %cleanup, %if.else27, %if.then
  %11 = phi %struct.ec_key_st* [ null, %if.then ], [ %.pre53, %cleanup ], [ %call, %if.else27 ], [ %call, %if.then12 ], [ %call, %if.end18 ]
  %group.0 = phi %struct.ec_group_st* [ null, %if.then ], [ null, %cleanup ], [ null, %if.else27 ], [ null, %if.then12 ], [ %call14, %if.end18 ]
  call void @EC_KEY_free(%struct.ec_key_st* noundef %11) #8
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %group.0) #8
  br label %cleanup30

cleanup30:                                        ; preds = %cleanup.thread, %cleanup24, %ecerr
  %retval.0 = phi %struct.ec_key_st* [ null, %ecerr ], [ %call, %cleanup24 ], [ %.pre, %cleanup.thread ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret %struct.ec_key_st* %retval.0
}

declare %struct.ec_key_st* @EC_KEY_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #5

declare %struct.ec_key_st* @d2i_ECParameters(%struct.ec_key_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #5

declare %struct.ec_group_st* @EC_GROUP_new_by_curve_name_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare void @EC_GROUP_set_asn1_flag(%struct.ec_group_st* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @ossl_ec_key_from_pkcs8(%struct.pkcs8_priv_key_info_st* noundef %p8inf, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #4 {
entry:
  %p = alloca i8*, align 8
  %pklen = alloca i32, align 4
  %eckey = alloca %struct.ec_key_st*, align 8
  %palg = alloca %struct.X509_algor_st*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* null, i8** %p, align 8, !tbaa !11
  %1 = bitcast i32* %pklen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  %2 = bitcast %struct.ec_key_st** %eckey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  %3 = bitcast %struct.X509_algor_st** %palg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
  %call = call i32 @PKCS8_pkey_get0(%struct.asn1_object_st** noundef null, i8** noundef nonnull %p, i32* noundef nonnull %pklen, %struct.X509_algor_st** noundef nonnull %palg, %struct.pkcs8_priv_key_info_st* noundef %p8inf) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %4 = load %struct.X509_algor_st*, %struct.X509_algor_st** %palg, align 8, !tbaa !11
  %call1 = call %struct.ec_key_st* @ossl_ec_key_param_from_x509_algor(%struct.X509_algor_st* noundef %4, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #7
  store %struct.ec_key_st* %call1, %struct.ec_key_st** %eckey, align 8, !tbaa !11
  %cmp = icmp eq %struct.ec_key_st* %call1, null
  br i1 %cmp, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %5 = load i32, i32* %pklen, align 4, !tbaa !14
  %conv = sext i32 %5 to i64
  %call4 = call %struct.ec_key_st* @d2i_ECPrivateKey(%struct.ec_key_st** noundef nonnull %eckey, i8** noundef nonnull %p, i64 noundef %conv) #8
  %tobool5.not = icmp eq %struct.ec_key_st* %call4, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 828, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ossl_ec_key_from_pkcs8, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 142, i8* noundef null) #8
  %.pre = load %struct.ec_key_st*, %struct.ec_key_st** %eckey, align 8, !tbaa !11
  br label %err

if.end7:                                          ; preds = %if.end3
  %6 = load %struct.ec_key_st*, %struct.ec_key_st** %eckey, align 8, !tbaa !11
  br label %cleanup

err:                                              ; preds = %if.end, %if.then6
  %7 = phi %struct.ec_key_st* [ null, %if.end ], [ %.pre, %if.then6 ]
  call void @EC_KEY_free(%struct.ec_key_st* noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %err, %if.end7
  %retval.0 = phi %struct.ec_key_st* [ null, %err ], [ %6, %if.end7 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret %struct.ec_key_st* %retval.0
}

declare i32 @PKCS8_pkey_get0(%struct.asn1_object_st** noundef, i8** noundef, i32* noundef, %struct.X509_algor_st** noundef, %struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #5

declare %struct.ec_key_st* @d2i_ECPrivateKey(%struct.ec_key_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #5

declare i32 @EC_GROUP_get_field_type(%struct.ec_group_st* noundef) local_unnamed_addr #5

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #5

declare i32 @EC_GROUP_get_curve(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #5

declare i32 @ossl_param_build_set_bn(%struct.ossl_param_bld_st* noundef, %struct.ossl_param_st* noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #5

declare %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef) local_unnamed_addr #5

declare i64 @EC_POINT_point2buf(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, i32 noundef, i8** noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #5

declare i32 @ossl_param_build_set_octet_string(%struct.ossl_param_bld_st* noundef, %struct.ossl_param_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare i8* @EC_GROUP_get0_seed(%struct.ec_group_st* noundef) local_unnamed_addr #5

declare i64 @EC_GROUP_get_seed_len(%struct.ec_group_st* noundef) local_unnamed_addr #5

declare i32 @EC_KEY_get_enc_flags(%struct.ec_key_st* noundef) local_unnamed_addr #5

declare void @EC_KEY_set_enc_flags(%struct.ec_key_st* noundef, i32 noundef) local_unnamed_addr #5

declare void @EC_KEY_set_conv_form(%struct.ec_key_st* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ec_set_check_group_type_from_param(%struct.ec_key_st* noundef %ec, %struct.ossl_param_st* noundef %p) unnamed_addr #4 {
entry:
  %name = alloca i8*, align 8
  %0 = bitcast i8** %name to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* null, i8** %name, align 8, !tbaa !11
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %1 = load i32, i32* %data_type, align 8, !tbaa !34
  switch i32 %1, label %cleanup [
    i32 4, label %sw.bb
    i32 6, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %2 = load i8*, i8** %data, align 8, !tbaa !36
  store i8* %2, i8** %name, align 8, !tbaa !11
  %cmp = icmp ne i8* %2, null
  %conv = zext i1 %cmp to i32
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %call = call i32 @OSSL_PARAM_get_utf8_ptr(%struct.ossl_param_st* noundef nonnull %p, i8** noundef nonnull %name) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %status.0 = phi i32 [ %call, %sw.bb1 ], [ %conv, %sw.bb ]
  %tobool.not = icmp eq i32 %status.0, 0
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %sw.epilog
  %3 = load i8*, i8** %name, align 8, !tbaa !11
  %call2 = call i32 @ossl_ec_set_check_group_type_from_name(%struct.ec_key_st* noundef %ec, i8* noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.epilog, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %sw.epilog ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

attributes #0 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ossl_item_st", !6, i64 0, !9, i64 8}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!5, !9, i64 8}
!11 = !{!9, !9, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!16, !9, i64 8}
!16 = !{!"ec_key_st", !9, i64 0, !9, i64 8, !6, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !6, i64 48, !7, i64 52, !7, i64 56, !6, i64 60, !17, i64 64, !9, i64 80, !9, i64 88, !9, i64 96, !13, i64 104}
!17 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!18 = !{!16, !9, i64 88}
!19 = !{!16, !9, i64 96}
!20 = !{!16, !9, i64 24}
!21 = !{!22, !9, i64 0}
!22 = !{!"ec_group_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !7, i64 44, !9, i64 48, !13, i64 56, !9, i64 64, !7, i64 72, !9, i64 96, !9, i64 104, !6, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !7, i64 152, !7, i64 160, !9, i64 168, !9, i64 176}
!23 = !{!16, !9, i64 0}
!24 = !{!16, !9, i64 32}
!25 = !{!16, !9, i64 40}
!26 = !{!27, !9, i64 352}
!27 = !{!"ec_method_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !9, i64 312, !9, i64 320, !9, i64 328, !9, i64 336, !9, i64 344, !9, i64 352, !9, i64 360, !9, i64 368, !9, i64 376, !9, i64 384, !9, i64 392, !9, i64 400, !9, i64 408, !9, i64 416, !9, i64 424, !9, i64 432}
!28 = !{!16, !6, i64 48}
!29 = !{!16, !7, i64 52}
!30 = !{!16, !6, i64 16}
!31 = !{!16, !6, i64 60}
!32 = !{!33, !9, i64 32}
!33 = !{!"ec_key_method_st", !9, i64 0, !6, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112}
!34 = !{!35, !6, i64 8}
!35 = !{!"ossl_param_st", !9, i64 0, !6, i64 8, !9, i64 16, !13, i64 24, !13, i64 32}
!36 = !{!35, !9, i64 16}
!37 = !{!38, !9, i64 8}
!38 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !9, i64 8, !13, i64 16}
!39 = !{!38, !6, i64 0}
