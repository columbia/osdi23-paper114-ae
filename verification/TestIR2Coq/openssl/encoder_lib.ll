; ModuleID = 'crypto/encode_decode/encoder_lib.c'
source_filename = "crypto/encode_decode/encoder_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_encoder_ctx_st = type { i32, i8*, i8*, %struct.stack_st_OSSL_ENCODER_INSTANCE*, i8* (%struct.ossl_encoder_instance_st*, i8*)*, void (i8*)*, i8*, %struct.ossl_passphrase_data_st }
%struct.stack_st_OSSL_ENCODER_INSTANCE = type opaque
%struct.ossl_encoder_instance_st = type { %struct.ossl_encoder_st*, i8*, i8*, i8* }
%struct.ossl_encoder_st = type { %struct.ossl_endecode_base_st, i8* (i8*)*, void (i8*)*, i32 (%struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, i32)*, i32 (i8*, %struct.ossl_core_bio_st*, i8*, %struct.ossl_param_st*, i32, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)*, i8* (i8*, i32, %struct.ossl_param_st*)*, void (i8*)* }
%struct.ossl_endecode_base_st = type { %struct.ossl_provider_st*, i32, i8*, %struct.ossl_algorithm_st*, %struct.ossl_property_list_st*, i32, i8* }
%struct.ossl_provider_st = type opaque
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.ossl_property_list_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_core_bio_st = type opaque
%struct.ossl_passphrase_data_st = type { i32, %union.anon, i8, i8*, i64 }
%union.anon = type { %struct.anon }
%struct.anon = type { i8*, i64 }
%struct.bio_st = type opaque
%struct.encoder_process_data_st = type { %struct.ossl_encoder_ctx_st*, %struct.bio_st*, i32, i32, %struct.ossl_encoder_instance_st*, i32, %struct.ossl_encoder_instance_st*, i8*, i64, i8* }
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_property_definition_st = type opaque
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [35 x i8] c"crypto/encode_decode/encoder_lib.c\00", align 1
@__func__.OSSL_ENCODER_to_bio = private unnamed_addr constant [20 x i8] c"OSSL_ENCODER_to_bio\00", align 1
@.str.1 = private unnamed_addr constant [141 x i8] c"No encoders were found. For standard encoders you need at least one of the default or base providers available. Did you forget to load them?\00", align 1
@__func__.OSSL_ENCODER_to_data = private unnamed_addr constant [21 x i8] c"OSSL_ENCODER_to_data\00", align 1
@__func__.OSSL_ENCODER_CTX_set_selection = private unnamed_addr constant [31 x i8] c"OSSL_ENCODER_CTX_set_selection\00", align 1
@__func__.OSSL_ENCODER_CTX_set_output_type = private unnamed_addr constant [33 x i8] c"OSSL_ENCODER_CTX_set_output_type\00", align 1
@__func__.OSSL_ENCODER_CTX_set_output_structure = private unnamed_addr constant [38 x i8] c"OSSL_ENCODER_CTX_set_output_structure\00", align 1
@__func__.OSSL_ENCODER_CTX_add_encoder = private unnamed_addr constant [29 x i8] c"OSSL_ENCODER_CTX_add_encoder\00", align 1
@__func__.OSSL_ENCODER_CTX_set_construct = private unnamed_addr constant [31 x i8] c"OSSL_ENCODER_CTX_set_construct\00", align 1
@__func__.OSSL_ENCODER_CTX_set_construct_data = private unnamed_addr constant [36 x i8] c"OSSL_ENCODER_CTX_set_construct_data\00", align 1
@__func__.OSSL_ENCODER_CTX_set_cleanup = private unnamed_addr constant [29 x i8] c"OSSL_ENCODER_CTX_set_cleanup\00", align 1
@__func__.bio_from_file = private unnamed_addr constant [14 x i8] c"bio_from_file\00", align 1
@__func__.ossl_encoder_instance_new = private unnamed_addr constant [26 x i8] c"ossl_encoder_instance_new\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"there are no property definitions with encoder %s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"the mandatory 'output' property is missing for encoder %s (properties: %s)\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"structure\00", align 1
@__func__.ossl_encoder_ctx_add_encoder_inst = private unnamed_addr constant [34 x i8] c"ossl_encoder_ctx_add_encoder_inst\00", align 1
@__func__.encoder_process = private unnamed_addr constant [16 x i8] c"encoder_process\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"data-type\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"data-structure\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"data\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef %ctx, %struct.bio_st* noundef %out) local_unnamed_addr #0 {
entry:
  %data = alloca %struct.encoder_process_data_st, align 8
  %0 = bitcast %struct.encoder_process_data_st* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #8
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 72) #9
  %ctx1 = getelementptr inbounds %struct.encoder_process_data_st, %struct.encoder_process_data_st* %data, i64 0, i32 0
  store %struct.ossl_encoder_ctx_st* %ctx, %struct.ossl_encoder_ctx_st** %ctx1, align 8, !tbaa !4
  %bio = getelementptr inbounds %struct.encoder_process_data_st, %struct.encoder_process_data_st* %data, i64 0, i32 1
  store %struct.bio_st* %out, %struct.bio_st** %bio, align 8, !tbaa !11
  %call2 = call i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef %ctx) #10
  %current_encoder_inst_index = getelementptr inbounds %struct.encoder_process_data_st, %struct.encoder_process_data_st* %data, i64 0, i32 2
  store i32 %call2, i32* %current_encoder_inst_index, align 8, !tbaa !12
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.OSSL_ENCODER_to_bio, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 101, i8* noundef getelementptr inbounds ([141 x i8], [141 x i8]* @.str.1, i64 0, i64 0)) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call fastcc i32 @encoder_process(%struct.encoder_process_data_st* noundef nonnull %data) #10
  %cmp5 = icmp sgt i32 %call4, 0
  %conv = zext i1 %cmp5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %conv, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_encoder_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %encoder_insts = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %ctx, i64 0, i32 3
  %0 = load %struct.stack_st_OSSL_ENCODER_INSTANCE*, %struct.stack_st_OSSL_ENCODER_INSTANCE** %encoder_insts, align 8, !tbaa !13
  %cmp1 = icmp eq %struct.stack_st_OSSL_ENCODER_INSTANCE* %0, null
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call fastcc i32 @sk_OSSL_ENCODER_INSTANCE_num(%struct.stack_st_OSSL_ENCODER_INSTANCE* noundef nonnull %0) #10
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @encoder_process(%struct.encoder_process_data_st* noundef %data) unnamed_addr #0 {
entry:
  %abstract = alloca [10 x %struct.ossl_param_st], align 16
  %new_data = alloca %struct.encoder_process_data_st, align 8
  %tmp108 = alloca %struct.ossl_param_st, align 8
  %tmp111 = alloca %struct.ossl_param_st, align 8
  %tmp114 = alloca %struct.ossl_param_st, align 8
  %buf = alloca %struct.buf_mem_st*, align 8
  %0 = bitcast [10 x %struct.ossl_param_st]* %abstract to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %0) #8
  %next_encoder_inst = getelementptr inbounds %struct.encoder_process_data_st, %struct.encoder_process_data_st* %data, i64 0, i32 4
  %1 = load %struct.ossl_encoder_instance_st*, %struct.ossl_encoder_instance_st** %next_encoder_inst, align 8, !tbaa !16
  %cmp = icmp eq %struct.ossl_encoder_instance_st* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %ctx = getelementptr inbounds %struct.encoder_process_data_st, %struct.encoder_process_data_st* %data, i64 0, i32 0
  %2 = load %struct.ossl_encoder_ctx_st*, %struct.ossl_encoder_ctx_st** %ctx, align 8, !tbaa !4
  %output_structure = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %2, i64 0, i32 2
  %3 = load i8*, i8** %output_structure, align 8, !tbaa !17
  %cmp1 = icmp eq i8* %3, null
  %cond = sext i1 %cmp1 to i32
  %count_output_structure = getelementptr inbounds %struct.encoder_process_data_st, %struct.encoder_process_data_st* %data, i64 0, i32 5
  store i32 %cond, i32* %count_output_structure, align 8, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %current_encoder_inst_index = getelementptr inbounds %struct.encoder_process_data_st, %struct.encoder_process_data_st* %data, i64 0, i32 2
  %4 = load i32, i32* %current_encoder_inst_index, align 8, !tbaa !12
  %5 = bitcast %struct.encoder_process_data_st* %new_data to i8*
  %ctx6 = getelementptr inbounds %struct.encoder_process_data_st, %struct.encoder_process_data_st* %data, i64 0, i32 0
  %ctx14 = getelementptr inbounds %struct.encoder_process_data_st, %struct.encoder_process_data_st* %new_data, i64 0, i32 0
  %current_encoder_inst_index15 = getelementptr inbounds %struct.encoder_process_data_st, %struct.encoder_process_data_st* %new_data, i64 0, i32 2
  %next_encoder_inst16 = getelementptr inbounds %struct.encoder_process_data_st, %struct.encoder_process_data_st* %new_data, i64 0, i32 4
  %count_output_structure17 = getelementptr inbounds %struct.encoder_process_data_st, %struct.encoder_process_data_st* %data, i64 0, i32 5
  %count_output_structure18 = getelementptr inbounds %struct.encoder_process_data_st, %struct.encoder_process_data_st* %new_data, i64 0, i32 5
  %level = getelementptr inbounds %struct.encoder_process_data_st, %struct.encoder_process_data_st* %data, i64 0, i32 3
  %level19 = getelementptr inbounds %struct.encoder_process_data_st, %struct.encoder_process_data_st* %new_data, i64 0, i32 3
  %prev_encoder_inst = getelementptr inbounds %struct.encoder_process_data_st, %struct.encoder_process_data_st* %new_data, i64 0, i32 6
  %prev_encoder_inst62 = getelementptr inbounds %struct.encoder_process_data_st, %struct.encoder_process_data_st* %data, i64 0, i32 6
  %running_output = getelementptr inbounds %struct.encoder_process_data_st, %struct.encoder_process_data_st* %new_data, i64 0, i32 7
  %running_output63 = getelementptr inbounds %struct.encoder_process_data_st, %struct.encoder_process_data_st* %data, i64 0, i32 7
  %running_output_length = getelementptr inbounds %struct.encoder_process_data_st, %struct.encoder_process_data_st* %new_data, i64 0, i32 8
  %running_output_length64 = getelementptr inbounds %struct.encoder_process_data_st, %struct.encoder_process_data_st* %data, i64 0, i32 8
  %cmp2301 = icmp sgt i32 %4, 0
  br i1 %cmp2301, label %for.body, label %if.end147

