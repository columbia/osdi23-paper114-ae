; ModuleID = 'crypto/ec/ec_oct.c'
source_filename = "crypto/ec/ec_oct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_group_st = type { %struct.ec_method_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, i32, i32, i32, i32, i8*, i64, %struct.bignum_st*, [6 x i32], %struct.bignum_st*, %struct.bignum_st*, i32, i8*, i8*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, %struct.bn_mont_ctx_st*, i32, %union.anon, %struct.ossl_lib_ctx_st*, i8* }
%struct.ec_method_st = type { i32, i32, i32 (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, i32 (%struct.ec_point_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, {}*, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i64 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* }
%struct.ec_key_st = type { %struct.ec_key_method_st*, %struct.engine_st*, i32, %struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, i32, i32, i32, %struct.crypto_ex_data_st, i8*, %struct.ossl_lib_ctx_st*, i8*, i64 }
%struct.ec_key_method_st = type { i8*, i32, i32 (%struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_group_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*, %struct.ec_point_st*)*, i32 (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* }
%struct.engine_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.ECDSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.bn_mont_ctx_st = type opaque
%union.anon = type { %struct.nistp224_pre_comp_st* }
%struct.nistp224_pre_comp_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ec_point_st = type { %struct.ec_method_st*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i32 }
%struct.bignum_st = type opaque
%struct.bignum_ctx = type opaque

@.str = private unnamed_addr constant [19 x i8] c"crypto/ec/ec_oct.c\00", align 1
@__func__.EC_POINT_set_compressed_coordinates = private unnamed_addr constant [36 x i8] c"EC_POINT_set_compressed_coordinates\00", align 1
@__func__.EC_POINT_point2oct = private unnamed_addr constant [19 x i8] c"EC_POINT_point2oct\00", align 1
@__func__.EC_POINT_oct2point = private unnamed_addr constant [19 x i8] c"EC_POINT_oct2point\00", align 1
@__func__.EC_POINT_point2buf = private unnamed_addr constant [19 x i8] c"EC_POINT_point2buf\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @EC_POINT_set_compressed_coordinates(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, i32 noundef %y_bit, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !4
  %point_set_compressed_coordinates = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 18
  %point_set_compressed_coordinates1 = bitcast {}** %point_set_compressed_coordinates to i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)**
  %1 = load i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)** %point_set_compressed_coordinates1, align 8, !tbaa !11
  %cmp = icmp eq i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 0
  %2 = load i32, i32* %flags, align 8, !tbaa !13
  %and = and i32 %2, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 29, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.EC_POINT_set_compressed_coordinates, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #3
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call = tail call fastcc i32 @ec_point_is_compat(%struct.ec_point_st* noundef %point, %struct.ec_group_st* noundef nonnull %group) #4
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.EC_POINT_set_compressed_coordinates, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 101, i8* noundef null) #3
  br label %return

if.end5:                                          ; preds = %if.end
  %flags7 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 0
  %3 = load i32, i32* %flags7, align 8, !tbaa !13
  %and8 = and i32 %3, 1
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end16, label %if.then10

if.then10:                                        ; preds = %if.end5
  %field_type = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 1
  %4 = load i32, i32* %field_type, align 4, !tbaa !14
  %cmp12 = icmp eq i32 %4, 406
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then10
  %call14 = tail call i32 @ossl_ec_GFp_simple_set_compressed_coordinates(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, i32 noundef %y_bit, %struct.bignum_ctx* noundef %ctx) #3
  br label %return

if.else:                                          ; preds = %if.then10
  %call15 = tail call i32 @ossl_ec_GF2m_simple_set_compressed_coordinates(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, i32 noundef %y_bit, %struct.bignum_ctx* noundef %ctx) #3
  br label %return

if.end16:                                         ; preds = %if.end5
  %call20 = tail call i32 %1(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, i32 noundef %y_bit, %struct.bignum_ctx* noundef %ctx) #3
  br label %return

