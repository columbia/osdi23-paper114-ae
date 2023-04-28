; ModuleID = 'crypto/asn1/x_algor.c'
source_filename = "crypto/asn1/x_algor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ASN1_VALUE_st = type opaque
%struct.stack_st_X509_ALGOR = type opaque
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_md_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }

@X509_ALGOR_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @X509_ALGOR_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [11 x i8] c"X509_ALGOR\00", align 1
@X509_ALGORS_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, %struct.ASN1_TEMPLATE_st* bitcast ({ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }* @X509_ALGORS_item_tt to %struct.ASN1_TEMPLATE_st*), i64 0, i8* null, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"X509_ALGORS\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"crypto/asn1/x_algor.c\00", align 1
@__func__.ossl_x509_algor_get_md = private unnamed_addr constant [23 x i8] c"ossl_x509_algor_get_md\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"algorithm\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"parameter\00", align 1
@X509_ALGOR_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_ANY_it }], align 16
@.str.7 = private unnamed_addr constant [11 x i8] c"algorithms\00", align 1
@X509_ALGORS_item_tt = internal constant { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @X509_ALGOR_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @X509_ALGOR_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @X509_ALGORS_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @X509_ALGORS_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_algor_st* @d2i_X509_ALGOR(%struct.X509_algor_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_algor_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @X509_ALGOR_it.local_it) #5
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.X509_algor_st*
  ret %struct.X509_algor_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_X509_ALGOR(%struct.X509_algor_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_algor_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @X509_ALGOR_it.local_it) #5
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.X509_algor_st* @X509_ALGOR_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @X509_ALGOR_it.local_it) #5
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.X509_algor_st*
  ret %struct.X509_algor_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @X509_ALGOR_free(%struct.X509_algor_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_algor_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @X509_ALGOR_it.local_it) #5
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509_ALGOR* @d2i_X509_ALGORS(%struct.stack_st_X509_ALGOR** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_X509_ALGOR** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @X509_ALGORS_it.local_it) #5
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.stack_st_X509_ALGOR*
  ret %struct.stack_st_X509_ALGOR* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_X509_ALGORS(%struct.stack_st_X509_ALGOR* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_X509_ALGOR* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @X509_ALGORS_it.local_it) #5
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_algor_st* @X509_ALGOR_dup(%struct.X509_algor_st* noundef %x) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_algor_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @X509_ALGOR_it.local_it, i8* noundef %0) #5
  %1 = bitcast i8* %call1 to %struct.X509_algor_st*
  ret %struct.X509_algor_st* %1
}

declare i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %alg, %struct.asn1_object_st* noundef %aobj, i32 noundef %ptype, i8* noundef %pval) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.X509_algor_st* %alg, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq i32 %ptype, -1
  br i1 %cmp1.not, label %if.end11.thread, label %if.then2

if.end11.thread:                                  ; preds = %if.end
  %algorithm34 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %alg, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm34, align 8, !tbaa !4
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %0) #5
  store %struct.asn1_object_st* %aobj, %struct.asn1_object_st** %algorithm34, align 8, !tbaa !4
  %parameter18 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %alg, i64 0, i32 1
  %1 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter18, align 8, !tbaa !9
  tail call void @ASN1_TYPE_free(%struct.asn1_type_st* noundef %1) #5
  store %struct.asn1_type_st* null, %struct.asn1_type_st** %parameter18, align 8, !tbaa !9
  br label %return

if.then2:                                         ; preds = %if.end
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %alg, i64 0, i32 1
  %2 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !9
  %cmp3 = icmp eq %struct.asn1_type_st* %2, null
  br i1 %cmp3, label %if.end6, label %if.end11

if.end6:                                          ; preds = %if.then2
  %call = tail call %struct.asn1_type_st* @ASN1_TYPE_new() #5
  store %struct.asn1_type_st* %call, %struct.asn1_type_st** %parameter, align 8, !tbaa !9
  %cmp8 = icmp eq %struct.asn1_type_st* %call, null
  br i1 %cmp8, label %return, label %if.end11

if.end11:                                         ; preds = %if.then2, %if.end6
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %alg, i64 0, i32 0
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !4
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %3) #5
  store %struct.asn1_object_st* %aobj, %struct.asn1_object_st** %algorithm, align 8, !tbaa !4
  %cond = icmp eq i32 %ptype, 0
  br i1 %cond, label %return, label %if.else

if.else:                                          ; preds = %if.end11
  %4 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !9
  tail call void @ASN1_TYPE_set(%struct.asn1_type_st* noundef %4, i32 noundef %ptype, i8* noundef %pval) #5
  br label %return