for.body:                                         ; preds = %if.end, %cleanup
  %dec302.in = phi i32 [ %dec302, %cleanup ], [ %4, %if.end ]
  %dec302 = add nsw i32 %dec302.in, -1
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %5) #8
  br i1 %cmp, label %if.end5, label %if.then3

if.then3:                                         ; preds = %for.body
  %6 = load %struct.ossl_encoder_instance_st*, %struct.ossl_encoder_instance_st** %next_encoder_inst, align 8, !tbaa !16
  %call = call %struct.ossl_encoder_st* @OSSL_ENCODER_INSTANCE_get_encoder(%struct.ossl_encoder_instance_st* noundef %6) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %for.body
  %next_encoder.0 = phi %struct.ossl_encoder_st* [ null, %for.body ], [ %call, %if.then3 ]
  %7 = load %struct.ossl_encoder_ctx_st*, %struct.ossl_encoder_ctx_st** %ctx6, align 8, !tbaa !4
  %encoder_insts = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %7, i64 0, i32 3
  %8 = load %struct.stack_st_OSSL_ENCODER_INSTANCE*, %struct.stack_st_OSSL_ENCODER_INSTANCE** %encoder_insts, align 8, !tbaa !13
  %call7 = call fastcc %struct.ossl_encoder_instance_st* @sk_OSSL_ENCODER_INSTANCE_value(%struct.stack_st_OSSL_ENCODER_INSTANCE* noundef %8, i32 noundef %dec302) #10
  %call8 = call %struct.ossl_encoder_st* @OSSL_ENCODER_INSTANCE_get_encoder(%struct.ossl_encoder_instance_st* noundef %call7) #10
  %call9 = call i8* @OSSL_ENCODER_INSTANCE_get_encoder_ctx(%struct.ossl_encoder_instance_st* noundef %call7) #10
  %call10 = call i8* @OSSL_ENCODER_INSTANCE_get_output_type(%struct.ossl_encoder_instance_st* noundef %call7) #10
  %call11 = call i8* @OSSL_ENCODER_INSTANCE_get_output_structure(%struct.ossl_encoder_instance_st* noundef %call7) #10
  %call12 = call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i64 noundef 72) #9
  %9 = load %struct.ossl_encoder_ctx_st*, %struct.ossl_encoder_ctx_st** %ctx6, align 8, !tbaa !4
  store %struct.ossl_encoder_ctx_st* %9, %struct.ossl_encoder_ctx_st** %ctx14, align 8, !tbaa !4
  store i32 %dec302, i32* %current_encoder_inst_index15, align 8, !tbaa !12
  store %struct.ossl_encoder_instance_st* %call7, %struct.ossl_encoder_instance_st** %next_encoder_inst16, align 8, !tbaa !16
  %10 = load i32, i32* %count_output_structure17, align 8, !tbaa !18
  store i32 %10, i32* %count_output_structure18, align 8, !tbaa !18
  %11 = load i32, i32* %level, align 4, !tbaa !19
  %add = add nsw i32 %11, 1
  store i32 %add, i32* %level19, align 4, !tbaa !19
  br i1 %cmp, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end5
  %output_type = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %9, i64 0, i32 1
  %12 = load i8*, i8** %output_type, align 8, !tbaa !20
  %cmp23.not = icmp eq i8* %12, null
  br i1 %cmp23.not, label %if.end42, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then21
  %call26 = call i32 @strcasecmp(i8* noundef %call10, i8* noundef nonnull %12) #11
  %cmp27.not = icmp eq i32 %call26, 0
  br i1 %cmp27.not, label %if.end42, label %cleanup, !llvm.loop !21