return:                                           ; preds = %if.end16, %if.else, %if.then13, %if.then4, %if.then
  %retval.0 = phi i32 [ %call14, %if.then13 ], [ %call15, %if.else ], [ %call20, %if.end16 ], [ 0, %if.then4 ], [ 0, %if.then ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @ec_point_is_compat(%struct.ec_point_st* nocapture noundef readonly %point, %struct.ec_group_st* nocapture noundef readonly %group) unnamed_addr #2 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !4
  %meth1 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 0
  %1 = load %struct.ec_method_st*, %struct.ec_method_st** %meth1, align 8, !tbaa !15
  %cmp = icmp eq %struct.ec_method_st* %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %curve_name = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 4
  %2 = load i32, i32* %curve_name, align 8, !tbaa !17
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %land.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %curve_name3 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 1
  %3 = load i32, i32* %curve_name3, align 8, !tbaa !18
  %cmp4 = icmp eq i32 %3, 0
  br i1 %cmp4, label %land.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %cmp7 = icmp eq i32 %2, %3
  %phi.cast = zext i1 %cmp7 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false, %lor.rhs, %entry
  %4 = phi i32 [ 0, %entry ], [ 1, %lor.lhs.false ], [ 1, %land.rhs ], [ %phi.cast, %lor.rhs ]
  ret i32 %4
}

declare i32 @ossl_ec_GFp_simple_set_compressed_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @ossl_ec_GF2m_simple_set_compressed_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @EC_POINT_set_compressed_coordinates_GFp(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, i32 noundef %y_bit, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EC_POINT_set_compressed_coordinates(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, i32 noundef %y_bit, %struct.bignum_ctx* noundef %ctx) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_POINT_set_compressed_coordinates_GF2m(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, i32 noundef %y_bit, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EC_POINT_set_compressed_coordinates(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, i32 noundef %y_bit, %struct.bignum_ctx* noundef %ctx) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, i32 noundef %form, i8* noundef %buf, i64 noundef %len, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !4
  %point2oct = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 19
  %1 = load i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)*, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)** %point2oct, align 8, !tbaa !19
  %cmp = icmp eq i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 0
  %2 = load i32, i32* %flags, align 8, !tbaa !13
  %and = and i32 %2, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.EC_POINT_point2oct, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #3
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call = tail call fastcc i32 @ec_point_is_compat(%struct.ec_point_st* noundef %point, %struct.ec_group_st* noundef nonnull %group) #4
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.EC_POINT_point2oct, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 101, i8* noundef null) #3
  br label %return

if.end4:                                          ; preds = %if.end
  %flags6 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 0
  %3 = load i32, i32* %flags6, align 8, !tbaa !13
  %and7 = and i32 %3, 1
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end15, label %if.then9

if.then9:                                         ; preds = %if.end4
  %field_type = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 1
  %4 = load i32, i32* %field_type, align 4, !tbaa !14
  %cmp11 = icmp eq i32 %4, 406
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then9
  %call13 = tail call i64 @ossl_ec_GFp_simple_point2oct(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %point, i32 noundef %form, i8* noundef %buf, i64 noundef %len, %struct.bignum_ctx* noundef %ctx) #3
  br label %return

if.else:                                          ; preds = %if.then9
  %call14 = tail call i64 @ossl_ec_GF2m_simple_point2oct(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %point, i32 noundef %form, i8* noundef %buf, i64 noundef %len, %struct.bignum_ctx* noundef %ctx) #3
  br label %return

if.end15:                                         ; preds = %if.end4
  %call18 = tail call i64 %1(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %point, i32 noundef %form, i8* noundef %buf, i64 noundef %len, %struct.bignum_ctx* noundef %ctx) #3
  br label %return

return:                                           ; preds = %if.end15, %if.else, %if.then12, %if.then3, %if.then
  %retval.0 = phi i64 [ %call13, %if.then12 ], [ %call14, %if.else ], [ %call18, %if.end15 ], [ 0, %if.then3 ], [ 0, %if.then ]
  ret i64 %retval.0
}

