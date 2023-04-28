; ModuleID = 'test/asn1_decode_test.c'
source_filename = "test/asn1_decode_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.ASN1_LONG_DATA = type { i64 }
%struct.ASN1_INT32_DATA = type { i32 }
%struct.ASN1_UINT32_DATA = type { i32 }
%struct.ASN1_INT64_DATA = type { i64 }
%struct.ASN1_UINT64_DATA = type { i64 }
%struct.INVALIDTEMPLATE = type { %struct.asn1_string_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.asn1_object_st = type opaque
%struct.ASN1_VALUE_st = type opaque

@.str = private unnamed_addr constant [10 x i8] c"test_long\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"test_int32\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"test_uint32\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"test_int64\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"test_uint64\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"test_invalid_template\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"test_reuse_asn1_object\00", align 1
@t_invalid_zero = internal global [4 x i8] c"0\02\02\00", align 1
@ASN1_LONG_DATA_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([1 x %struct.ASN1_TEMPLATE_st], [1 x %struct.ASN1_TEMPLATE_st]* @ASN1_LONG_DATA_seq_tt, i32 0, i32 0), i64 1, i8* null, i64 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0) }, align 8
@ASN1_LONG_DATA_seq_tt = internal constant [1 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @LONG_it }], align 16
@.str.7 = private unnamed_addr constant [15 x i8] c"ASN1_LONG_DATA\00", align 1
@ASN1_INT32_DATA_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([1 x %struct.ASN1_TEMPLATE_st], [1 x %struct.ASN1_TEMPLATE_st]* @ASN1_INT32_DATA_seq_tt, i32 0, i32 0), i64 1, i8* null, i64 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0) }, align 8
@ASN1_INT32_DATA_seq_tt = internal constant [1 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }], align 16
@.str.8 = private unnamed_addr constant [16 x i8] c"ASN1_INT32_DATA\00", align 1
@ASN1_UINT32_DATA_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([1 x %struct.ASN1_TEMPLATE_st], [1 x %struct.ASN1_TEMPLATE_st]* @ASN1_UINT32_DATA_seq_tt, i32 0, i32 0), i64 1, i8* null, i64 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0) }, align 8
@ASN1_UINT32_DATA_seq_tt = internal constant [1 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @UINT32_it }], align 16
@.str.9 = private unnamed_addr constant [17 x i8] c"ASN1_UINT32_DATA\00", align 1
@ASN1_INT64_DATA_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([1 x %struct.ASN1_TEMPLATE_st], [1 x %struct.ASN1_TEMPLATE_st]* @ASN1_INT64_DATA_seq_tt, i32 0, i32 0), i64 1, i8* null, i64 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0) }, align 8
@ASN1_INT64_DATA_seq_tt = internal constant [1 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT64_it }], align 16
@.str.10 = private unnamed_addr constant [16 x i8] c"ASN1_INT64_DATA\00", align 1
@ASN1_UINT64_DATA_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([1 x %struct.ASN1_TEMPLATE_st], [1 x %struct.ASN1_TEMPLATE_st]* @ASN1_UINT64_DATA_seq_tt, i32 0, i32 0), i64 1, i8* null, i64 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0) }, align 8
@ASN1_UINT64_DATA_seq_tt = internal constant [1 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @UINT64_it }], align 16
@.str.11 = private unnamed_addr constant [17 x i8] c"ASN1_UINT64_DATA\00", align 1
@t_invalid_template = internal global [5 x i8] c"0\03\0C\01A", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"test/asn1_decode_test.c\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@INVALIDTEMPLATE_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([1 x %struct.ASN1_TEMPLATE_st], [1 x %struct.ASN1_TEMPLATE_st]* @INVALIDTEMPLATE_seq_tt, i32 0, i32 0), i64 1, i8* null, i64 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0) }, align 8
@INVALIDTEMPLATE_seq_tt = internal constant [1 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 136, i64 12, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @DIRECTORYSTRING_it }], align 16
@.str.14 = private unnamed_addr constant [16 x i8] c"INVALIDTEMPLATE\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"invalidDirString\00", align 1
@test_reuse_asn1_object.cn_der = internal global [5 x i8] c"\06\03U\04\06", align 1
@test_reuse_asn1_object.oid_der = internal global [8 x i8] c"\06\06*\03\04\05\06\07", align 1
@.str.16 = private unnamed_addr constant [80 x i8] c"obj = ASN1_OBJECT_create(NID_undef, cn_der, sizeof(cn_der), \22C\22, \22countryName\22)\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"countryName\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"d2i_ASN1_OBJECT(&obj, &p, sizeof(oid_der))\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_long) #3
  tail call void @add_test(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_int32) #3
  tail call void @add_test(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_uint32) #3
  tail call void @add_test(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_int64) #3
  tail call void @add_test(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @test_uint64) #3
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 ()* noundef nonnull @test_invalid_template) #3
  tail call void @add_test(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 ()* noundef nonnull @test_reuse_asn1_object) #3
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_long() #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @t_invalid_zero, i64 0, i64 0), i8** %p, align 8, !tbaa !3
  %call = call fastcc %struct.ASN1_LONG_DATA* @d2i_ASN1_LONG_DATA(i8** noundef nonnull %p) #5
  %cmp = icmp eq %struct.ASN1_LONG_DATA* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @ASN1_LONG_DATA_free(%struct.ASN1_LONG_DATA* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_int32() #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @t_invalid_zero, i64 0, i64 0), i8** %p, align 8, !tbaa !3
  %call = call fastcc %struct.ASN1_INT32_DATA* @d2i_ASN1_INT32_DATA(i8** noundef nonnull %p) #5
  %cmp = icmp eq %struct.ASN1_INT32_DATA* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @ASN1_INT32_DATA_free(%struct.ASN1_INT32_DATA* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_uint32() #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @t_invalid_zero, i64 0, i64 0), i8** %p, align 8, !tbaa !3
  %call = call fastcc %struct.ASN1_UINT32_DATA* @d2i_ASN1_UINT32_DATA(i8** noundef nonnull %p) #5
  %cmp = icmp eq %struct.ASN1_UINT32_DATA* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @ASN1_UINT32_DATA_free(%struct.ASN1_UINT32_DATA* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_int64() #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @t_invalid_zero, i64 0, i64 0), i8** %p, align 8, !tbaa !3
  %call = call fastcc %struct.ASN1_INT64_DATA* @d2i_ASN1_INT64_DATA(i8** noundef nonnull %p) #5
  %cmp = icmp eq %struct.ASN1_INT64_DATA* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @ASN1_INT64_DATA_free(%struct.ASN1_INT64_DATA* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_uint64() #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @t_invalid_zero, i64 0, i64 0), i8** %p, align 8, !tbaa !3
  %call = call fastcc %struct.ASN1_UINT64_DATA* @d2i_ASN1_UINT64_DATA(i8** noundef nonnull %p) #5
  %cmp = icmp eq %struct.ASN1_UINT64_DATA* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @ASN1_UINT64_DATA_free(%struct.ASN1_UINT64_DATA* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_invalid_template() #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @t_invalid_template, i64 0, i64 0), i8** %p, align 8, !tbaa !3
  %call = call fastcc %struct.INVALIDTEMPLATE* @d2i_INVALIDTEMPLATE(i8** noundef nonnull %p) #5
  %1 = bitcast %struct.INVALIDTEMPLATE* %call to i8*
  %call1 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 noundef 192, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* noundef %1) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @INVALIDTEMPLATE_free(%struct.INVALIDTEMPLATE* noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_reuse_asn1_object() #0 {
entry:
  %obj = alloca %struct.asn1_object_st*, align 8
  %p = alloca i8*, align 8
  %0 = bitcast %struct.asn1_object_st** %obj to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_reuse_asn1_object.oid_der, i64 0, i64 0), i8** %p, align 8, !tbaa !3
  %call = tail call %struct.asn1_object_st* @ASN1_OBJECT_create(i32 noundef 0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @test_reuse_asn1_object.cn_der, i64 0, i64 0), i32 noundef 5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0)) #3
  store %struct.asn1_object_st* %call, %struct.asn1_object_st** %obj, align 8, !tbaa !3
  %2 = bitcast %struct.asn1_object_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 noundef 212, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.16, i64 0, i64 0), i8* noundef %2) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call %struct.asn1_object_st* @d2i_ASN1_OBJECT(%struct.asn1_object_st** noundef nonnull %obj, i8** noundef nonnull %p, i64 noundef 8) #3
  %3 = bitcast %struct.asn1_object_st* %call2 to i8*
  %call3 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 noundef 215, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i64 0, i64 0), i8* noundef %3) #3
  %tobool4.not = icmp ne i32 %call3, 0
  %spec.select = zext i1 %tobool4.not to i32
  %.pre = load %struct.asn1_object_st*, %struct.asn1_object_st** %obj, align 8, !tbaa !3
  br label %err