if.else:                                          ; preds = %if.end5
  %call34 = call i32 @OSSL_ENCODER_is_a(%struct.ossl_encoder_st* noundef %next_encoder.0, i8* noundef %call10) #9
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cleanup, label %if.else.if.end42_crit_edge, !llvm.loop !21

if.else.if.end42_crit_edge:                       ; preds = %if.else
  %.pre = load %struct.ossl_encoder_ctx_st*, %struct.ossl_encoder_ctx_st** %ctx6, align 8, !tbaa !4
  br label %if.end42

if.end42:                                         ; preds = %if.else.if.end42_crit_edge, %if.then21, %land.lhs.true
  %13 = phi %struct.ossl_encoder_ctx_st* [ %.pre, %if.else.if.end42_crit_edge ], [ %9, %if.then21 ], [ %9, %land.lhs.true ]
  %output_structure44 = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %13, i64 0, i32 2
  %14 = load i8*, i8** %output_structure44, align 8, !tbaa !17
  %cmp45 = icmp ne i8* %14, null
  %cmp47 = icmp ne i8* %call11, null
  %or.cond = select i1 %cmp45, i1 %cmp47, i1 false
  br i1 %or.cond, label %if.then48, label %if.end60

if.then48:                                        ; preds = %if.end42
  %call51 = call i32 @strcasecmp(i8* noundef nonnull %14, i8* noundef nonnull %call11) #11
  %cmp52.not = icmp eq i32 %call51, 0
  br i1 %cmp52.not, label %if.end58, label %cleanup, !llvm.loop !21

if.end58:                                         ; preds = %if.then48
  %15 = load i32, i32* %count_output_structure17, align 8, !tbaa !18
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %count_output_structure17, align 8, !tbaa !18
  br label %if.end60

if.end60:                                         ; preds = %if.end58, %if.end42
  %call61 = call fastcc i32 @encoder_process(%struct.encoder_process_data_st* noundef nonnull %new_data) #10
  %16 = load %struct.ossl_encoder_instance_st*, %struct.ossl_encoder_instance_st** %prev_encoder_inst, align 8, !tbaa !23
  store %struct.ossl_encoder_instance_st* %16, %struct.ossl_encoder_instance_st** %prev_encoder_inst62, align 8, !tbaa !23
  %17 = load i8*, i8** %running_output, align 8, !tbaa !24
  store i8* %17, i8** %running_output63, align 8, !tbaa !24
  %18 = load i64, i64* %running_output_length, align 8, !tbaa !25
  store i64 %18, i64* %running_output_length64, align 8, !tbaa !25
  %cmp65.not = icmp eq i32 %call61, 0
  br i1 %cmp65.not, label %cleanup, label %if.else81

cleanup:                                          ; preds = %if.end60, %if.then48, %if.else, %land.lhs.true
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %5) #8
  %cmp2 = icmp sgt i32 %dec302.in, 1
  br i1 %cmp2, label %for.body, label %if.end147

if.else81:                                        ; preds = %if.end60
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %5) #8
  switch i32 %call61, label %if.then117 [
    i32 1, label %sw.bb94
    i32 -1, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.else81
  %19 = load i32, i32* %count_output_structure17, align 8, !tbaa !18
  %cmp83 = icmp eq i32 %19, 0
  br i1 %cmp83, label %cleanup168, label %if.end85

if.end85:                                         ; preds = %sw.bb
  %20 = load %struct.ossl_encoder_ctx_st*, %struct.ossl_encoder_ctx_st** %ctx6, align 8, !tbaa !4
  %construct = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %20, i64 0, i32 4
  %21 = load i8* (%struct.ossl_encoder_instance_st*, i8*)*, i8* (%struct.ossl_encoder_instance_st*, i8*)** %construct, align 8, !tbaa !26
  %construct_data = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %20, i64 0, i32 6
  %22 = load i8*, i8** %construct_data, align 8, !tbaa !27
  %call88 = call i8* %21(%struct.ossl_encoder_instance_st* noundef %call7, i8* noundef %22) #9
  %call89 = call i8* @OSSL_ENCODER_get0_name(%struct.ossl_encoder_st* noundef %call8) #9
  %data_type = getelementptr inbounds %struct.encoder_process_data_st, %struct.encoder_process_data_st* %data, i64 0, i32 9
  store i8* %call89, i8** %data_type, align 8, !tbaa !28
  %cmp90.not = icmp eq i8* %call88, null
  br i1 %cmp90.not, label %if.end147, label %if.then117

sw.bb94:                                          ; preds = %if.else81
  %23 = load i8*, i8** %running_output63, align 8, !tbaa !24
  %cmp96.not = icmp eq i8* %23, null
  br i1 %cmp96.not, label %if.then99, label %if.end100

if.then99:                                        ; preds = %sw.bb94
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 580, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.encoder_process, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786691, i8* noundef null) #9
  br label %if.end147

if.end100:                                        ; preds = %sw.bb94
  %arraydecay = getelementptr inbounds [10 x %struct.ossl_param_st], [10 x %struct.ossl_param_st]* %abstract, i64 0, i64 0
  %24 = load %struct.ossl_encoder_instance_st*, %struct.ossl_encoder_instance_st** %prev_encoder_inst62, align 8, !tbaa !23
  %call102 = call i8* @OSSL_ENCODER_INSTANCE_get_output_structure(%struct.ossl_encoder_instance_st* noundef %24) #10
  %incdec.ptr = getelementptr inbounds [10 x %struct.ossl_param_st], [10 x %struct.ossl_param_st]* %abstract, i64 0, i64 1
  %data_type103 = getelementptr inbounds %struct.encoder_process_data_st, %struct.encoder_process_data_st* %data, i64 0, i32 9
  %25 = load i8*, i8** %data_type103, align 8, !tbaa !28
  %abstract299 = getelementptr inbounds [10 x %struct.ossl_param_st], [10 x %struct.ossl_param_st]* %abstract, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %abstract299, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* noundef %25, i64 noundef 0) #9
  %cmp104.not = icmp eq i8* %call102, null
  br i1 %cmp104.not, label %if.end109, label %if.then106