declare i64 @ossl_ec_GFp_simple_point2oct(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, i32 noundef, i8* noundef, i64 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i64 @ossl_ec_GF2m_simple_point2oct(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, i32 noundef, i8* noundef, i64 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @EC_POINT_oct2point(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, i8* noundef %buf, i64 noundef %len, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !4
  %oct2point = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 20
  %1 = load i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)** %oct2point, align 8, !tbaa !20
  %cmp = icmp eq i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 0
  %2 = load i32, i32* %flags, align 8, !tbaa !13
  %and = and i32 %2, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.EC_POINT_oct2point, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #3
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call = tail call fastcc i32 @ec_point_is_compat(%struct.ec_point_st* noundef %point, %struct.ec_group_st* noundef nonnull %group) #4
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.EC_POINT_oct2point, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 101, i8* noundef null) #3
  br label %return

if.end4:                                          ; preds = %if.end
  %flags6 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 0
  %3 = load i32, i32* %flags6, align 8, !tbaa !13
  %and7 = and i32 %3, 1
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end15, label %if.then9

if.then9:                                         ; preds = %if.end4
  %field_type = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 1
  %4 = load i32, i32* %field_type, align 4, !tbaa !14
  %cmp11 = icmp eq i32 %4, 406
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then9
  %call13 = tail call i32 @ossl_ec_GFp_simple_oct2point(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %point, i8* noundef %buf, i64 noundef %len, %struct.bignum_ctx* noundef %ctx) #3
  br label %return

if.else:                                          ; preds = %if.then9
  %call14 = tail call i32 @ossl_ec_GF2m_simple_oct2point(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %point, i8* noundef %buf, i64 noundef %len, %struct.bignum_ctx* noundef %ctx) #3
  br label %return

if.end15:                                         ; preds = %if.end4
  %call18 = tail call i32 %1(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %point, i8* noundef %buf, i64 noundef %len, %struct.bignum_ctx* noundef %ctx) #3
  br label %return

return:                                           ; preds = %if.end15, %if.else, %if.then12, %if.then3, %if.then
  %retval.0 = phi i32 [ %call13, %if.then12 ], [ %call14, %if.else ], [ %call18, %if.end15 ], [ 0, %if.then3 ], [ 0, %if.then ]
  ret i32 %retval.0
}

declare i32 @ossl_ec_GFp_simple_oct2point(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, i8* noundef, i64 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @ossl_ec_GF2m_simple_oct2point(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, i8* noundef, i64 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i64 @EC_POINT_point2buf(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, i32 noundef %form, i8** nocapture noundef writeonly %pbuf, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, i32 noundef %form, i8* noundef null, i64 noundef 0, %struct.bignum_ctx* noundef null) #4
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %call, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 143) #3
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 144, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.EC_POINT_point2buf, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #3
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, i32 noundef %form, i8* noundef nonnull %call1, i64 noundef %call, %struct.bignum_ctx* noundef %ctx) #4
  %cmp6 = icmp eq i64 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  tail call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 149) #3
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  store i8* %call1, i8** %pbuf, align 8, !tbaa !21
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8, %if.then7, %if.then3
  %retval.0 = phi i64 [ 0, %if.then3 ], [ 0, %if.then7 ], [ %call5, %if.end8 ], [ 0, %entry ]
  ret i64 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ec_group_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !7, i64 44, !6, i64 48, !10, i64 56, !6, i64 64, !7, i64 72, !6, i64 96, !6, i64 104, !9, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !7, i64 152, !7, i64 160, !6, i64 168, !6, i64 176}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !6, i64 136}
!12 = !{!"ec_method_st", !9, i64 0, !9, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !6, i64 376, !6, i64 384, !6, i64 392, !6, i64 400, !6, i64 408, !6, i64 416, !6, i64 424, !6, i64 432}
!13 = !{!12, !9, i64 0}
!14 = !{!12, !9, i64 4}
!15 = !{!16, !6, i64 0}
!16 = !{!"ec_point_st", !6, i64 0, !9, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !9, i64 40}
!17 = !{!5, !9, i64 32}
!18 = !{!16, !9, i64 8}
!19 = !{!12, !6, i64 144}
!20 = !{!12, !6, i64 152}
!21 = !{!6, !6, i64 0}