err:                                              ; preds = %if.end, %entry
  %4 = phi %struct.asn1_object_st* [ %call, %entry ], [ %.pre, %if.end ]
  %ret.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end ]
  call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %4) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ASN1_LONG_DATA* @d2i_ASN1_LONG_DATA(i8** noundef %in) unnamed_addr #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef null, i8** noundef %in, i64 noundef 4, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_LONG_DATA_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ASN1_LONG_DATA*
  ret %struct.ASN1_LONG_DATA* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ASN1_LONG_DATA_free(%struct.ASN1_LONG_DATA* noundef %a) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ASN1_LONG_DATA* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_LONG_DATA_it.local_it) #3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ASN1_ITEM_st* @LONG_it() #1

declare dso_local void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ASN1_INT32_DATA* @d2i_ASN1_INT32_DATA(i8** noundef %in) unnamed_addr #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef null, i8** noundef %in, i64 noundef 4, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_INT32_DATA_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ASN1_INT32_DATA*
  ret %struct.ASN1_INT32_DATA* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ASN1_INT32_DATA_free(%struct.ASN1_INT32_DATA* noundef %a) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ASN1_INT32_DATA* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_INT32_DATA_it.local_it) #3
  ret void
}

declare dso_local %struct.ASN1_ITEM_st* @INT32_it() #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ASN1_UINT32_DATA* @d2i_ASN1_UINT32_DATA(i8** noundef %in) unnamed_addr #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef null, i8** noundef %in, i64 noundef 4, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_UINT32_DATA_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ASN1_UINT32_DATA*
  ret %struct.ASN1_UINT32_DATA* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ASN1_UINT32_DATA_free(%struct.ASN1_UINT32_DATA* noundef %a) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ASN1_UINT32_DATA* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_UINT32_DATA_it.local_it) #3
  ret void
}