if.then106:                                       ; preds = %if.end100
  %incdec.ptr107 = getelementptr inbounds [10 x %struct.ossl_param_st], [10 x %struct.ossl_param_st]* %abstract, i64 0, i64 2
  %26 = bitcast %struct.ossl_param_st* %tmp108 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %26) #8
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp108, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* noundef nonnull %call102, i64 noundef 0) #9
  %27 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %27, i8* noundef nonnull align 8 dereferenceable(40) %26, i64 40, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %26) #8
  br label %if.end109

if.end109:                                        ; preds = %if.then106, %if.end100
  %abstract_p.0 = phi %struct.ossl_param_st* [ %incdec.ptr107, %if.then106 ], [ %incdec.ptr, %if.end100 ]
  %incdec.ptr110 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %abstract_p.0, i64 1
  %28 = bitcast %struct.ossl_param_st* %tmp111 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %28) #8
  %29 = load i8*, i8** %running_output63, align 8, !tbaa !24
  %30 = load i64, i64* %running_output_length64, align 8, !tbaa !25
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp111, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* noundef %29, i64 noundef %30) #9
  %31 = bitcast %struct.ossl_param_st* %abstract_p.0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %31, i8* noundef nonnull align 8 dereferenceable(40) %28, i64 40, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %28) #8
  %32 = bitcast %struct.ossl_param_st* %tmp114 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %32) #8
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp114) #9
  %33 = bitcast %struct.ossl_param_st* %incdec.ptr110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %33, i8* noundef nonnull align 8 dereferenceable(40) %32, i64 40, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %32) #8
  br label %if.then117

if.then117:                                       ; preds = %if.else81, %if.end85, %if.end109
  %original_data.0283 = phi i8* [ %call88, %if.end85 ], [ null, %if.end109 ], [ null, %if.else81 ]
  %current_abstract.0282 = phi %struct.ossl_param_st* [ null, %if.end85 ], [ %arraydecay, %if.end109 ], [ null, %if.else81 ]
  br i1 %cmp, label %if.then119, label %if.else120

if.then119:                                       ; preds = %if.then117
  %bio = getelementptr inbounds %struct.encoder_process_data_st, %struct.encoder_process_data_st* %data, i64 0, i32 1
  %34 = load %struct.bio_st*, %struct.bio_st** %bio, align 8, !tbaa !11
  br label %if.end133

if.else120:                                       ; preds = %if.then117
  %call121 = call %struct.bio_method_st* @BIO_s_mem() #9
  %call122 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call121) #9
  %cmp123 = icmp eq %struct.bio_st* %call122, null
  br i1 %cmp123, label %if.end143, label %if.end133

if.end133:                                        ; preds = %if.then119, %if.else120
  %allocated_out.0.ph = phi %struct.bio_st* [ null, %if.then119 ], [ %call122, %if.else120 ]
  %current_out.0.ph = phi %struct.bio_st* [ %34, %if.then119 ], [ %call122, %if.else120 ]
  %call130 = call %struct.ossl_core_bio_st* @ossl_core_bio_new_from_bio(%struct.bio_st* noundef %current_out.0.ph) #9
  %cmp131 = icmp eq %struct.ossl_core_bio_st* %call130, null
  br i1 %cmp131, label %if.end143, label %if.then135

if.then135:                                       ; preds = %if.end133
  %encode = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %call8, i64 0, i32 8
  %35 = load i32 (i8*, %struct.ossl_core_bio_st*, i8*, %struct.ossl_param_st*, i32, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*, %struct.ossl_core_bio_st*, i8*, %struct.ossl_param_st*, i32, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)** %encode, align 8, !tbaa !33
  %36 = load %struct.ossl_encoder_ctx_st*, %struct.ossl_encoder_ctx_st** %ctx6, align 8, !tbaa !4
  %selection = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %36, i64 0, i32 0
  %37 = load i32, i32* %selection, align 8, !tbaa !36
  %pwdata = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %36, i64 0, i32 7
  %38 = bitcast %struct.ossl_passphrase_data_st* %pwdata to i8*
  %call138 = call i32 %35(i8* noundef %call9, %struct.ossl_core_bio_st* noundef nonnull %call130, i8* noundef %original_data.0283, %struct.ossl_param_st* noundef %current_abstract.0282, i32 noundef %37, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)* noundef nonnull @ossl_pw_passphrase_callback_enc, i8* noundef nonnull %38) #9
  br label %if.end143

if.end143:                                        ; preds = %if.else120, %if.then135, %if.end133
  %cbio.0294 = phi %struct.ossl_core_bio_st* [ %call130, %if.then135 ], [ null, %if.end133 ], [ null, %if.else120 ]
  %allocated_out.0288293 = phi %struct.bio_st* [ %allocated_out.0.ph, %if.then135 ], [ %allocated_out.0.ph, %if.end133 ], [ null, %if.else120 ]
  %ok.6 = phi i32 [ %call138, %if.then135 ], [ 0, %if.end133 ], [ 0, %if.else120 ]
  %call144 = call i32 @ossl_core_bio_free(%struct.ossl_core_bio_st* noundef %cbio.0294) #9
  store %struct.ossl_encoder_instance_st* %call7, %struct.ossl_encoder_instance_st** %prev_encoder_inst62, align 8, !tbaa !23
  br label %if.end147

if.end147:                                        ; preds = %cleanup, %if.end, %if.end85, %if.then99, %if.end143
  %ok.7 = phi i32 [ %ok.6, %if.end143 ], [ 0, %if.then99 ], [ 0, %if.end85 ], [ -1, %if.end ], [ -1, %cleanup ]
  %original_data.1 = phi i8* [ %original_data.0283, %if.end143 ], [ null, %if.then99 ], [ null, %if.end85 ], [ null, %if.end ], [ null, %cleanup ]
  %allocated_out.1 = phi %struct.bio_st* [ %allocated_out.0288293, %if.end143 ], [ null, %if.then99 ], [ null, %if.end85 ], [ null, %if.end ], [ null, %cleanup ]
  %39 = load i8*, i8** %running_output63, align 8, !tbaa !24
  call void @CRYPTO_free(i8* noundef %39, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 652) #9
  store i8* null, i8** %running_output63, align 8, !tbaa !24
  %cmp150.not = icmp eq %struct.bio_st* %allocated_out.1, null
  br i1 %cmp150.not, label %if.end158, label %if.then152

if.then152:                                       ; preds = %if.end147
  %40 = bitcast %struct.buf_mem_st** %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40) #8
  %call153 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %allocated_out.1, i32 noundef 115, i64 noundef 0, i8* noundef nonnull %40) #9
  %41 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buf, align 8, !tbaa !30
  %data154 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %41, i64 0, i32 1
  %42 = load i8*, i8** %data154, align 8, !tbaa !37
  store i8* %42, i8** %running_output63, align 8, !tbaa !24
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %41, i64 0, i32 0
  %43 = load i64, i64* %length, align 8, !tbaa !39
  store i64 %43, i64* %running_output_length64, align 8, !tbaa !25
  %44 = bitcast %struct.buf_mem_st* %41 to i8*
  %call157 = call i8* @memset(i8* noundef %44, i32 noundef 0, i64 noundef 32) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #8
  br label %if.end158