return:                                           ; preds = %if.end11, %if.end11.thread, %if.else, %if.end6, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end6 ], [ 1, %if.end11 ], [ 1, %if.else ], [ 1, %if.end11.thread ]
  ret i32 %retval.0
}

declare %struct.asn1_type_st* @ASN1_TYPE_new() local_unnamed_addr #2

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare void @ASN1_TYPE_free(%struct.asn1_type_st* noundef) local_unnamed_addr #2

declare void @ASN1_TYPE_set(%struct.asn1_type_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @X509_ALGOR_get0(%struct.asn1_object_st** noundef writeonly %paobj, i32* noundef writeonly %pptype, i8** noundef writeonly %ppval, %struct.X509_algor_st* nocapture noundef readonly %algor) local_unnamed_addr #3 {
entry:
  %tobool.not = icmp eq %struct.asn1_object_st** %paobj, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %algor, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !4
  store %struct.asn1_object_st* %0, %struct.asn1_object_st** %paobj, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq i32* %pptype, null
  br i1 %tobool1.not, label %if.end10, label %if.then2

if.then2:                                         ; preds = %if.end
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %algor, i64 0, i32 1
  %1 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !9
  %cmp = icmp eq %struct.asn1_type_st* %1, null
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then2
  store i32 -1, i32* %pptype, align 4, !tbaa !11
  br label %if.end10

if.else:                                          ; preds = %if.then2
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %1, i64 0, i32 0
  %2 = load i32, i32* %type, align 8, !tbaa !13
  store i32 %2, i32* %pptype, align 4, !tbaa !11
  %tobool6.not = icmp eq i8** %ppval, null
  br i1 %tobool6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.else
  %ptr = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %1, i64 0, i32 1, i32 0
  %3 = load i8*, i8** %ptr, align 8, !tbaa !15
  store i8* %3, i8** %ppval, align 8, !tbaa !10
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7, %if.then3, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @X509_ALGOR_set_md(%struct.X509_algor_st* noundef %alg, %struct.evp_md_st* noundef %md) local_unnamed_addr #1 {
entry:
  %flags = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 3
  %0 = load i64, i64* %flags, align 8, !tbaa !16
  %and = and i64 %0, 8
  %tobool.not = icmp eq i64 %and, 0
  %. = select i1 %tobool.not, i32 5, i32 -1
  %call = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %md) #5
  %call1 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %call) #5
  %call2 = tail call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %alg, %struct.asn1_object_st* noundef %call1, i32 noundef %., i8* noundef null) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: noinline nounwind uwtable