declare dso_local %struct.ASN1_ITEM_st* @UINT32_it() #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ASN1_INT64_DATA* @d2i_ASN1_INT64_DATA(i8** noundef %in) unnamed_addr #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef null, i8** noundef %in, i64 noundef 4, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_INT64_DATA_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ASN1_INT64_DATA*
  ret %struct.ASN1_INT64_DATA* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ASN1_INT64_DATA_free(%struct.ASN1_INT64_DATA* noundef %a) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ASN1_INT64_DATA* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_INT64_DATA_it.local_it) #3
  ret void
}

declare dso_local %struct.ASN1_ITEM_st* @INT64_it() #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ASN1_UINT64_DATA* @d2i_ASN1_UINT64_DATA(i8** noundef %in) unnamed_addr #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef null, i8** noundef %in, i64 noundef 4, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_UINT64_DATA_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ASN1_UINT64_DATA*
  ret %struct.ASN1_UINT64_DATA* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ASN1_UINT64_DATA_free(%struct.ASN1_UINT64_DATA* noundef %a) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ASN1_UINT64_DATA* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_UINT64_DATA_it.local_it) #3
  ret void
}

declare dso_local %struct.ASN1_ITEM_st* @UINT64_it() #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.INVALIDTEMPLATE* @d2i_INVALIDTEMPLATE(i8** noundef %in) unnamed_addr #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef null, i8** noundef %in, i64 noundef 5, %struct.ASN1_ITEM_st* noundef nonnull @INVALIDTEMPLATE_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.INVALIDTEMPLATE*
  ret %struct.INVALIDTEMPLATE* %0
}

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @INVALIDTEMPLATE_free(%struct.INVALIDTEMPLATE* noundef %a) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.INVALIDTEMPLATE* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @INVALIDTEMPLATE_it.local_it) #3
  ret void
}

declare dso_local %struct.ASN1_ITEM_st* @DIRECTORYSTRING_it() #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.asn1_object_st* @ASN1_OBJECT_create(i32 noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.asn1_object_st* @d2i_ASN1_OBJECT(%struct.asn1_object_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