if.end158:                                        ; preds = %if.then152, %if.end147
  %call159 = call i32 @BIO_free(%struct.bio_st* noundef %allocated_out.1) #9
  %cmp160.not = icmp eq i8* %original_data.1, null
  br i1 %cmp160.not, label %cleanup168, label %if.then162

if.then162:                                       ; preds = %if.end158
  %45 = load %struct.ossl_encoder_ctx_st*, %struct.ossl_encoder_ctx_st** %ctx6, align 8, !tbaa !4
  %cleanup164 = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %45, i64 0, i32 5
  %46 = load void (i8*)*, void (i8*)** %cleanup164, align 8, !tbaa !40
  %construct_data166 = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %45, i64 0, i32 6
  %47 = load i8*, i8** %construct_data166, align 8, !tbaa !27
  call void %46(i8* noundef %47) #9
  br label %cleanup168

cleanup168:                                       ; preds = %if.end158, %if.then162, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb ], [ %ok.7, %if.then162 ], [ %ok.7, %if.end158 ]
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_ENCODER_to_fp(%struct.ossl_encoder_ctx_st* noundef %ctx, %struct._IO_FILE* noundef %fp) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.bio_st* @bio_from_file(%struct._IO_FILE* noundef %fp) #10
  %cmp.not = icmp eq %struct.bio_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef %ctx, %struct.bio_st* noundef nonnull %call) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call1, %if.then ], [ 0, %entry ]
  %call2 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #9
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bio_st* @bio_from_file(%struct._IO_FILE* noundef %fp) unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #9
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #9
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.bio_from_file, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 524295, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret %struct.bio_st* %call1
}

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_ENCODER_to_data(%struct.ossl_encoder_ctx_st* noundef %ctx, i8** noundef %pdata, i64* noundef %pdata_len) local_unnamed_addr #0 {
entry:
  %buf = alloca %struct.buf_mem_st*, align 8
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #9
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #9
  %0 = bitcast %struct.buf_mem_st** %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store %struct.buf_mem_st* null, %struct.buf_mem_st** %buf, align 8, !tbaa !30
  %cmp = icmp eq i64* %pdata_len, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 100, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.OSSL_ENCODER_to_data, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786690, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef %ctx, %struct.bio_st* noundef %call1) #10
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end32, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call3 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 115, i64 noundef 0, i8* noundef nonnull %0) #9
  %cmp4 = icmp sgt i64 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end32

if.then5:                                         ; preds = %land.lhs.true
  %cmp6.not = icmp eq i8** %pdata, null
  br i1 %cmp6.not, label %if.end16.thread56, label %land.lhs.true7

if.end16.thread56:                                ; preds = %if.then5
  %1 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buf, align 8, !tbaa !30
  %length1557 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %1, i64 0, i32 0
  %2 = load i64, i64* %length1557, align 8, !tbaa !39
  store i64 %2, i64* %pdata_len, align 8, !tbaa !32
  br label %if.end32

land.lhs.true7:                                   ; preds = %if.then5
  %3 = load i8*, i8** %pdata, align 8, !tbaa !30
  %cmp8.not = icmp eq i8* %3, null
  br i1 %cmp8.not, label %if.end16, label %if.then9

if.then9:                                         ; preds = %land.lhs.true7
  %4 = load i64, i64* %pdata_len, align 8, !tbaa !32
  %5 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buf, align 8, !tbaa !30
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %5, i64 0, i32 0
  %6 = load i64, i64* %length, align 8, !tbaa !39
  %cmp10 = icmp ult i64 %4, %6
  br i1 %cmp10, label %if.end32, label %if.end16.thread

if.end16.thread:                                  ; preds = %if.then9
  %sub = sub i64 %4, %6
  br label %if.then20

if.end16:                                         ; preds = %land.lhs.true7
  %7 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buf, align 8, !tbaa !30
  %length15 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %7, i64 0, i32 0
  %8 = load i64, i64* %length15, align 8, !tbaa !39
  br label %if.then20

if.then20:                                        ; preds = %if.end16, %if.end16.thread
  %.sink = phi i64 [ %8, %if.end16 ], [ %sub, %if.end16.thread ]
  %9 = phi %struct.buf_mem_st* [ %7, %if.end16 ], [ %5, %if.end16.thread ]
  store i64 %.sink, i64* %pdata_len, align 8, !tbaa !32
  %10 = load i8*, i8** %pdata, align 8, !tbaa !30
  %cmp21.not = icmp eq i8* %10, null
  %data27 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %9, i64 0, i32 1
  %11 = load i8*, i8** %data27, align 8, !tbaa !37
  br i1 %cmp21.not, label %if.else26, label %if.then22

if.then22:                                        ; preds = %if.then20
  %length23 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %9, i64 0, i32 0
  %12 = load i64, i64* %length23, align 8, !tbaa !39
  %call24 = call i8* @memcpy(i8* noundef nonnull %10, i8* noundef %11, i64 noundef %12) #9
  %13 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buf, align 8, !tbaa !30
  %length25 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %13, i64 0, i32 0
  %14 = load i64, i64* %length25, align 8, !tbaa !39
  %15 = load i8*, i8** %pdata, align 8, !tbaa !30
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %14
  store i8* %add.ptr, i8** %pdata, align 8, !tbaa !30
  br label %if.end32

if.else26:                                        ; preds = %if.then20
  store i8* %11, i8** %pdata, align 8, !tbaa !30
  store i8* null, i8** %data27, align 8, !tbaa !37
  br label %if.end32

if.end32:                                         ; preds = %if.end16.thread56, %if.then9, %if.then22, %if.else26, %land.lhs.true, %if.end
  %ret.1 = phi i32 [ 1, %if.then22 ], [ 1, %if.else26 ], [ 0, %land.lhs.true ], [ 0, %if.end ], [ 0, %if.then9 ], [ 1, %if.end16.thread56 ]
  %call33 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.1, %if.end32 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #3

declare %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #3

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_ENCODER_CTX_set_selection(%struct.ossl_encoder_ctx_st* noundef writeonly %ctx, i32 noundef %selection) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_encoder_ctx_st* %ctx, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 143, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.OSSL_ENCODER_CTX_set_selection, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786690, i8* noundef null) #9
  br label %return

if.end:                                           ; preds = %entry
  %cmp3.not = icmp eq i32 %selection, 0
  br i1 %cmp3.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.OSSL_ENCODER_CTX_set_selection, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 524550, i8* noundef null) #9
  br label %return