define i32 @X509_ALGOR_cmp(%struct.X509_algor_st* nocapture noundef readonly %a, %struct.X509_algor_st* nocapture noundef readonly %b) local_unnamed_addr #1 {
entry:
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %a, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !4
  %algorithm1 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %b, i64 0, i32 0
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm1, align 8, !tbaa !4
  %call = tail call i32 @OBJ_cmp(%struct.asn1_object_st* noundef %0, %struct.asn1_object_st* noundef %1) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %a, i64 0, i32 1
  %2 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !9
  %tobool2.not = icmp eq %struct.asn1_type_st* %2, null
  %parameter3 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %b, i64 0, i32 1
  %3 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter3, align 8, !tbaa !9
  %tobool4.not = icmp eq %struct.asn1_type_st* %3, null
  %or.cond = select i1 %tobool2.not, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %call9 = tail call i32 @ASN1_TYPE_cmp(%struct.asn1_type_st* noundef %2, %struct.asn1_type_st* noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end6
  %retval.0 = phi i32 [ %call9, %if.end6 ], [ %call, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare i32 @OBJ_cmp(%struct.asn1_object_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_TYPE_cmp(%struct.asn1_type_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_ALGOR_copy(%struct.X509_algor_st* noundef %dest, %struct.X509_algor_st* noundef readonly %src) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.X509_algor_st* %src, null
  %cmp1 = icmp eq %struct.X509_algor_st* %dest, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %dest, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !4
  %tobool.not = icmp eq %struct.asn1_object_st* %0, null
  br i1 %tobool.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef nonnull %0) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  store %struct.asn1_object_st* null, %struct.asn1_object_st** %algorithm, align 8, !tbaa !4
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %dest, i64 0, i32 1
  %1 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !9
  %tobool6.not = icmp eq %struct.asn1_type_st* %1, null
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end4
  tail call void @ASN1_TYPE_free(%struct.asn1_type_st* noundef nonnull %1) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end4
  store %struct.asn1_type_st* null, %struct.asn1_type_st** %parameter, align 8, !tbaa !9
  %algorithm11 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %src, i64 0, i32 0
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm11, align 8, !tbaa !4
  %tobool12.not = icmp eq %struct.asn1_object_st* %2, null
  br i1 %tobool12.not, label %if.end19, label %if.then13

if.then13:                                        ; preds = %if.end9
  %call = tail call %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef nonnull %2) #5
  store %struct.asn1_object_st* %call, %struct.asn1_object_st** %algorithm, align 8, !tbaa !4
  %cmp16 = icmp eq %struct.asn1_object_st* %call, null
  br i1 %cmp16, label %return, label %if.end19

if.end19:                                         ; preds = %if.then13, %if.end9
  %parameter20 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %src, i64 0, i32 1
  %3 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter20, align 8, !tbaa !9
  %cmp21.not = icmp eq %struct.asn1_type_st* %3, null
  br i1 %cmp21.not, label %if.end36, label %if.then22

if.then22:                                        ; preds = %if.end19
  %call23 = tail call %struct.asn1_type_st* @ASN1_TYPE_new() #5
  store %struct.asn1_type_st* %call23, %struct.asn1_type_st** %parameter, align 8, !tbaa !9
  %cmp26 = icmp eq %struct.asn1_type_st* %call23, null
  br i1 %cmp26, label %return, label %if.end28

if.end28:                                         ; preds = %if.then22
  %4 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter20, align 8, !tbaa !9
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %4, i64 0, i32 0
  %5 = load i32, i32* %type, align 8, !tbaa !13
  %ptr = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %4, i64 0, i32 1, i32 0
  %6 = load i8*, i8** %ptr, align 8, !tbaa !15
  %call32 = tail call i32 @ASN1_TYPE_set1(%struct.asn1_type_st* noundef nonnull %call23, i32 noundef %5, i8* noundef %6) #5
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %return, label %if.end36

if.end36:                                         ; preds = %if.end28, %if.end19
  br label %return

return:                                           ; preds = %if.end28, %if.then22, %if.then13, %entry, %if.end36
  %retval.0 = phi i32 [ 1, %if.end36 ], [ 0, %entry ], [ 0, %if.then13 ], [ 0, %if.then22 ], [ 0, %if.end28 ]
  ret i32 %retval.0
}

declare %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_TYPE_set1(%struct.asn1_type_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_x509_algor_new_from_md(%struct.X509_algor_st** nocapture noundef writeonly %palg, %struct.evp_md_st* noundef %md) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.evp_md_st* %md, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @EVP_MD_is_a(%struct.evp_md_st* noundef nonnull %md, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %call1 = tail call %struct.X509_algor_st* @X509_ALGOR_new() #6
  store %struct.X509_algor_st* %call1, %struct.X509_algor_st** %palg, align 8, !tbaa !10
  %cmp2 = icmp eq %struct.X509_algor_st* %call1, null
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  tail call void @X509_ALGOR_set_md(%struct.X509_algor_st* noundef nonnull %call1, %struct.evp_md_st* noundef nonnull %md) #6
  br label %return

return:                                           ; preds = %if.end, %entry, %lor.lhs.false, %if.end4
  %retval.0 = phi i32 [ 1, %if.end4 ], [ 1, %lor.lhs.false ], [ 1, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare i32 @EVP_MD_is_a(%struct.evp_md_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.evp_md_st* @ossl_x509_algor_get_md(%struct.X509_algor_st* noundef readonly %alg) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.X509_algor_st* %alg, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.evp_md_st* @EVP_sha1() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %alg, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !4
  %call1 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #5
  %call2 = tail call i8* @OBJ_nid2sn(i32 noundef %call1) #5
  %call3 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call2) #5
  %cmp4 = icmp eq %struct.evp_md_st* %call3, null
  br i1 %cmp4, label %if.then5, label %cleanup

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ossl_x509_algor_get_md, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 229, i8* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then5, %if.then
  %retval.0 = phi %struct.evp_md_st* [ %call, %if.then ], [ null, %if.then5 ], [ %call3, %if.end ]
  ret %struct.evp_md_st* %retval.0
}

declare %struct.evp_md_st* @EVP_sha1() local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #2

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.X509_algor_st* @ossl_x509_algor_mgf1_decode(%struct.X509_algor_st* nocapture noundef readonly %alg) local_unnamed_addr #1 {
entry:
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %alg, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !4
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #5
  %cmp.not = icmp eq i32 %call, 911
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %alg, i64 0, i32 1
  %1 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !9
  %call2 = tail call i8* @ASN1_TYPE_unpack_sequence(%struct.ASN1_ITEM_st* noundef nonnull @X509_ALGOR_it.local_it, %struct.asn1_type_st* noundef %1) #5
  %2 = bitcast i8* %call2 to %struct.X509_algor_st*
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.X509_algor_st* [ %2, %if.end ], [ null, %entry ]
  ret %struct.X509_algor_st* %retval.0
}

declare i8* @ASN1_TYPE_unpack_sequence(%struct.ASN1_ITEM_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_x509_algor_md_to_mgf1(%struct.X509_algor_st** nocapture noundef %palg, %struct.evp_md_st* noundef %mgf1md) local_unnamed_addr #1 {
entry:
  %algtmp = alloca %struct.X509_algor_st*, align 8
  %stmp = alloca %struct.asn1_string_st*, align 8
  %0 = bitcast %struct.X509_algor_st** %algtmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store %struct.X509_algor_st* null, %struct.X509_algor_st** %algtmp, align 8, !tbaa !10
  %1 = bitcast %struct.asn1_string_st** %stmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %stmp, align 8, !tbaa !10
  store %struct.X509_algor_st* null, %struct.X509_algor_st** %palg, align 8, !tbaa !10
  %cmp = icmp eq %struct.evp_md_st* %mgf1md, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @EVP_MD_is_a(%struct.evp_md_st* noundef nonnull %mgf1md, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call1 = call i32 @ossl_x509_algor_new_from_md(%struct.X509_algor_st** noundef nonnull %algtmp, %struct.evp_md_st* noundef nonnull %mgf1md) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.err_crit_edge, label %if.end4

if.end.err_crit_edge:                             ; preds = %if.end
  %.pre = load %struct.X509_algor_st*, %struct.X509_algor_st** %algtmp, align 8, !tbaa !10
  br label %err

if.end4:                                          ; preds = %if.end
  %2 = bitcast %struct.X509_algor_st** %algtmp to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !10
  %call6 = call %struct.asn1_string_st* @ASN1_item_pack(i8* noundef %3, %struct.ASN1_ITEM_st* noundef nonnull @X509_ALGOR_it.local_it, %struct.asn1_string_st** noundef nonnull %stmp) #5
  %cmp7 = icmp eq %struct.asn1_string_st* %call6, null
  %4 = bitcast i8* %3 to %struct.X509_algor_st*
  br i1 %cmp7, label %err, label %if.end9

if.end9:                                          ; preds = %if.end4
  %call10 = call %struct.X509_algor_st* @X509_ALGOR_new() #6
  store %struct.X509_algor_st* %call10, %struct.X509_algor_st** %palg, align 8, !tbaa !10
  %cmp11 = icmp eq %struct.X509_algor_st* %call10, null
  br i1 %cmp11, label %err, label %if.end13

if.end13:                                         ; preds = %if.end9
  %call14 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 911) #5
  %5 = bitcast %struct.asn1_string_st** %stmp to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !10
  %call15 = call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef nonnull %call10, %struct.asn1_object_st* noundef %call14, i32 noundef 16, i8* noundef %6) #6
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %stmp, align 8, !tbaa !10
  br label %err

err:                                              ; preds = %if.end.err_crit_edge, %if.end9, %if.end4, %if.end13
  %7 = phi %struct.X509_algor_st* [ %.pre, %if.end.err_crit_edge ], [ %4, %if.end9 ], [ %4, %if.end4 ], [ %4, %if.end13 ]
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %stmp, align 8, !tbaa !10
  call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %8) #5
  call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %7) #6
  %9 = load %struct.X509_algor_st*, %struct.X509_algor_st** %palg, align 8, !tbaa !10
  %cmp16.not = icmp ne %struct.X509_algor_st* %9, null
  %. = zext i1 %cmp16.not to i32
  br label %cleanup

cleanup:                                          ; preds = %err, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 1, %lor.lhs.false ], [ 1, %entry ], [ %., %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @ASN1_item_pack(i8* noundef, %struct.ASN1_ITEM_st* noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #2

declare void @ASN1_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @ASN1_OBJECT_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_ANY_it() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
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
!5 = !{!"X509_algor_st", !6, i64 0, !6, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 8}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!14, !12, i64 0}
!14 = !{!"asn1_type_st", !12, i64 0, !7, i64 8}
!15 = !{!7, !7, i64 0}
!16 = !{!17, !18, i64 16}
!17 = !{!"evp_md_st", !12, i64 0, !12, i64 4, !12, i64 8, !18, i64 16, !12, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !12, i64 72, !12, i64 76, !6, i64 80, !12, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !7, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232}
!18 = !{!"long", !7, i64 0}