if.end8:                                          ; preds = %if.end
  %selection9 = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %ctx, i64 0, i32 0
  store i32 %selection, i32* %selection9, align 8, !tbaa !36
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %retval.0 = phi i32 [ 1, %if.end8 ], [ 0, %if.then7 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_ENCODER_CTX_set_output_type(%struct.ossl_encoder_ctx_st* noundef writeonly %ctx, i8* noundef %output_type) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_encoder_ctx_st* %ctx, null
  %cmp3.not = icmp eq i8* %output_type, null
  %or.cond = or i1 %cmp.not, %cmp3.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.OSSL_ENCODER_CTX_set_output_type, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786690, i8* noundef null) #9
  br label %return

if.end:                                           ; preds = %entry
  %output_type7 = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %ctx, i64 0, i32 1
  store i8* %output_type, i8** %output_type7, align 8, !tbaa !20
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_ENCODER_CTX_set_output_structure(%struct.ossl_encoder_ctx_st* noundef writeonly %ctx, i8* noundef %output_structure) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_encoder_ctx_st* %ctx, null
  %cmp3.not = icmp eq i8* %output_structure, null
  %or.cond = or i1 %cmp.not, %cmp3.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 172, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.OSSL_ENCODER_CTX_set_output_structure, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786690, i8* noundef null) #9
  br label %return

if.end:                                           ; preds = %entry
  %output_structure7 = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %ctx, i64 0, i32 2
  store i8* %output_structure, i8** %output_structure7, align 8, !tbaa !17
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_encoder_instance_free(%struct.ossl_encoder_instance_st* noundef %encoder_inst) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_encoder_instance_st* %encoder_inst, null
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %encoder = getelementptr inbounds %struct.ossl_encoder_instance_st, %struct.ossl_encoder_instance_st* %encoder_inst, i64 0, i32 0
  %0 = load %struct.ossl_encoder_st*, %struct.ossl_encoder_st** %encoder, align 8, !tbaa !41
  %cmp1.not = icmp eq %struct.ossl_encoder_st* %0, null
  br i1 %cmp1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %freectx = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %0, i64 0, i32 2
  %1 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !43
  %encoderctx = getelementptr inbounds %struct.ossl_encoder_instance_st, %struct.ossl_encoder_instance_st* %encoder_inst, i64 0, i32 1
  %2 = load i8*, i8** %encoderctx, align 8, !tbaa !44
  tail call void %1(i8* noundef %2) #9
  %.pre = load %struct.ossl_encoder_st*, %struct.ossl_encoder_st** %encoder, align 8, !tbaa !41
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %3 = phi %struct.ossl_encoder_st* [ %.pre, %if.then2 ], [ null, %if.then ]
  %encoderctx4 = getelementptr inbounds %struct.ossl_encoder_instance_st, %struct.ossl_encoder_instance_st* %encoder_inst, i64 0, i32 1
  store i8* null, i8** %encoderctx4, align 8, !tbaa !44
  tail call void @OSSL_ENCODER_free(%struct.ossl_encoder_st* noundef %3) #9
  store %struct.ossl_encoder_st* null, %struct.ossl_encoder_st** %encoder, align 8, !tbaa !41
  %4 = bitcast %struct.ossl_encoder_instance_st* %encoder_inst to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 248) #9
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  ret void
}

declare void @OSSL_ENCODER_free(%struct.ossl_encoder_st* noundef) local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_ENCODER_CTX_add_encoder(%struct.ossl_encoder_ctx_st* noundef %ctx, %struct.ossl_encoder_st* noundef %encoder) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_encoder_ctx_st* %ctx, null
  %cmp3.not = icmp eq %struct.ossl_encoder_st* %encoder, null
  %or.cond = or i1 %cmp.not, %cmp3.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 286, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.OSSL_ENCODER_CTX_add_encoder, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786690, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_provider_st* @OSSL_ENCODER_get0_provider(%struct.ossl_encoder_st* noundef nonnull %encoder) #9
  %call7 = tail call i8* @OSSL_PROVIDER_get0_provider_ctx(%struct.ossl_provider_st* noundef %call) #9
  %newctx = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %encoder, i64 0, i32 1
  %0 = load i8* (i8*)*, i8* (i8*)** %newctx, align 8, !tbaa !45
  %call8 = tail call i8* %0(i8* noundef %call7) #9
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %err.thread, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.end
  %call12 = tail call fastcc %struct.ossl_encoder_instance_st* @ossl_encoder_instance_new(%struct.ossl_encoder_st* noundef nonnull %encoder, i8* noundef nonnull %call8) #10
  %cmp13 = icmp eq %struct.ossl_encoder_instance_st* %call12, null
  br i1 %cmp13, label %if.then22, label %if.end16

if.end16:                                         ; preds = %lor.lhs.false11
  %call17 = tail call fastcc i32 @ossl_encoder_ctx_add_encoder_inst(%struct.ossl_encoder_ctx_st* noundef nonnull %ctx, %struct.ossl_encoder_instance_st* noundef nonnull %call12) #10
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %err.thread, label %cleanup

err.thread:                                       ; preds = %if.end, %if.end16
  %encoder_inst.0.ph = phi %struct.ossl_encoder_instance_st* [ %call12, %if.end16 ], [ null, %if.end ]
  tail call void @ossl_encoder_instance_free(%struct.ossl_encoder_instance_st* noundef %encoder_inst.0.ph) #10
  br label %cleanup

if.then22:                                        ; preds = %lor.lhs.false11
  tail call void @ossl_encoder_instance_free(%struct.ossl_encoder_instance_st* noundef null) #10
  %freectx = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %encoder, i64 0, i32 2
  %1 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !43
  tail call void %1(i8* noundef nonnull %call8) #9
  br label %cleanup

cleanup:                                          ; preds = %err.thread, %if.then22, %if.end16, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end16 ], [ 0, %if.then22 ], [ 0, %err.thread ]
  ret i32 %retval.0
}

declare %struct.ossl_provider_st* @OSSL_ENCODER_get0_provider(%struct.ossl_encoder_st* noundef) local_unnamed_addr #3

declare i8* @OSSL_PROVIDER_get0_provider_ctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_encoder_instance_st* @ossl_encoder_instance_new(%struct.ossl_encoder_st* noundef %encoder, i8* noundef %encoderctx) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_encoder_st* %encoder, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 190, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_encoder_instance_new, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786690, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 32, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 194) #9
  %0 = bitcast i8* %call to %struct.ossl_encoder_instance_st*
  %cmp3 = icmp eq i8* %call, null
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 195, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_encoder_instance_new, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786688, i8* noundef null) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @OSSL_ENCODER_up_ref(%struct.ossl_encoder_st* noundef nonnull %encoder) #9
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 200, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_encoder_instance_new, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786691, i8* noundef null) #9
  br label %err

if.end9:                                          ; preds = %if.end6
  %call10 = tail call %struct.ossl_provider_st* @OSSL_ENCODER_get0_provider(%struct.ossl_encoder_st* noundef nonnull %encoder) #9
  %call11 = tail call %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef %call10) #9
  %call12 = tail call %struct.ossl_property_list_st* @ossl_encoder_parsed_properties(%struct.ossl_encoder_st* noundef nonnull %encoder) #9
  %cmp13 = icmp eq %struct.ossl_property_list_st* %call12, null
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end9
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 208, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_encoder_instance_new, i64 0, i64 0)) #9
  %call16 = tail call i8* @OSSL_ENCODER_get0_name(%struct.ossl_encoder_st* noundef nonnull %encoder) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 524558, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* noundef %call16) #9
  br label %err

if.end17:                                         ; preds = %if.end9
  %call18 = tail call %struct.ossl_property_definition_st* @ossl_property_find_property(%struct.ossl_property_list_st* noundef nonnull %call12, %struct.ossl_lib_ctx_st* noundef %call11, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #9
  %call19 = tail call i8* @ossl_property_get_string_value(%struct.ossl_lib_ctx_st* noundef %call11, %struct.ossl_property_definition_st* noundef %call18) #9
  %output_type = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %output_type to i8**
  store i8* %call19, i8** %1, align 8, !tbaa !46
  %cmp21 = icmp eq i8* %call19, null
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end17
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 218, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_encoder_instance_new, i64 0, i64 0)) #9
  %call24 = tail call i8* @OSSL_ENCODER_get0_name(%struct.ossl_encoder_st* noundef nonnull %encoder) #9
  %call25 = tail call i8* @OSSL_ENCODER_get0_properties(%struct.ossl_encoder_st* noundef nonnull %encoder) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 524558, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0), i8* noundef %call24, i8* noundef %call25) #9
  br label %err

if.end26:                                         ; preds = %if.end17
  %call27 = tail call %struct.ossl_property_definition_st* @ossl_property_find_property(%struct.ossl_property_list_st* noundef nonnull %call12, %struct.ossl_lib_ctx_st* noundef %call11, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)) #9
  %cmp28.not = icmp eq %struct.ossl_property_definition_st* %call27, null
  br i1 %cmp28.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.end26
  %call31 = tail call i8* @ossl_property_get_string_value(%struct.ossl_lib_ctx_st* noundef %call11, %struct.ossl_property_definition_st* noundef nonnull %call27) #9
  %output_structure = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %output_structure to i8**
  store i8* %call31, i8** %2, align 8, !tbaa !47
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end26
  %encoder33 = bitcast i8* %call to %struct.ossl_encoder_st**
  store %struct.ossl_encoder_st* %encoder, %struct.ossl_encoder_st** %encoder33, align 8, !tbaa !41
  %encoderctx34 = getelementptr inbounds i8, i8* %call, i64 8
  %3 = bitcast i8* %encoderctx34 to i8**
  store i8* %encoderctx, i8** %3, align 8, !tbaa !44
  br label %cleanup

err:                                              ; preds = %if.then23, %if.then15, %if.then8
  tail call void @ossl_encoder_instance_free(%struct.ossl_encoder_instance_st* noundef nonnull %0) #10
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end32, %if.then5, %if.then
  %retval.0 = phi %struct.ossl_encoder_instance_st* [ null, %if.then5 ], [ null, %err ], [ %0, %if.end32 ], [ null, %if.then ]
  ret %struct.ossl_encoder_instance_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_encoder_ctx_add_encoder_inst(%struct.ossl_encoder_ctx_st* nocapture noundef %ctx, %struct.ossl_encoder_instance_st* noundef %ei) unnamed_addr #0 {
entry:
  %encoder_insts = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %ctx, i64 0, i32 3
  %0 = load %struct.stack_st_OSSL_ENCODER_INSTANCE*, %struct.stack_st_OSSL_ENCODER_INSTANCE** %encoder_insts, align 8, !tbaa !13
  %cmp = icmp eq %struct.stack_st_OSSL_ENCODER_INSTANCE* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc %struct.stack_st_OSSL_ENCODER_INSTANCE* @sk_OSSL_ENCODER_INSTANCE_new_null() #10
  store %struct.stack_st_OSSL_ENCODER_INSTANCE* %call, %struct.stack_st_OSSL_ENCODER_INSTANCE** %encoder_insts, align 8, !tbaa !13
  %cmp2 = icmp eq %struct.stack_st_OSSL_ENCODER_INSTANCE* %call, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.ossl_encoder_ctx_add_encoder_inst, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786688, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %1 = phi %struct.stack_st_OSSL_ENCODER_INSTANCE* [ %call, %land.lhs.true ], [ %0, %entry ]
  %call4 = tail call fastcc i32 @sk_OSSL_ENCODER_INSTANCE_push(%struct.stack_st_OSSL_ENCODER_INSTANCE* noundef nonnull %1, %struct.ossl_encoder_instance_st* noundef %ei) #10
  %cmp5 = icmp sgt i32 %call4, 0
  %conv = zext i1 %cmp5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %conv, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @OSSL_ENCODER_CTX_add_extra(%struct.ossl_encoder_ctx_st* nocapture noundef readnone %ctx, %struct.ossl_lib_ctx_st* nocapture noundef readnone %libctx, i8* nocapture noundef readnone %propq) local_unnamed_addr #4 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_ENCODER_INSTANCE_num(%struct.stack_st_OSSL_ENCODER_INSTANCE* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_ENCODER_INSTANCE* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_ENCODER_CTX_set_construct(%struct.ossl_encoder_ctx_st* noundef writeonly %ctx, i8* (%struct.ossl_encoder_instance_st*, i8*)* noundef %construct) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_encoder_ctx_st* %ctx, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 328, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.OSSL_ENCODER_CTX_set_construct, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786690, i8* noundef null) #9
  br label %return

if.end:                                           ; preds = %entry
  %construct3 = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %ctx, i64 0, i32 4
  store i8* (%struct.ossl_encoder_instance_st*, i8*)* %construct, i8* (%struct.ossl_encoder_instance_st*, i8*)** %construct3, align 8, !tbaa !26
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_ENCODER_CTX_set_construct_data(%struct.ossl_encoder_ctx_st* noundef writeonly %ctx, i8* noundef %construct_data) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_encoder_ctx_st* %ctx, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 339, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.OSSL_ENCODER_CTX_set_construct_data, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786690, i8* noundef null) #9
  br label %return

if.end:                                           ; preds = %entry
  %construct_data3 = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %ctx, i64 0, i32 6
  store i8* %construct_data, i8** %construct_data3, align 8, !tbaa !27
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_ENCODER_CTX_set_cleanup(%struct.ossl_encoder_ctx_st* noundef writeonly %ctx, void (i8*)* noundef %cleanup) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_encoder_ctx_st* %ctx, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 350, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.OSSL_ENCODER_CTX_set_cleanup, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786690, i8* noundef null) #9
  br label %return

if.end:                                           ; preds = %entry
  %cleanup3 = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %ctx, i64 0, i32 5
  store void (i8*)* %cleanup, void (i8*)** %cleanup3, align 8, !tbaa !40
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ossl_encoder_st* @OSSL_ENCODER_INSTANCE_get_encoder(%struct.ossl_encoder_instance_st* noundef readonly %encoder_inst) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq %struct.ossl_encoder_instance_st* %encoder_inst, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %encoder = getelementptr inbounds %struct.ossl_encoder_instance_st, %struct.ossl_encoder_instance_st* %encoder_inst, i64 0, i32 0
  %0 = load %struct.ossl_encoder_st*, %struct.ossl_encoder_st** %encoder, align 8, !tbaa !41
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_encoder_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.ossl_encoder_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @OSSL_ENCODER_INSTANCE_get_encoder_ctx(%struct.ossl_encoder_instance_st* noundef readonly %encoder_inst) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq %struct.ossl_encoder_instance_st* %encoder_inst, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %encoderctx = getelementptr inbounds %struct.ossl_encoder_instance_st, %struct.ossl_encoder_instance_st* %encoder_inst, i64 0, i32 1
  %0 = load i8*, i8** %encoderctx, align 8, !tbaa !44
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %0, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @OSSL_ENCODER_INSTANCE_get_output_type(%struct.ossl_encoder_instance_st* noundef readonly %encoder_inst) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq %struct.ossl_encoder_instance_st* %encoder_inst, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %output_type = getelementptr inbounds %struct.ossl_encoder_instance_st, %struct.ossl_encoder_instance_st* %encoder_inst, i64 0, i32 2
  %0 = load i8*, i8** %output_type, align 8, !tbaa !46
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %0, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @OSSL_ENCODER_INSTANCE_get_output_structure(%struct.ossl_encoder_instance_st* noundef readonly %encoder_inst) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq %struct.ossl_encoder_instance_st* %encoder_inst, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %output_structure = getelementptr inbounds %struct.ossl_encoder_instance_st, %struct.ossl_encoder_instance_st* %encoder_inst, i64 0, i32 3
  %0 = load i8*, i8** %output_structure, align 8, !tbaa !47
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %0, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

declare %struct.bio_method_st* @BIO_s_file() local_unnamed_addr #3

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @OSSL_ENCODER_up_ref(%struct.ossl_encoder_st* noundef) local_unnamed_addr #3

declare %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #3

declare %struct.ossl_property_list_st* @ossl_encoder_parsed_properties(%struct.ossl_encoder_st* noundef) local_unnamed_addr #3

declare i8* @OSSL_ENCODER_get0_name(%struct.ossl_encoder_st* noundef) local_unnamed_addr #3

declare %struct.ossl_property_definition_st* @ossl_property_find_property(%struct.ossl_property_list_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare i8* @ossl_property_get_string_value(%struct.ossl_lib_ctx_st* noundef, %struct.ossl_property_definition_st* noundef) local_unnamed_addr #3

declare i8* @OSSL_ENCODER_get0_properties(%struct.ossl_encoder_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_OSSL_ENCODER_INSTANCE* @sk_OSSL_ENCODER_INSTANCE_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #9
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_OSSL_ENCODER_INSTANCE*
  ret %struct.stack_st_OSSL_ENCODER_INSTANCE* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_ENCODER_INSTANCE_push(%struct.stack_st_OSSL_ENCODER_INSTANCE* noundef %sk, %struct.ossl_encoder_instance_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_ENCODER_INSTANCE* %sk to %struct.stack_st*
  %1 = bitcast %struct.ossl_encoder_instance_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #9
  ret i32 %call
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #3

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_encoder_instance_st* @sk_OSSL_ENCODER_INSTANCE_value(%struct.stack_st_OSSL_ENCODER_INSTANCE* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_ENCODER_INSTANCE* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #9
  %1 = bitcast i8* %call to %struct.ossl_encoder_instance_st*
  ret %struct.ossl_encoder_instance_st* %1
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #6

declare i32 @OSSL_ENCODER_is_a(%struct.ossl_encoder_st* noundef, i8* noundef) local_unnamed_addr #3

declare void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

declare void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #3

declare %struct.ossl_core_bio_st* @ossl_core_bio_new_from_bio(%struct.bio_st* noundef) local_unnamed_addr #3

declare i32 @ossl_pw_passphrase_callback_enc(i8* noundef, i64 noundef, i64* noundef, %struct.ossl_param_st* noundef, i8* noundef) #3

declare i32 @ossl_core_bio_free(%struct.ossl_core_bio_st* noundef) local_unnamed_addr #3

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"encoder_process_data_st", !6, i64 0, !6, i64 8, !9, i64 16, !9, i64 20, !6, i64 24, !9, i64 32, !6, i64 40, !6, i64 48, !10, i64 56, !6, i64 64}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !6, i64 8}
!12 = !{!5, !9, i64 16}
!13 = !{!14, !6, i64 24}
!14 = !{!"ossl_encoder_ctx_st", !9, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !15, i64 56}
!15 = !{!"ossl_passphrase_data_st", !7, i64 0, !7, i64 8, !9, i64 24, !6, i64 32, !10, i64 40}
!16 = !{!5, !6, i64 24}
!17 = !{!14, !6, i64 16}
!18 = !{!5, !9, i64 32}
!19 = !{!5, !9, i64 20}
!20 = !{!14, !6, i64 8}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!5, !6, i64 40}
!24 = !{!5, !6, i64 48}
!25 = !{!5, !10, i64 56}
!26 = !{!14, !6, i64 32}
!27 = !{!14, !6, i64 48}
!28 = !{!5, !6, i64 64}
!29 = !{i64 0, i64 8, !30, i64 8, i64 4, !31, i64 16, i64 8, !30, i64 24, i64 8, !32, i64 32, i64 8, !32}
!30 = !{!6, !6, i64 0}
!31 = !{!9, !9, i64 0}
!32 = !{!10, !10, i64 0}
!33 = !{!34, !6, i64 112}
!34 = !{!"ossl_encoder_st", !35, i64 0, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128}
!35 = !{!"ossl_endecode_base_st", !6, i64 0, !9, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40, !6, i64 48}
!36 = !{!14, !9, i64 0}
!37 = !{!38, !6, i64 8}
!38 = !{!"buf_mem_st", !10, i64 0, !6, i64 8, !10, i64 16, !10, i64 24}
!39 = !{!38, !10, i64 0}
!40 = !{!14, !6, i64 40}
!41 = !{!42, !6, i64 0}
!42 = !{!"ossl_encoder_instance_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!43 = !{!34, !6, i64 64}
!44 = !{!42, !6, i64 8}
!45 = !{!34, !6, i64 56}
!46 = !{!42, !6, i64 16}
!47 = !{!42, !6, i64 24}
