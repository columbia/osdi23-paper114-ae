; ModuleID = 'crypto/encode_decode/decoder_lib.c'
source_filename = "crypto/encode_decode/decoder_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_decoder_ctx_st = type { i8*, i8*, i32, %struct.stack_st_OSSL_DECODER_INSTANCE*, i32 (%struct.ossl_decoder_instance_st*, %struct.ossl_param_st*, i8*)*, void (i8*)*, i8*, %struct.ossl_passphrase_data_st }
%struct.stack_st_OSSL_DECODER_INSTANCE = type opaque
%struct.ossl_decoder_instance_st = type { %struct.ossl_decoder_st*, i8*, i8*, i8*, i8 }
%struct.ossl_decoder_st = type { %struct.ossl_endecode_base_st, i8* (i8*)*, void (i8*)*, i32 (%struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, i32)*, i32 (i8*, %struct.ossl_core_bio_st*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*, i8*, i64, i32 (%struct.ossl_param_st*, i8*)*, i8*)* }
%struct.ossl_endecode_base_st = type { %struct.ossl_provider_st*, i32, i8*, %struct.ossl_algorithm_st*, %struct.ossl_property_list_st*, i32, i8* }
%struct.ossl_provider_st = type opaque
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.ossl_property_list_st = type opaque
%struct.ossl_core_bio_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_passphrase_data_st = type { i32, %union.anon, i8, i8*, i64 }
%union.anon = type { %struct.anon }
%struct.anon = type { i8*, i64 }
%struct.bio_st = type opaque
%struct.decoder_process_data_st = type { %struct.ossl_decoder_ctx_st*, %struct.bio_st*, i64, i64, i8 }
%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_property_definition_st = type opaque
%struct.stack_st = type opaque
%struct.collect_extra_decoder_data_st = type { %struct.ossl_decoder_ctx_st*, i8*, i32, i64, i64, i64, i64 }
%struct.stack_st_OSSL_DECODER = type opaque

@.str = private unnamed_addr constant [35 x i8] c"crypto/encode_decode/decoder_lib.c\00", align 1
@__func__.OSSL_DECODER_from_bio = private unnamed_addr constant [22 x i8] c"OSSL_DECODER_from_bio\00", align 1
@.str.1 = private unnamed_addr constant [141 x i8] c"No decoders were found. For standard decoders you need at least one of the default or base providers available. Did you forget to load them?\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Input type: \00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Input structure: \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"No supported data to decode. %s%s%s%s%s%s\00", align 1
@__func__.OSSL_DECODER_from_data = private unnamed_addr constant [23 x i8] c"OSSL_DECODER_from_data\00", align 1
@__func__.OSSL_DECODER_CTX_set_selection = private unnamed_addr constant [31 x i8] c"OSSL_DECODER_CTX_set_selection\00", align 1
@__func__.OSSL_DECODER_CTX_set_input_type = private unnamed_addr constant [32 x i8] c"OSSL_DECODER_CTX_set_input_type\00", align 1
@__func__.OSSL_DECODER_CTX_set_input_structure = private unnamed_addr constant [37 x i8] c"OSSL_DECODER_CTX_set_input_structure\00", align 1
@__func__.ossl_decoder_instance_new = private unnamed_addr constant [26 x i8] c"ossl_decoder_instance_new\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"there are no property definitions with decoder %s\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.10 = private unnamed_addr constant [74 x i8] c"the mandatory 'input' property is missing for decoder %s (properties: %s)\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"structure\00", align 1
@__func__.ossl_decoder_ctx_add_decoder_inst = private unnamed_addr constant [34 x i8] c"ossl_decoder_ctx_add_decoder_inst\00", align 1
@__func__.OSSL_DECODER_CTX_add_decoder = private unnamed_addr constant [29 x i8] c"OSSL_DECODER_CTX_add_decoder\00", align 1
@__func__.OSSL_DECODER_CTX_add_extra = private unnamed_addr constant [27 x i8] c"OSSL_DECODER_CTX_add_extra\00", align 1
@__func__.OSSL_DECODER_CTX_set_construct = private unnamed_addr constant [31 x i8] c"OSSL_DECODER_CTX_set_construct\00", align 1
@__func__.OSSL_DECODER_CTX_set_construct_data = private unnamed_addr constant [36 x i8] c"OSSL_DECODER_CTX_set_construct_data\00", align 1
@__func__.OSSL_DECODER_CTX_set_cleanup = private unnamed_addr constant [29 x i8] c"OSSL_DECODER_CTX_set_cleanup\00", align 1
@__func__.OSSL_DECODER_export = private unnamed_addr constant [20 x i8] c"OSSL_DECODER_export\00", align 1
@__func__.bio_from_file = private unnamed_addr constant [14 x i8] c"bio_from_file\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"data-type\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"data-structure\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"type-specific\00", align 1
@__func__.decoder_process = private unnamed_addr constant [16 x i8] c"decoder_process\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_DECODER_from_bio(%struct.ossl_decoder_ctx_st* noundef %ctx, %struct.bio_st* noundef %in) local_unnamed_addr #0 {
entry:
  %data = alloca %struct.decoder_process_data_st, align 8
  %0 = bitcast %struct.decoder_process_data_st* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8
  %cmp = icmp eq %struct.bio_st* %in, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.OSSL_DECODER_from_bio, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 786690, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @OSSL_DECODER_CTX_get_num_decoders(%struct.ossl_decoder_ctx_st* noundef %ctx) #10
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.OSSL_DECODER_from_bio, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 102, i8* noundef getelementptr inbounds ([141 x i8], [141 x i8]* @.str.1, i64 0, i64 0)) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i64 @ERR_peek_last_error() #9
  %call5 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %in, i32 noundef 133, i64 noundef 0, i8* noundef null) #9
  %1 = and i64 %call5, 2147483648
  %cmp6.not = icmp eq i64 %1, 0
  br i1 %cmp6.not, label %if.end16, label %if.then8

if.then8:                                         ; preds = %if.end3
  %call9 = tail call %struct.bio_method_st* @BIO_f_readbuffer() #9
  %call10 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call9) #9
  %cmp11 = icmp eq %struct.bio_st* %call10, null
  br i1 %cmp11, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.then8
  %call15 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %call10, %struct.bio_st* noundef nonnull %in) #9
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %if.end3
  %new_bio.0 = phi %struct.bio_st* [ %call10, %if.end14 ], [ null, %if.end3 ]
  %in.addr.0 = phi %struct.bio_st* [ %call15, %if.end14 ], [ %in, %if.end3 ]
  %call17 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 40) #9
  %ctx18 = getelementptr inbounds %struct.decoder_process_data_st, %struct.decoder_process_data_st* %data, i64 0, i32 0
  store %struct.ossl_decoder_ctx_st* %ctx, %struct.ossl_decoder_ctx_st** %ctx18, align 8, !tbaa !4
  %bio = getelementptr inbounds %struct.decoder_process_data_st, %struct.decoder_process_data_st* %data, i64 0, i32 1
  store %struct.bio_st* %in.addr.0, %struct.bio_st** %bio, align 8, !tbaa !11
  %pwdata = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %ctx, i64 0, i32 7
  %call19 = call i32 @ossl_pw_enable_passphrase_caching(%struct.ossl_passphrase_data_st* noundef nonnull %pwdata) #9
  %call20 = call i32 @decoder_process(%struct.ossl_param_st* noundef null, i8* noundef nonnull %0) #10
  %flag_construct_called = getelementptr inbounds %struct.decoder_process_data_st, %struct.decoder_process_data_st* %data, i64 0, i32 4
  %bf.load = load i8, i8* %flag_construct_called, align 8
  %2 = and i8 %bf.load, 2
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then21, label %if.end65

if.then21:                                        ; preds = %if.end16
  %start_input_type = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %ctx, i64 0, i32 0
  %3 = load i8*, i8** %start_input_type, align 8, !tbaa !12
  %cmp22.not = icmp eq i8* %3, null
  %input_structure30.phi.trans.insert = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %ctx, i64 0, i32 1
  %.pre = load i8*, i8** %input_structure30.phi.trans.insert, align 8, !tbaa !15
  %cmp24.not = icmp eq i8* %.pre, null
  %cond47 = select i1 %cmp22.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* %3
  %cond29 = select i1 %cmp22.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)
  %4 = select i1 %cmp22.not, i1 true, i1 %cmp24.not
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %cmp31.not = icmp eq i8* %.pre, null
  %cond33 = select i1 %cmp31.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0)
  %6 = select i1 %cmp22.not, i1 true, i1 %cmp31.not
  %7 = select i1 %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %cond56 = select i1 %cmp31.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* %.pre
  %call57 = call i64 @ERR_peek_last_error() #9
  %cmp58 = icmp eq i64 %call57, %call4
  br i1 %cmp58, label %if.then63, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then21
  %call60 = call i64 @ERR_peek_error() #9
  %cmp61 = icmp eq i64 %call60, 0
  br i1 %cmp61, label %if.then63, label %if.end65

if.then63:                                        ; preds = %lor.lhs.false, %if.then21
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.OSSL_DECODER_from_bio, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 524556, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* noundef %5, i8* noundef %cond29, i8* noundef %cond47, i8* noundef %7, i8* noundef %cond33, i8* noundef %cond56) #9
  br label %if.end65

if.end65:                                         ; preds = %lor.lhs.false, %if.then63, %if.end16
  %ok.0 = phi i32 [ %call20, %if.end16 ], [ 0, %if.then63 ], [ 0, %lor.lhs.false ]
  call void @ossl_pw_clear_passphrase_cache(%struct.ossl_passphrase_data_st* noundef nonnull %pwdata) #9
  %cmp67.not = icmp eq %struct.bio_st* %new_bio.0, null
  br i1 %cmp67.not, label %cleanup, label %if.then69

if.then69:                                        ; preds = %if.end65
  %call70 = call %struct.bio_st* @BIO_pop(%struct.bio_st* noundef nonnull %new_bio.0) #9
  %call71 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %new_bio.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.then69, %if.then8, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then8 ], [ %ok.0, %if.then69 ], [ %ok.0, %if.end65 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_DECODER_CTX_get_num_decoders(%struct.ossl_decoder_ctx_st* noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_decoder_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %decoder_insts = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %ctx, i64 0, i32 3
  %0 = load %struct.stack_st_OSSL_DECODER_INSTANCE*, %struct.stack_st_OSSL_DECODER_INSTANCE** %decoder_insts, align 8, !tbaa !16
  %cmp1 = icmp eq %struct.stack_st_OSSL_DECODER_INSTANCE* %0, null
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call fastcc i32 @sk_OSSL_DECODER_INSTANCE_num(%struct.stack_st_OSSL_DECODER_INSTANCE* noundef nonnull %0) #10
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i64 @ERR_peek_last_error() local_unnamed_addr #2

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_f_readbuffer() local_unnamed_addr #2

declare %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ossl_pw_enable_passphrase_caching(%struct.ossl_passphrase_data_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @decoder_process(%struct.ossl_param_st* noundef %params, i8* nocapture noundef %arg) #0 {
entry:
  %new_data = alloca %struct.decoder_process_data_st, align 8
  %data_type = alloca i8*, align 8
  %data_structure = alloca i8*, align 8
  %n_i_s_was_set = alloca i32, align 4
  %ctx1 = bitcast i8* %arg to %struct.ossl_decoder_ctx_st**
  %0 = load %struct.ossl_decoder_ctx_st*, %struct.ossl_decoder_ctx_st** %ctx1, align 8, !tbaa !4
  %1 = bitcast %struct.decoder_process_data_st* %new_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #8
  %2 = bitcast i8** %data_type to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8
  store i8* null, i8** %data_type, align 8, !tbaa !17
  %3 = bitcast i8** %data_structure to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8
  store i8* null, i8** %data_structure, align 8, !tbaa !17
  %4 = getelementptr inbounds i8, i8* %arg, i64 32
  %bf.load = load i8, i8* %4, align 8
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %4, align 8
  %call = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 40) #9
  %5 = load %struct.ossl_decoder_ctx_st*, %struct.ossl_decoder_ctx_st** %ctx1, align 8, !tbaa !4
  %ctx4 = getelementptr inbounds %struct.decoder_process_data_st, %struct.decoder_process_data_st* %new_data, i64 0, i32 0
  store %struct.ossl_decoder_ctx_st* %5, %struct.ossl_decoder_ctx_st** %ctx4, align 8, !tbaa !4
  %recursion = getelementptr inbounds i8, i8* %arg, i64 24
  %6 = bitcast i8* %recursion to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !18
  %add = add i64 %7, 1
  %recursion5 = getelementptr inbounds %struct.decoder_process_data_st, %struct.decoder_process_data_st* %new_data, i64 0, i32 3
  store i64 %add, i64* %recursion5, align 8, !tbaa !18
  %cmp = icmp eq %struct.ossl_param_st* %params, null
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  %bio2 = getelementptr inbounds i8, i8* %arg, i64 8
  %8 = bitcast i8* %bio2 to %struct.bio_st**
  %call6 = call i32 @OSSL_DECODER_CTX_get_num_decoders(%struct.ossl_decoder_ctx_st* noundef %0) #10
  %conv = sext i32 %call6 to i64
  %current_decoder_inst_index = getelementptr inbounds i8, i8* %arg, i64 16
  %9 = bitcast i8* %current_decoder_inst_index to i64*
  store i64 %conv, i64* %9, align 8, !tbaa !19
  %10 = load %struct.bio_st*, %struct.bio_st** %8, align 8, !tbaa !11
  br label %if.end88

if.else:                                          ; preds = %entry
  %decoder_insts = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %0, i64 0, i32 3
  %11 = load %struct.stack_st_OSSL_DECODER_INSTANCE*, %struct.stack_st_OSSL_DECODER_INSTANCE** %decoder_insts, align 8, !tbaa !16
  %current_decoder_inst_index8 = getelementptr inbounds i8, i8* %arg, i64 16
  %12 = bitcast i8* %current_decoder_inst_index8 to i64*
  %13 = load i64, i64* %12, align 8, !tbaa !19
  %conv9 = trunc i64 %13 to i32
  %call10 = call fastcc %struct.ossl_decoder_instance_st* @sk_OSSL_DECODER_INSTANCE_value(%struct.stack_st_OSSL_DECODER_INSTANCE* noundef %11, i32 noundef %conv9) #10
  %call11 = call %struct.ossl_decoder_st* @OSSL_DECODER_INSTANCE_get_decoder(%struct.ossl_decoder_instance_st* noundef %call10) #10
  %bf.load12 = load i8, i8* %4, align 8
  %bf.clear13 = and i8 %bf.load12, -3
  store i8 %bf.clear13, i8* %4, align 8
  %construct = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %0, i64 0, i32 4
  %14 = load i32 (%struct.ossl_decoder_instance_st*, %struct.ossl_param_st*, i8*)*, i32 (%struct.ossl_decoder_instance_st*, %struct.ossl_param_st*, i8*)** %construct, align 8, !tbaa !20
  %cmp15.not = icmp eq i32 (%struct.ossl_decoder_instance_st*, %struct.ossl_param_st*, i8*)* %14, null
  br i1 %cmp15.not, label %if.end35, label %if.then17

if.then17:                                        ; preds = %if.else
  %construct_data = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %0, i64 0, i32 6
  %15 = load i8*, i8** %construct_data, align 8, !tbaa !21
  %call23 = call i32 %14(%struct.ossl_decoder_instance_st* noundef %call10, %struct.ossl_param_st* noundef nonnull %params, i8* noundef %15) #9
  %bf.load29 = load i8, i8* %4, align 8
  %bf.set31 = or i8 %bf.load29, 2
  store i8 %bf.set31, i8* %4, align 8
  %cmp32 = icmp sgt i32 %call23, 0
  br i1 %cmp32, label %cleanup271, label %if.end35

if.end35:                                         ; preds = %if.then17, %if.else
  %call36 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef nonnull %params, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #9
  %cmp37 = icmp eq %struct.ossl_param_st* %call36, null
  br i1 %cmp37, label %cleanup271, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end35
  %data_type39 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call36, i64 0, i32 1
  %16 = load i32, i32* %data_type39, align 8, !tbaa !22
  %cmp40.not = icmp eq i32 %16, 5
  br i1 %cmp40.not, label %if.end43, label %cleanup271

if.end43:                                         ; preds = %lor.lhs.false
  %data44 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call36, i64 0, i32 2
  %17 = load i8*, i8** %data44, align 8, !tbaa !24
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call36, i64 0, i32 3
  %18 = load i64, i64* %data_size, align 8, !tbaa !25
  %conv45 = trunc i64 %18 to i32
  %call46 = call %struct.bio_st* @BIO_new_mem_buf(i8* noundef %17, i32 noundef %conv45) #9
  %bio47 = getelementptr inbounds %struct.decoder_process_data_st, %struct.decoder_process_data_st* %new_data, i64 0, i32 1
  store %struct.bio_st* %call46, %struct.bio_st** %bio47, align 8, !tbaa !11
  %cmp49 = icmp eq %struct.bio_st* %call46, null
  br i1 %cmp49, label %cleanup271, label %if.end52

if.end52:                                         ; preds = %if.end43
  %call54 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef nonnull %params, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0)) #9
  %cmp55.not = icmp eq %struct.ossl_param_st* %call54, null
  br i1 %cmp55.not, label %if.end60, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end52
  %call57 = call i32 @OSSL_PARAM_get_utf8_string_ptr(%struct.ossl_param_st* noundef nonnull %call54, i8** noundef nonnull %data_type) #9
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %cleanup271, label %if.end60

if.end60:                                         ; preds = %land.lhs.true, %if.end52
  %call61 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef nonnull %params, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0)) #9
  %cmp62.not = icmp eq %struct.ossl_param_st* %call61, null
  br i1 %cmp62.not, label %if.end68, label %land.lhs.true64

land.lhs.true64:                                  ; preds = %if.end60
  %call65 = call i32 @OSSL_PARAM_get_utf8_string_ptr(%struct.ossl_param_st* noundef nonnull %call61, i8** noundef nonnull %data_structure) #9
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %cleanup271, label %if.end68

if.end68:                                         ; preds = %land.lhs.true64, %if.end60
  %19 = load i8*, i8** %data_type, align 8, !tbaa !17
  %cmp69 = icmp ne i8* %19, null
  %20 = load i8*, i8** %data_structure, align 8
  %cmp72 = icmp ne i8* %20, null
  %or.cond = select i1 %cmp69, i1 %cmp72, i1 false
  br i1 %or.cond, label %land.lhs.true74, label %if.end88thread-pre-split

land.lhs.true74:                                  ; preds = %if.end68
  %call75 = call i32 @strcasecmp(i8* noundef nonnull %20, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0)) #11
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %if.then78, label %if.end88thread-pre-split

if.then78:                                        ; preds = %land.lhs.true74
  store i8* null, i8** %data_structure, align 8, !tbaa !17
  br label %if.end88thread-pre-split

if.end88thread-pre-split:                         ; preds = %if.end68, %land.lhs.true74, %if.then78
  %.pr = load i64, i64* %12, align 8, !tbaa !19
  br label %if.end88

if.end88:                                         ; preds = %if.end88thread-pre-split, %do.body
  %21 = phi i64 [ %.pr, %if.end88thread-pre-split ], [ %conv, %do.body ]
  %.pre-phi = phi i64* [ %12, %if.end88thread-pre-split ], [ %9, %do.body ]
  %bio.1 = phi %struct.bio_st* [ %call46, %if.end88thread-pre-split ], [ %10, %do.body ]
  %decoder.0 = phi %struct.ossl_decoder_st* [ %call11, %if.end88thread-pre-split ], [ null, %do.body ]
  %cmp90 = icmp eq i64 %21, 0
  br i1 %cmp90, label %cleanup271, label %if.end93

if.end93:                                         ; preds = %if.end88
  %call94 = call i64 @BIO_ctrl(%struct.bio_st* noundef %bio.1, i32 noundef 133, i64 noundef 0, i8* noundef null) #9
  %sext = shl i64 %call94, 32
  %conv96 = ashr exact i64 %sext, 32
  %cmp97 = icmp slt i64 %sext, 0
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.end93
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 814, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.decoder_process, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 524320, i8* noundef null) #9
  br label %cleanup271

if.end100:                                        ; preds = %if.end93
  %call101 = call %struct.ossl_core_bio_st* @ossl_core_bio_new_from_bio(%struct.bio_st* noundef %bio.1) #9
  %cmp102 = icmp eq %struct.ossl_core_bio_st* %call101, null
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.end100
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 819, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.decoder_process, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 786688, i8* noundef null) #9
  br label %cleanup271

if.end105:                                        ; preds = %if.end100
  %22 = load i64, i64* %.pre-phi, align 8, !tbaa !19
  %cmp107.not395 = icmp eq i64 %22, 0
  br i1 %cmp107.not395, label %cleanup271, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end105
  %decoder_insts109 = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %0, i64 0, i32 3
  %23 = bitcast i32* %n_i_s_was_set to i8*
  %cond = icmp eq %struct.ossl_decoder_st* %decoder.0, null
  %start_input_type = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %0, i64 0, i32 0
  %input_structure = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %0, i64 0, i32 1
  %current_decoder_inst_index212 = getelementptr inbounds %struct.decoder_process_data_st, %struct.decoder_process_data_st* %new_data, i64 0, i32 2
  %flag_input_structure_checked218 = getelementptr inbounds %struct.decoder_process_data_st, %struct.decoder_process_data_st* %new_data, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup260
  %dec397.in = phi i64 [ %22, %for.body.lr.ph ], [ %dec397, %cleanup260 ]
  %ok.3396 = phi i32 [ 0, %for.body.lr.ph ], [ %ok.4, %cleanup260 ]
  %dec397 = add i64 %dec397.in, -1
  %24 = load %struct.stack_st_OSSL_DECODER_INSTANCE*, %struct.stack_st_OSSL_DECODER_INSTANCE** %decoder_insts109, align 8, !tbaa !16
  %conv110 = trunc i64 %dec397 to i32
  %call111 = call fastcc %struct.ossl_decoder_instance_st* @sk_OSSL_DECODER_INSTANCE_value(%struct.stack_st_OSSL_DECODER_INSTANCE* noundef %24, i32 noundef %conv110) #10
  %call112 = call %struct.ossl_decoder_st* @OSSL_DECODER_INSTANCE_get_decoder(%struct.ossl_decoder_instance_st* noundef %call111) #10
  %call113 = call i8* @OSSL_DECODER_INSTANCE_get_decoder_ctx(%struct.ossl_decoder_instance_st* noundef %call111) #10
  %call114 = call i8* @OSSL_DECODER_INSTANCE_get_input_type(%struct.ossl_decoder_instance_st* noundef %call111) #10
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #8
  %call115 = call i8* @OSSL_DECODER_INSTANCE_get_input_structure(%struct.ossl_decoder_instance_st* noundef %call111, i32* noundef nonnull %n_i_s_was_set) #10
  br i1 %cond, label %land.lhs.true122, label %land.lhs.true138

land.lhs.true122:                                 ; preds = %for.body
  %25 = load i8*, i8** %start_input_type, align 8, !tbaa !12
  %cmp123.not = icmp eq i8* %25, null
  br i1 %cmp123.not, label %if.end146, label %land.lhs.true125

land.lhs.true125:                                 ; preds = %land.lhs.true122
  %call127 = call i32 @strcasecmp(i8* noundef nonnull %25, i8* noundef %call114) #11
  %cmp128.not = icmp eq i32 %call127, 0
  br i1 %cmp128.not, label %if.end146, label %cleanup260, !llvm.loop !26

land.lhs.true138:                                 ; preds = %for.body
  %call139 = call i32 @OSSL_DECODER_is_a(%struct.ossl_decoder_st* noundef nonnull %decoder.0, i8* noundef %call114) #9
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %cleanup260, label %if.end146, !llvm.loop !26

if.end146:                                        ; preds = %land.lhs.true122, %land.lhs.true125, %land.lhs.true138
  %26 = load i8*, i8** %data_type, align 8, !tbaa !17
  %cmp147.not = icmp eq i8* %26, null
  br i1 %cmp147.not, label %if.end157, label %land.lhs.true149

land.lhs.true149:                                 ; preds = %if.end146
  %call150 = call i32 @OSSL_DECODER_is_a(%struct.ossl_decoder_st* noundef %call112, i8* noundef nonnull %26) #9
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %cleanup260, label %if.end157, !llvm.loop !26

if.end157:                                        ; preds = %land.lhs.true149, %if.end146
  %27 = load i8*, i8** %data_structure, align 8, !tbaa !17
  %cmp158.not = icmp eq i8* %27, null
  br i1 %cmp158.not, label %if.end172, label %land.lhs.true160

land.lhs.true160:                                 ; preds = %if.end157
  %cmp161 = icmp eq i8* %call115, null
  br i1 %cmp161, label %cleanup260, label %lor.lhs.false163, !llvm.loop !26

lor.lhs.false163:                                 ; preds = %land.lhs.true160
  %call164 = call i32 @strcasecmp(i8* noundef nonnull %27, i8* noundef nonnull %call115) #11
  %cmp165.not = icmp eq i32 %call164, 0
  br i1 %cmp165.not, label %if.end172, label %cleanup260, !llvm.loop !26

if.end172:                                        ; preds = %lor.lhs.false163, %if.end157
  %bf.load173 = load i8, i8* %4, align 8
  %28 = and i8 %bf.load173, 4
  %tobool175.not = icmp eq i8 %28, 0
  br i1 %tobool175.not, label %land.lhs.true176, label %if.end197

land.lhs.true176:                                 ; preds = %if.end172
  %29 = load i8*, i8** %input_structure, align 8, !tbaa !15
  %cmp177 = icmp ne i8* %29, null
  %cmp180 = icmp ne i8* %call115, null
  %or.cond283 = select i1 %cmp177, i1 %cmp180, i1 false
  br i1 %or.cond283, label %if.then182, label %if.end197

if.then182:                                       ; preds = %land.lhs.true176
  %bf.set186 = or i8 %bf.load173, 4
  store i8 %bf.set186, i8* %4, align 8
  %30 = load i8*, i8** %input_structure, align 8, !tbaa !15
  %call188 = call i32 @strcasecmp(i8* noundef nonnull %call115, i8* noundef %30) #11
  %cmp189.not = icmp eq i32 %call188, 0
  br i1 %cmp189.not, label %if.end197, label %cleanup260, !llvm.loop !26

if.end197:                                        ; preds = %if.then182, %land.lhs.true176, %if.end172
  %call198 = call i64 @BIO_ctrl(%struct.bio_st* noundef %bio.1, i32 noundef 128, i64 noundef %conv96, i8* noundef null) #9
  %call200 = call i64 @BIO_ctrl(%struct.bio_st* noundef %bio.1, i32 noundef 133, i64 noundef 0, i8* noundef null) #9
  %sext375 = shl i64 %call200, 32
  %conv202 = ashr exact i64 %sext375, 32
  %cmp203.not = icmp eq i64 %conv202, %conv96
  br i1 %cmp203.not, label %do.body207, label %cleanup260.thread

do.body207:                                       ; preds = %if.end197
  %call211 = call i32 @ERR_set_mark() #9
  store i64 %dec397, i64* %current_decoder_inst_index212, align 8, !tbaa !19
  %bf.load214 = load i8, i8* %4, align 8
  %bf.clear216 = and i8 %bf.load214, 4
  %bf.load219 = load i8, i8* %flag_input_structure_checked218, align 8
  %bf.clear220 = and i8 %bf.load219, -5
  %bf.set221 = or i8 %bf.clear220, %bf.clear216
  store i8 %bf.set221, i8* %flag_input_structure_checked218, align 8
  %decode = getelementptr inbounds %struct.ossl_decoder_st, %struct.ossl_decoder_st* %call112, i64 0, i32 8
  %31 = load i32 (i8*, %struct.ossl_core_bio_st*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*, %struct.ossl_core_bio_st*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)** %decode, align 8, !tbaa !28
  %32 = load %struct.ossl_decoder_ctx_st*, %struct.ossl_decoder_ctx_st** %ctx4, align 8, !tbaa !4
  %selection = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %32, i64 0, i32 2
  %33 = load i32, i32* %selection, align 8, !tbaa !31
  %pwdata = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %32, i64 0, i32 7
  %34 = bitcast %struct.ossl_passphrase_data_st* %pwdata to i8*
  %call224 = call i32 %31(i8* noundef %call113, %struct.ossl_core_bio_st* noundef nonnull %call101, i32 noundef %33, i32 (%struct.ossl_param_st*, i8*)* noundef nonnull @decoder_process, i8* noundef nonnull %1, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)* noundef nonnull @ossl_pw_passphrase_callback_dec, i8* noundef nonnull %34) #9
  %bf.load230 = load i8, i8* %flag_input_structure_checked218, align 8
  %bf.clear232 = and i8 %bf.load230, 2
  %bf.load235 = load i8, i8* %4, align 8
  %bf.clear238 = and i8 %bf.load235, -3
  %bf.set239 = or i8 %bf.clear238, %bf.clear232
  store i8 %bf.set239, i8* %4, align 8
  %tobool241.not = icmp ne i32 %call224, 0
  %tobool248.not = icmp eq i8 %bf.clear232, 0
  %or.cond377 = select i1 %tobool241.not, i1 %tobool248.not, i1 false
  br i1 %or.cond377, label %if.end251, label %if.then249

if.then249:                                       ; preds = %do.body207
  %call250 = call i32 @ERR_clear_last_mark() #9
  br label %cleanup260.thread

if.end251:                                        ; preds = %do.body207
  %call252 = call i32 @ERR_pop_to_mark() #9
  %bf.load254 = load i8, i8* %flag_input_structure_checked218, align 8
  %bf.clear255 = and i8 %bf.load254, 1
  %tobool257.not = icmp eq i8 %bf.clear255, 0
  br i1 %tobool257.not, label %cleanup260, label %cleanup260.thread

cleanup260.thread:                                ; preds = %if.end197, %if.end251, %if.then249
  %ok.4.ph = phi i32 [ %call224, %if.then249 ], [ %call224, %if.end251 ], [ %ok.3396, %if.end197 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #8
  br label %cleanup271

cleanup260:                                       ; preds = %if.end251, %if.then182, %lor.lhs.false163, %land.lhs.true160, %land.lhs.true149, %land.lhs.true138, %land.lhs.true125
  %ok.4 = phi i32 [ %ok.3396, %land.lhs.true125 ], [ %ok.3396, %land.lhs.true138 ], [ %ok.3396, %land.lhs.true149 ], [ %ok.3396, %land.lhs.true160 ], [ %ok.3396, %lor.lhs.false163 ], [ %ok.3396, %if.then182 ], [ %call224, %if.end251 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #8
  %cmp107.not = icmp eq i64 %dec397, 0
  br i1 %cmp107.not, label %cleanup271, label %for.body

cleanup271:                                       ; preds = %cleanup260, %if.end105, %if.then17, %land.lhs.true64, %land.lhs.true, %if.end43, %if.end35, %lor.lhs.false, %if.then99, %if.then104, %if.end88, %cleanup260.thread
  %ok.5 = phi i32 [ 0, %if.end88 ], [ 0, %if.then99 ], [ 0, %if.then104 ], [ %ok.4.ph, %cleanup260.thread ], [ 0, %lor.lhs.false ], [ 0, %if.end35 ], [ 0, %if.end43 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true64 ], [ 1, %if.then17 ], [ 0, %if.end105 ], [ %ok.4, %cleanup260 ]
  %cbio.0 = phi %struct.ossl_core_bio_st* [ null, %if.end88 ], [ null, %if.then99 ], [ null, %if.then104 ], [ %call101, %cleanup260.thread ], [ null, %lor.lhs.false ], [ null, %if.end35 ], [ null, %if.end43 ], [ null, %land.lhs.true ], [ null, %land.lhs.true64 ], [ null, %if.then17 ], [ %call101, %if.end105 ], [ %call101, %cleanup260 ]
  %call268 = call i32 @ossl_core_bio_free(%struct.ossl_core_bio_st* noundef %cbio.0) #9
  %bio269 = getelementptr inbounds %struct.decoder_process_data_st, %struct.decoder_process_data_st* %new_data, i64 0, i32 1
  %35 = load %struct.bio_st*, %struct.bio_st** %bio269, align 8, !tbaa !11
  %call270 = call i32 @BIO_free(%struct.bio_st* noundef %35) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #8
  ret i32 %ok.5
}

declare i64 @ERR_peek_error() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @ossl_pw_clear_passphrase_cache(%struct.ossl_passphrase_data_st* noundef) local_unnamed_addr #2

declare %struct.bio_st* @BIO_pop(%struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_DECODER_from_fp(%struct.ossl_decoder_ctx_st* noundef %ctx, %struct._IO_FILE* noundef %fp) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.bio_st* @bio_from_file(%struct._IO_FILE* noundef %fp) #10
  %cmp.not = icmp eq %struct.bio_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @OSSL_DECODER_from_bio(%struct.ossl_decoder_ctx_st* noundef %ctx, %struct.bio_st* noundef nonnull %call) #10
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
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 124, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.bio_from_file, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 524320, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret %struct.bio_st* %call1
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_DECODER_from_data(%struct.ossl_decoder_ctx_st* noundef %ctx, i8** noundef %pdata, i64* noundef %pdata_len) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8** %pdata, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8*, i8** %pdata, align 8, !tbaa !17
  %cmp1 = icmp eq i8* %0, null
  %cmp3 = icmp eq i64* %pdata_len, null
  %or.cond = or i1 %cmp3, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 151, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.OSSL_DECODER_from_data, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 786690, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %1 = load i64, i64* %pdata_len, align 8, !tbaa !32
  %conv = trunc i64 %1 to i32
  %call = tail call %struct.bio_st* @BIO_new_mem_buf(i8* noundef nonnull %0, i32 noundef %conv) #9
  %call4 = tail call i32 @OSSL_DECODER_from_bio(%struct.ossl_decoder_ctx_st* noundef %ctx, %struct.bio_st* noundef %call) #10
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = bitcast i8** %pdata to i8*
  %call6 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %2) #9
  store i64 %call6, i64* %pdata_len, align 8, !tbaa !32
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %ret.0 = phi i32 [ 1, %if.then5 ], [ 0, %if.end ]
  %call8 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %if.end7 ]
  ret i32 %retval.0
}

declare %struct.bio_st* @BIO_new_mem_buf(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_DECODER_CTX_set_selection(%struct.ossl_decoder_ctx_st* noundef writeonly %ctx, i32 noundef %selection) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_decoder_ctx_st* %ctx, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.OSSL_DECODER_CTX_set_selection, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 786690, i8* noundef null) #9
  br label %return

if.end:                                           ; preds = %entry
  %selection3 = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %ctx, i64 0, i32 2
  store i32 %selection, i32* %selection3, align 8, !tbaa !31
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_DECODER_CTX_set_input_type(%struct.ossl_decoder_ctx_st* noundef writeonly %ctx, i8* noundef %input_type) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_decoder_ctx_st* %ctx, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 184, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.OSSL_DECODER_CTX_set_input_type, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 786690, i8* noundef null) #9
  br label %return

if.end:                                           ; preds = %entry
  %start_input_type = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %ctx, i64 0, i32 0
  store i8* %input_type, i8** %start_input_type, align 8, !tbaa !12
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_DECODER_CTX_set_input_structure(%struct.ossl_decoder_ctx_st* noundef writeonly %ctx, i8* noundef %input_structure) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_decoder_ctx_st* %ctx, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 200, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.OSSL_DECODER_CTX_set_input_structure, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 786690, i8* noundef null) #9
  br label %return

if.end:                                           ; preds = %entry
  %input_structure3 = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %ctx, i64 0, i32 1
  store i8* %input_structure, i8** %input_structure3, align 8, !tbaa !15
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_decoder_instance_st* @ossl_decoder_instance_new(%struct.ossl_decoder_st* noundef %decoder, i8* noundef %decoderctx) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_decoder_st* %decoder, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 222, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_decoder_instance_new, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 786690, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 40, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 226) #9
  %0 = bitcast i8* %call to %struct.ossl_decoder_instance_st*
  %cmp3 = icmp eq i8* %call, null
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 227, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_decoder_instance_new, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 786688, i8* noundef null) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @OSSL_DECODER_up_ref(%struct.ossl_decoder_st* noundef nonnull %decoder) #9
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 231, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_decoder_instance_new, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 786691, i8* noundef null) #9
  br label %err

if.end9:                                          ; preds = %if.end6
  %call10 = tail call %struct.ossl_provider_st* @OSSL_DECODER_get0_provider(%struct.ossl_decoder_st* noundef nonnull %decoder) #9
  %call11 = tail call %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef %call10) #9
  %call12 = tail call %struct.ossl_property_list_st* @ossl_decoder_parsed_properties(%struct.ossl_decoder_st* noundef nonnull %decoder) #9
  %cmp13 = icmp eq %struct.ossl_property_list_st* %call12, null
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end9
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 239, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_decoder_instance_new, i64 0, i64 0)) #9
  %call16 = tail call i8* @OSSL_DECODER_get0_name(%struct.ossl_decoder_st* noundef nonnull %decoder) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 524558, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i8* noundef %call16) #9
  br label %err

if.end17:                                         ; preds = %if.end9
  %call18 = tail call %struct.ossl_property_definition_st* @ossl_property_find_property(%struct.ossl_property_list_st* noundef nonnull %call12, %struct.ossl_lib_ctx_st* noundef %call11, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)) #9
  %call19 = tail call i8* @ossl_property_get_string_value(%struct.ossl_lib_ctx_st* noundef %call11, %struct.ossl_property_definition_st* noundef %call18) #9
  %input_type = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %input_type to i8**
  store i8* %call19, i8** %1, align 8, !tbaa !33
  %cmp21 = icmp eq i8* %call19, null
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end17
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 249, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_decoder_instance_new, i64 0, i64 0)) #9
  %call24 = tail call i8* @OSSL_DECODER_get0_name(%struct.ossl_decoder_st* noundef nonnull %decoder) #9
  %call25 = tail call i8* @OSSL_DECODER_get0_properties(%struct.ossl_decoder_st* noundef nonnull %decoder) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 524558, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.10, i64 0, i64 0), i8* noundef %call24, i8* noundef %call25) #9
  br label %err

if.end26:                                         ; preds = %if.end17
  %call27 = tail call %struct.ossl_property_definition_st* @ossl_property_find_property(%struct.ossl_property_list_st* noundef nonnull %call12, %struct.ossl_lib_ctx_st* noundef %call11, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #9
  %cmp28.not = icmp eq %struct.ossl_property_definition_st* %call27, null
  br i1 %cmp28.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.end26
  %call31 = tail call i8* @ossl_property_get_string_value(%struct.ossl_lib_ctx_st* noundef %call11, %struct.ossl_property_definition_st* noundef nonnull %call27) #9
  %input_structure = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %input_structure to i8**
  store i8* %call31, i8** %2, align 8, !tbaa !35
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end26
  %decoder33 = bitcast i8* %call to %struct.ossl_decoder_st**
  store %struct.ossl_decoder_st* %decoder, %struct.ossl_decoder_st** %decoder33, align 8, !tbaa !36
  %decoderctx34 = getelementptr inbounds i8, i8* %call, i64 8
  %3 = bitcast i8* %decoderctx34 to i8**
  store i8* %decoderctx, i8** %3, align 8, !tbaa !37
  br label %cleanup

err:                                              ; preds = %if.then23, %if.then15, %if.then8
  tail call void @ossl_decoder_instance_free(%struct.ossl_decoder_instance_st* noundef nonnull %0) #10
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end32, %if.then5, %if.then
  %retval.0 = phi %struct.ossl_decoder_instance_st* [ null, %if.then5 ], [ null, %err ], [ %0, %if.end32 ], [ null, %if.then ]
  ret %struct.ossl_decoder_instance_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OSSL_DECODER_up_ref(%struct.ossl_decoder_st* noundef) local_unnamed_addr #2

declare %struct.ossl_provider_st* @OSSL_DECODER_get0_provider(%struct.ossl_decoder_st* noundef) local_unnamed_addr #2

declare %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

declare %struct.ossl_property_list_st* @ossl_decoder_parsed_properties(%struct.ossl_decoder_st* noundef) local_unnamed_addr #2

declare i8* @OSSL_DECODER_get0_name(%struct.ossl_decoder_st* noundef) local_unnamed_addr #2

declare %struct.ossl_property_definition_st* @ossl_property_find_property(%struct.ossl_property_list_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @ossl_property_get_string_value(%struct.ossl_lib_ctx_st* noundef, %struct.ossl_property_definition_st* noundef) local_unnamed_addr #2

declare i8* @OSSL_DECODER_get0_properties(%struct.ossl_decoder_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @ossl_decoder_instance_free(%struct.ossl_decoder_instance_st* noundef %decoder_inst) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_decoder_instance_st* %decoder_inst, null
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %decoder = getelementptr inbounds %struct.ossl_decoder_instance_st, %struct.ossl_decoder_instance_st* %decoder_inst, i64 0, i32 0
  %0 = load %struct.ossl_decoder_st*, %struct.ossl_decoder_st** %decoder, align 8, !tbaa !36
  %cmp1.not = icmp eq %struct.ossl_decoder_st* %0, null
  br i1 %cmp1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %freectx = getelementptr inbounds %struct.ossl_decoder_st, %struct.ossl_decoder_st* %0, i64 0, i32 2
  %1 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !38
  %decoderctx = getelementptr inbounds %struct.ossl_decoder_instance_st, %struct.ossl_decoder_instance_st* %decoder_inst, i64 0, i32 1
  %2 = load i8*, i8** %decoderctx, align 8, !tbaa !37
  tail call void %1(i8* noundef %2) #9
  %.pre = load %struct.ossl_decoder_st*, %struct.ossl_decoder_st** %decoder, align 8, !tbaa !36
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %3 = phi %struct.ossl_decoder_st* [ %.pre, %if.then2 ], [ null, %if.then ]
  %decoderctx4 = getelementptr inbounds %struct.ossl_decoder_instance_st, %struct.ossl_decoder_instance_st* %decoder_inst, i64 0, i32 1
  store i8* null, i8** %decoderctx4, align 8, !tbaa !37
  tail call void @OSSL_DECODER_free(%struct.ossl_decoder_st* noundef %3) #9
  store %struct.ossl_decoder_st* null, %struct.ossl_decoder_st** %decoder, align 8, !tbaa !36
  %4 = bitcast %struct.ossl_decoder_instance_st* %decoder_inst to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 280) #9
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  ret void
}

declare void @OSSL_DECODER_free(%struct.ossl_decoder_st* noundef) #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_decoder_ctx_add_decoder_inst(%struct.ossl_decoder_ctx_st* nocapture noundef %ctx, %struct.ossl_decoder_instance_st* noundef %di) local_unnamed_addr #0 {
entry:
  %decoder_insts = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %ctx, i64 0, i32 3
  %0 = load %struct.stack_st_OSSL_DECODER_INSTANCE*, %struct.stack_st_OSSL_DECODER_INSTANCE** %decoder_insts, align 8, !tbaa !16
  %cmp = icmp eq %struct.stack_st_OSSL_DECODER_INSTANCE* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc %struct.stack_st_OSSL_DECODER_INSTANCE* @sk_OSSL_DECODER_INSTANCE_new_null() #10
  store %struct.stack_st_OSSL_DECODER_INSTANCE* %call, %struct.stack_st_OSSL_DECODER_INSTANCE** %decoder_insts, align 8, !tbaa !16
  %cmp2 = icmp eq %struct.stack_st_OSSL_DECODER_INSTANCE* %call, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 292, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.ossl_decoder_ctx_add_decoder_inst, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 786688, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %1 = phi %struct.stack_st_OSSL_DECODER_INSTANCE* [ %call, %land.lhs.true ], [ %0, %entry ]
  %call4 = tail call fastcc i32 @sk_OSSL_DECODER_INSTANCE_push(%struct.stack_st_OSSL_DECODER_INSTANCE* noundef nonnull %1, %struct.ossl_decoder_instance_st* noundef %di) #10
  %cmp5 = icmp sgt i32 %call4, 0
  %conv = zext i1 %cmp5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %conv, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_OSSL_DECODER_INSTANCE* @sk_OSSL_DECODER_INSTANCE_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #9
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_OSSL_DECODER_INSTANCE*
  ret %struct.stack_st_OSSL_DECODER_INSTANCE* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_DECODER_INSTANCE_push(%struct.stack_st_OSSL_DECODER_INSTANCE* noundef %sk, %struct.ossl_decoder_instance_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_DECODER_INSTANCE* %sk to %struct.stack_st*
  %1 = bitcast %struct.ossl_decoder_instance_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_DECODER_CTX_add_decoder(%struct.ossl_decoder_ctx_st* noundef %ctx, %struct.ossl_decoder_st* noundef %decoder) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_decoder_ctx_st* %ctx, null
  %cmp3.not = icmp eq %struct.ossl_decoder_st* %decoder, null
  %or.cond = or i1 %cmp.not, %cmp3.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 318, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.OSSL_DECODER_CTX_add_decoder, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 786690, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_provider_st* @OSSL_DECODER_get0_provider(%struct.ossl_decoder_st* noundef nonnull %decoder) #9
  %call7 = tail call i8* @OSSL_PROVIDER_get0_provider_ctx(%struct.ossl_provider_st* noundef %call) #9
  %newctx = getelementptr inbounds %struct.ossl_decoder_st, %struct.ossl_decoder_st* %decoder, i64 0, i32 1
  %0 = load i8* (i8*)*, i8* (i8*)** %newctx, align 8, !tbaa !39
  %call8 = tail call i8* %0(i8* noundef %call7) #9
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %err.thread, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.end
  %call12 = tail call %struct.ossl_decoder_instance_st* @ossl_decoder_instance_new(%struct.ossl_decoder_st* noundef nonnull %decoder, i8* noundef nonnull %call8) #10
  %cmp13 = icmp eq %struct.ossl_decoder_instance_st* %call12, null
  br i1 %cmp13, label %if.then22, label %if.end16

if.end16:                                         ; preds = %lor.lhs.false11
  %call17 = tail call i32 @ossl_decoder_ctx_add_decoder_inst(%struct.ossl_decoder_ctx_st* noundef nonnull %ctx, %struct.ossl_decoder_instance_st* noundef nonnull %call12) #10
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %err.thread, label %cleanup

err.thread:                                       ; preds = %if.end, %if.end16
  %decoder_inst.0.ph = phi %struct.ossl_decoder_instance_st* [ %call12, %if.end16 ], [ null, %if.end ]
  tail call void @ossl_decoder_instance_free(%struct.ossl_decoder_instance_st* noundef %decoder_inst.0.ph) #10
  br label %cleanup

if.then22:                                        ; preds = %lor.lhs.false11
  tail call void @ossl_decoder_instance_free(%struct.ossl_decoder_instance_st* noundef null) #10
  %freectx = getelementptr inbounds %struct.ossl_decoder_st, %struct.ossl_decoder_st* %decoder, i64 0, i32 2
  %1 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !38
  tail call void %1(i8* noundef nonnull %call8) #9
  br label %cleanup

cleanup:                                          ; preds = %err.thread, %if.then22, %if.end16, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end16 ], [ 0, %if.then22 ], [ 0, %err.thread ]
  ret i32 %retval.0
}

declare i8* @OSSL_PROVIDER_get0_provider_ctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_DECODER_CTX_add_extra(%struct.ossl_decoder_ctx_st* noundef %ctx, %struct.ossl_lib_ctx_st* noundef %libctx, i8* nocapture noundef readnone %propq) local_unnamed_addr #0 {
entry:
  %data = alloca %struct.collect_extra_decoder_data_st, align 8
  %0 = bitcast %struct.collect_extra_decoder_data_st* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #8
  %cmp.not = icmp eq %struct.ossl_decoder_ctx_st* %ctx, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 485, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.OSSL_DECODER_CTX_add_extra, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 786690, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %decoder_insts = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %ctx, i64 0, i32 3
  %1 = load %struct.stack_st_OSSL_DECODER_INSTANCE*, %struct.stack_st_OSSL_DECODER_INSTANCE** %decoder_insts, align 8, !tbaa !16
  %cmp3 = icmp eq %struct.stack_st_OSSL_DECODER_INSTANCE* %1, null
  br i1 %cmp3, label %cleanup, label %do.body

do.body:                                          ; preds = %if.end
  %call = tail call fastcc %struct.stack_st_OSSL_DECODER* @sk_OSSL_DECODER_new_null() #10
  %cmp7 = icmp eq %struct.stack_st_OSSL_DECODER* %call, null
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %do.body
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 504, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.OSSL_DECODER_CTX_add_extra, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 786688, i8* noundef null) #9
  br label %cleanup

if.end10:                                         ; preds = %do.body
  %2 = bitcast %struct.stack_st_OSSL_DECODER* %call to i8*
  tail call void @OSSL_DECODER_do_all_provided(%struct.ossl_lib_ctx_st* noundef %libctx, void (%struct.ossl_decoder_st*, i8*)* noundef nonnull @collect_all_decoders, i8* noundef nonnull %2) #9
  %call11 = tail call fastcc i32 @sk_OSSL_DECODER_num(%struct.stack_st_OSSL_DECODER* noundef nonnull %call) #10
  %call13 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 56) #9
  %ctx14 = getelementptr inbounds %struct.collect_extra_decoder_data_st, %struct.collect_extra_decoder_data_st* %data, i64 0, i32 0
  store %struct.ossl_decoder_ctx_st* %ctx, %struct.ossl_decoder_ctx_st** %ctx14, align 8, !tbaa !40
  %w_prev_start = getelementptr inbounds %struct.collect_extra_decoder_data_st, %struct.collect_extra_decoder_data_st* %data, i64 0, i32 3
  store i64 0, i64* %w_prev_start, align 8, !tbaa !42
  %3 = load %struct.stack_st_OSSL_DECODER_INSTANCE*, %struct.stack_st_OSSL_DECODER_INSTANCE** %decoder_insts, align 8, !tbaa !16
  %call16 = call fastcc i32 @sk_OSSL_DECODER_INSTANCE_num(%struct.stack_st_OSSL_DECODER_INSTANCE* noundef %3) #10
  %conv17 = sext i32 %call16 to i64
  %w_prev_end = getelementptr inbounds %struct.collect_extra_decoder_data_st, %struct.collect_extra_decoder_data_st* %data, i64 0, i32 4
  store i64 %conv17, i64* %w_prev_end, align 8, !tbaa !43
  %w_new_end = getelementptr inbounds %struct.collect_extra_decoder_data_st, %struct.collect_extra_decoder_data_st* %data, i64 0, i32 6
  %w_new_start = getelementptr inbounds %struct.collect_extra_decoder_data_st, %struct.collect_extra_decoder_data_st* %data, i64 0, i32 5
  %type_check = getelementptr inbounds %struct.collect_extra_decoder_data_st, %struct.collect_extra_decoder_data_st* %data, i64 0, i32 2
  %output_type = getelementptr inbounds %struct.collect_extra_decoder_data_st, %struct.collect_extra_decoder_data_st* %data, i64 0, i32 1
  %cmp3484.not = icmp eq i32 %call11, 0
  %4 = call i32 @llvm.umax.i32(i32 %call11, i32 1)
  %umax = sext i32 %4 to i64
  br label %do.body18

do.body18:                                        ; preds = %for.end45, %if.end10
  %5 = phi i64 [ %conv17, %if.end10 ], [ %13, %for.end45 ]
  %depth.0 = phi i64 [ 0, %if.end10 ], [ %inc52, %for.end45 ]
  store i64 %5, i64* %w_new_end, align 8, !tbaa !44
  store i64 %5, i64* %w_new_start, align 8, !tbaa !45
  store i32 0, i32* %type_check, align 8, !tbaa !46
  br label %for.body

for.body:                                         ; preds = %do.body18, %for.inc42
  %6 = phi i32 [ 0, %do.body18 ], [ %inc44, %for.inc42 ]
  %7 = phi i64 [ %5, %do.body18 ], [ %12, %for.inc42 ]
  %8 = load i64, i64* %w_prev_start, align 8, !tbaa !42
  %cmp2686 = icmp ult i64 %8, %7
  br i1 %cmp2686, label %for.body28, label %for.inc42

for.body28:                                       ; preds = %for.body, %for.end
  %i.087 = phi i64 [ %inc40, %for.end ], [ %8, %for.body ]
  %9 = load %struct.stack_st_OSSL_DECODER_INSTANCE*, %struct.stack_st_OSSL_DECODER_INSTANCE** %decoder_insts, align 8, !tbaa !16
  %conv30 = trunc i64 %i.087 to i32
  %call31 = call fastcc %struct.ossl_decoder_instance_st* @sk_OSSL_DECODER_INSTANCE_value(%struct.stack_st_OSSL_DECODER_INSTANCE* noundef %9, i32 noundef %conv30) #10
  %call32 = call i8* @OSSL_DECODER_INSTANCE_get_input_type(%struct.ossl_decoder_instance_st* noundef %call31) #10
  store i8* %call32, i8** %output_type, align 8, !tbaa !47
  br i1 %cmp3484.not, label %for.end, label %for.body36

for.body36:                                       ; preds = %for.body28, %for.body36
  %j.085 = phi i64 [ %inc, %for.body36 ], [ 0, %for.body28 ]
  %conv37 = trunc i64 %j.085 to i32
  %call38 = call fastcc %struct.ossl_decoder_st* @sk_OSSL_DECODER_value(%struct.stack_st_OSSL_DECODER* noundef nonnull %call, i32 noundef %conv37) #10
  call fastcc void @collect_extra_decoder(%struct.ossl_decoder_st* noundef %call38, i8* noundef nonnull %0) #10
  %inc = add nuw i64 %j.085, 1
  %exitcond.not = icmp eq i64 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.body36, !llvm.loop !48

for.end:                                          ; preds = %for.body36, %for.body28
  %inc40 = add nuw i64 %i.087, 1
  %10 = load i64, i64* %w_prev_end, align 8, !tbaa !43
  %cmp26 = icmp ult i64 %inc40, %10
  br i1 %cmp26, label %for.body28, label %for.inc42.loopexit, !llvm.loop !49

for.inc42.loopexit:                               ; preds = %for.end
  %.pre = load i32, i32* %type_check, align 8, !tbaa !46
  br label %for.inc42

for.inc42:                                        ; preds = %for.inc42.loopexit, %for.body
  %11 = phi i32 [ %.pre, %for.inc42.loopexit ], [ %6, %for.body ]
  %12 = phi i64 [ %10, %for.inc42.loopexit ], [ %7, %for.body ]
  %inc44 = add i32 %11, 1
  store i32 %inc44, i32* %type_check, align 8, !tbaa !46
  %cmp21 = icmp ult i32 %inc44, 2
  br i1 %cmp21, label %for.body, label %for.end45, !llvm.loop !50

for.end45:                                        ; preds = %for.inc42
  %13 = load i64, i64* %w_new_end, align 8, !tbaa !44
  %14 = load i64, i64* %w_new_start, align 8, !tbaa !45
  store i64 %14, i64* %w_prev_start, align 8, !tbaa !42
  store i64 %13, i64* %w_prev_end, align 8, !tbaa !43
  %inc52 = add nuw nsw i64 %depth.0, 1
  %cmp54 = icmp ne i64 %13, %14
  %cmp56 = icmp ult i64 %depth.0, 10
  %15 = select i1 %cmp54, i1 %cmp56, i1 false
  br i1 %15, label %do.body18, label %do.end58, !llvm.loop !51

do.end58:                                         ; preds = %for.end45
  call fastcc void @sk_OSSL_DECODER_pop_free(%struct.stack_st_OSSL_DECODER* noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end58, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 1, %do.end58 ], [ 0, %if.then ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_OSSL_DECODER* @sk_OSSL_DECODER_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #9
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_OSSL_DECODER*
  ret %struct.stack_st_OSSL_DECODER* %0
}

declare void @OSSL_DECODER_do_all_provided(%struct.ossl_lib_ctx_st* noundef, void (%struct.ossl_decoder_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @collect_all_decoders(%struct.ossl_decoder_st* noundef %decoder, i8* noundef %arg) #0 {
entry:
  %call = tail call i32 @OSSL_DECODER_up_ref(%struct.ossl_decoder_st* noundef %decoder) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast i8* %arg to %struct.stack_st_OSSL_DECODER*
  tail call fastcc void @sk_OSSL_DECODER_push(%struct.stack_st_OSSL_DECODER* noundef %0, %struct.ossl_decoder_st* noundef %decoder) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_DECODER_num(%struct.stack_st_OSSL_DECODER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_DECODER* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_DECODER_INSTANCE_num(%struct.stack_st_OSSL_DECODER_INSTANCE* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_DECODER_INSTANCE* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_decoder_instance_st* @sk_OSSL_DECODER_INSTANCE_value(%struct.stack_st_OSSL_DECODER_INSTANCE* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_DECODER_INSTANCE* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #9
  %1 = bitcast i8* %call to %struct.ossl_decoder_instance_st*
  ret %struct.ossl_decoder_instance_st* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @OSSL_DECODER_INSTANCE_get_input_type(%struct.ossl_decoder_instance_st* noundef readonly %decoder_inst) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.ossl_decoder_instance_st* %decoder_inst, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %input_type = getelementptr inbounds %struct.ossl_decoder_instance_st, %struct.ossl_decoder_instance_st* %decoder_inst, i64 0, i32 2
  %0 = load i8*, i8** %input_type, align 8, !tbaa !33
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %0, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @collect_extra_decoder(%struct.ossl_decoder_st* noundef %decoder, i8* nocapture noundef %arg) unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_provider_st* @OSSL_DECODER_get0_provider(%struct.ossl_decoder_st* noundef %decoder) #9
  %call1 = tail call i8* @OSSL_PROVIDER_get0_provider_ctx(%struct.ossl_provider_st* noundef %call) #9
  %output_type = getelementptr inbounds i8, i8* %arg, i64 8
  %0 = bitcast i8* %output_type to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !47
  %call2 = tail call i32 @OSSL_DECODER_is_a(%struct.ossl_decoder_st* noundef %decoder, i8* noundef %1) #9
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup55, label %if.then

if.then:                                          ; preds = %entry
  %w_prev_start = getelementptr inbounds i8, i8* %arg, i64 24
  %2 = bitcast i8* %w_prev_start to i64*
  %3 = load i64, i64* %2, align 8, !tbaa !42
  %w_new_end = getelementptr inbounds i8, i8* %arg, i64 48
  %4 = bitcast i8* %w_new_end to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !44
  %cmp96 = icmp ult i64 %3, %5
  br i1 %cmp96, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %ctx = bitcast i8* %arg to %struct.ossl_decoder_ctx_st**
  %algodef = getelementptr inbounds %struct.ossl_decoder_st, %struct.ossl_decoder_st* %decoder, i64 0, i32 0, i32 3
  br label %for.body

for.cond:                                         ; preds = %for.body
  %6 = load i64, i64* %4, align 8, !tbaa !44
  %cmp = icmp ult i64 %inc, %6
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !52

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %j.097 = phi i64 [ %3, %for.body.lr.ph ], [ %inc, %for.cond ]
  %7 = load %struct.ossl_decoder_ctx_st*, %struct.ossl_decoder_ctx_st** %ctx, align 8, !tbaa !40
  %decoder_insts = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %7, i64 0, i32 3
  %8 = load %struct.stack_st_OSSL_DECODER_INSTANCE*, %struct.stack_st_OSSL_DECODER_INSTANCE** %decoder_insts, align 8, !tbaa !16
  %conv = trunc i64 %j.097 to i32
  %call3 = tail call fastcc %struct.ossl_decoder_instance_st* @sk_OSSL_DECODER_INSTANCE_value(%struct.stack_st_OSSL_DECODER_INSTANCE* noundef %8, i32 noundef %conv) #10
  %9 = load %struct.ossl_algorithm_st*, %struct.ossl_algorithm_st** %algodef, align 8, !tbaa !53
  %decoder4 = getelementptr inbounds %struct.ossl_decoder_instance_st, %struct.ossl_decoder_instance_st* %call3, i64 0, i32 0
  %10 = load %struct.ossl_decoder_st*, %struct.ossl_decoder_st** %decoder4, align 8, !tbaa !36
  %algodef6 = getelementptr inbounds %struct.ossl_decoder_st, %struct.ossl_decoder_st* %10, i64 0, i32 0, i32 3
  %11 = load %struct.ossl_algorithm_st*, %struct.ossl_algorithm_st** %algodef6, align 8, !tbaa !53
  %cmp7 = icmp eq %struct.ossl_algorithm_st* %9, %11
  %inc = add nuw i64 %j.097, 1
  br i1 %cmp7, label %cleanup55, label %for.cond

for.end:                                          ; preds = %for.cond, %if.then
  %newctx = getelementptr inbounds %struct.ossl_decoder_st, %struct.ossl_decoder_st* %decoder, i64 0, i32 1
  %12 = load i8* (i8*)*, i8* (i8*)** %newctx, align 8, !tbaa !39
  %call14 = tail call i8* %12(i8* noundef %call1) #9
  %cmp15 = icmp eq i8* %call14, null
  br i1 %cmp15, label %cleanup55, label %if.end18

if.end18:                                         ; preds = %for.end
  %call19 = tail call %struct.ossl_decoder_instance_st* @ossl_decoder_instance_new(%struct.ossl_decoder_st* noundef nonnull %decoder, i8* noundef nonnull %call14) #10
  %cmp20 = icmp eq %struct.ossl_decoder_instance_st* %call19, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  %freectx = getelementptr inbounds %struct.ossl_decoder_st, %struct.ossl_decoder_st* %decoder, i64 0, i32 2
  %13 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !38
  tail call void %13(i8* noundef nonnull %call14) #9
  br label %cleanup55

if.end23:                                         ; preds = %if.end18
  %type_check = getelementptr inbounds i8, i8* %arg, i64 16
  %14 = bitcast i8* %type_check to i32*
  %15 = load i32, i32* %14, align 8, !tbaa !46
  switch i32 %15, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb33
  ]

sw.bb:                                            ; preds = %if.end23
  %call24 = tail call i8* @OSSL_DECODER_INSTANCE_get_input_type(%struct.ossl_decoder_instance_st* noundef nonnull %call19) #10
  %call25 = tail call i32 @OSSL_DECODER_is_a(%struct.ossl_decoder_st* noundef nonnull %decoder, i8* noundef %call24) #9
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %sw.epilog

if.then27:                                        ; preds = %sw.bb
  tail call void @ossl_decoder_instance_free(%struct.ossl_decoder_instance_st* noundef nonnull %call19) #10
  br label %cleanup55

sw.bb33:                                          ; preds = %if.end23
  %call34 = tail call i8* @OSSL_DECODER_INSTANCE_get_input_type(%struct.ossl_decoder_instance_st* noundef nonnull %call19) #10
  %call35 = tail call i32 @OSSL_DECODER_is_a(%struct.ossl_decoder_st* noundef nonnull %decoder, i8* noundef %call34) #9
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %sw.epilog, label %if.then37

if.then37:                                        ; preds = %sw.bb33
  tail call void @ossl_decoder_instance_free(%struct.ossl_decoder_instance_st* noundef nonnull %call19) #10
  br label %cleanup55

sw.epilog:                                        ; preds = %sw.bb33, %sw.bb, %if.end23
  %ctx43 = bitcast i8* %arg to %struct.ossl_decoder_ctx_st**
  %16 = load %struct.ossl_decoder_ctx_st*, %struct.ossl_decoder_ctx_st** %ctx43, align 8, !tbaa !40
  %call44 = tail call i32 @ossl_decoder_ctx_add_decoder_inst(%struct.ossl_decoder_ctx_st* noundef %16, %struct.ossl_decoder_instance_st* noundef nonnull %call19) #10
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %if.end47

if.then46:                                        ; preds = %sw.epilog
  tail call void @ossl_decoder_instance_free(%struct.ossl_decoder_instance_st* noundef nonnull %call19) #10
  br label %cleanup55

if.end47:                                         ; preds = %sw.epilog
  %17 = load i64, i64* %4, align 8, !tbaa !44
  %inc49 = add i64 %17, 1
  store i64 %inc49, i64* %4, align 8, !tbaa !44
  br label %cleanup55

cleanup55:                                        ; preds = %for.body, %entry, %if.end47, %if.then22, %if.then27, %if.then37, %if.then46, %for.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_decoder_st* @sk_OSSL_DECODER_value(%struct.stack_st_OSSL_DECODER* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_DECODER* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #9
  %1 = bitcast i8* %call to %struct.ossl_decoder_st*
  ret %struct.ossl_decoder_st* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_DECODER_pop_free(%struct.stack_st_OSSL_DECODER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_DECODER* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.ossl_decoder_st*)* @OSSL_DECODER_free to void (i8*)*)) #9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_DECODER_CTX_set_construct(%struct.ossl_decoder_ctx_st* noundef writeonly %ctx, i32 (%struct.ossl_decoder_instance_st*, %struct.ossl_param_st*, i8*)* noundef %construct) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_decoder_ctx_st* %ctx, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 567, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.OSSL_DECODER_CTX_set_construct, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 786690, i8* noundef null) #9
  br label %return

if.end:                                           ; preds = %entry
  %construct3 = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %ctx, i64 0, i32 4
  store i32 (%struct.ossl_decoder_instance_st*, %struct.ossl_param_st*, i8*)* %construct, i32 (%struct.ossl_decoder_instance_st*, %struct.ossl_param_st*, i8*)** %construct3, align 8, !tbaa !20
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_DECODER_CTX_set_construct_data(%struct.ossl_decoder_ctx_st* noundef writeonly %ctx, i8* noundef %construct_data) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_decoder_ctx_st* %ctx, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 578, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.OSSL_DECODER_CTX_set_construct_data, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 786690, i8* noundef null) #9
  br label %return

if.end:                                           ; preds = %entry
  %construct_data3 = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %ctx, i64 0, i32 6
  store i8* %construct_data, i8** %construct_data3, align 8, !tbaa !21
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_DECODER_CTX_set_cleanup(%struct.ossl_decoder_ctx_st* noundef writeonly %ctx, void (i8*)* noundef %cleanup) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_decoder_ctx_st* %ctx, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 589, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.OSSL_DECODER_CTX_set_cleanup, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 786690, i8* noundef null) #9
  br label %return

if.end:                                           ; preds = %entry
  %cleanup3 = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %ctx, i64 0, i32 5
  store void (i8*)* %cleanup, void (i8*)** %cleanup3, align 8, !tbaa !54
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.ossl_decoder_instance_st*, %struct.ossl_param_st*, i8*)* @OSSL_DECODER_CTX_get_construct(%struct.ossl_decoder_ctx_st* noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.ossl_decoder_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %construct = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %ctx, i64 0, i32 4
  %0 = load i32 (%struct.ossl_decoder_instance_st*, %struct.ossl_param_st*, i8*)*, i32 (%struct.ossl_decoder_instance_st*, %struct.ossl_param_st*, i8*)** %construct, align 8, !tbaa !20
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 (%struct.ossl_decoder_instance_st*, %struct.ossl_param_st*, i8*)* [ %0, %if.end ], [ null, %entry ]
  ret i32 (%struct.ossl_decoder_instance_st*, %struct.ossl_param_st*, i8*)* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @OSSL_DECODER_CTX_get_construct_data(%struct.ossl_decoder_ctx_st* noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.ossl_decoder_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %construct_data = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %ctx, i64 0, i32 6
  %0 = load i8*, i8** %construct_data, align 8, !tbaa !21
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %0, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define void (i8*)* @OSSL_DECODER_CTX_get_cleanup(%struct.ossl_decoder_ctx_st* noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.ossl_decoder_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cleanup = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %ctx, i64 0, i32 5
  %0 = load void (i8*)*, void (i8*)** %cleanup, align 8, !tbaa !54
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi void (i8*)* [ %0, %if.end ], [ null, %entry ]
  ret void (i8*)* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_DECODER_export(%struct.ossl_decoder_instance_st* noundef %decoder_inst, i8* noundef %reference, i64 noundef %reference_sz, i32 (%struct.ossl_param_st*, i8*)* noundef %export_cb, i8* noundef %export_cbarg) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_decoder_instance_st* %decoder_inst, null
  %cmp3.not = icmp eq i8* %reference, null
  %or.cond = or i1 %cmp.not, %cmp3.not
  %cmp8.not = icmp eq i32 (%struct.ossl_param_st*, i8*)* %export_cb, null
  %or.cond27 = or i1 %or.cond, %cmp8.not
  %cmp13.not = icmp eq i8* %export_cbarg, null
  %or.cond28 = or i1 %or.cond27, %cmp13.not
  br i1 %or.cond28, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 630, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.OSSL_DECODER_export, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 786690, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_decoder_st* @OSSL_DECODER_INSTANCE_get_decoder(%struct.ossl_decoder_instance_st* noundef nonnull %decoder_inst) #10
  %call17 = tail call i8* @OSSL_DECODER_INSTANCE_get_decoder_ctx(%struct.ossl_decoder_instance_st* noundef nonnull %decoder_inst) #10
  %export_object = getelementptr inbounds %struct.ossl_decoder_st, %struct.ossl_decoder_st* %call, i64 0, i32 9
  %0 = load i32 (i8*, i8*, i64, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*, i8*, i64, i32 (%struct.ossl_param_st*, i8*)*, i8*)** %export_object, align 8, !tbaa !55
  %call18 = tail call i32 %0(i8* noundef %call17, i8* noundef nonnull %reference, i64 noundef %reference_sz, i32 (%struct.ossl_param_st*, i8*)* noundef nonnull %export_cb, i8* noundef nonnull %export_cbarg) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call18, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ossl_decoder_st* @OSSL_DECODER_INSTANCE_get_decoder(%struct.ossl_decoder_instance_st* noundef readonly %decoder_inst) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.ossl_decoder_instance_st* %decoder_inst, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %decoder = getelementptr inbounds %struct.ossl_decoder_instance_st, %struct.ossl_decoder_instance_st* %decoder_inst, i64 0, i32 0
  %0 = load %struct.ossl_decoder_st*, %struct.ossl_decoder_st** %decoder, align 8, !tbaa !36
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_decoder_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.ossl_decoder_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @OSSL_DECODER_INSTANCE_get_decoder_ctx(%struct.ossl_decoder_instance_st* noundef readonly %decoder_inst) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.ossl_decoder_instance_st* %decoder_inst, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %decoderctx = getelementptr inbounds %struct.ossl_decoder_instance_st, %struct.ossl_decoder_instance_st* %decoder_inst, i64 0, i32 1
  %0 = load i8*, i8** %decoderctx, align 8, !tbaa !37
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %0, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i8* @OSSL_DECODER_INSTANCE_get_input_structure(%struct.ossl_decoder_instance_st* noundef readonly %decoder_inst, i32* nocapture noundef writeonly %was_set) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq %struct.ossl_decoder_instance_st* %decoder_inst, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %flag_input_structure_was_set = getelementptr inbounds %struct.ossl_decoder_instance_st, %struct.ossl_decoder_instance_st* %decoder_inst, i64 0, i32 4
  %bf.load = load i8, i8* %flag_input_structure_was_set, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  store i32 %bf.cast, i32* %was_set, align 4, !tbaa !56
  %input_structure = getelementptr inbounds %struct.ossl_decoder_instance_st, %struct.ossl_decoder_instance_st* %decoder_inst, i64 0, i32 3
  %0 = load i8*, i8** %input_structure, align 8, !tbaa !35
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %0, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

declare %struct.bio_method_st* @BIO_s_file() local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_DECODER_push(%struct.stack_st_OSSL_DECODER* noundef %sk, %struct.ossl_decoder_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_DECODER* %sk to %struct.stack_st*
  %1 = bitcast %struct.ossl_decoder_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #9
  ret void
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OSSL_DECODER_is_a(%struct.ossl_decoder_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_get_utf8_string_ptr(%struct.ossl_param_st* noundef, i8** noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #6

declare %struct.ossl_core_bio_st* @ossl_core_bio_new_from_bio(%struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare i32 @ossl_pw_passphrase_callback_dec(i8* noundef, i64 noundef, i64* noundef, %struct.ossl_param_st* noundef, i8* noundef) #2

declare i32 @ERR_clear_last_mark() local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare i32 @ossl_core_bio_free(%struct.ossl_core_bio_st* noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
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
!5 = !{!"decoder_process_data_st", !6, i64 0, !6, i64 8, !9, i64 16, !9, i64 24, !10, i64 32, !10, i64 32, !10, i64 32}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!5, !6, i64 8}
!12 = !{!13, !6, i64 0}
!13 = !{!"ossl_decoder_ctx_st", !6, i64 0, !6, i64 8, !10, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !14, i64 56}
!14 = !{!"ossl_passphrase_data_st", !7, i64 0, !7, i64 8, !10, i64 24, !6, i64 32, !9, i64 40}
!15 = !{!13, !6, i64 8}
!16 = !{!13, !6, i64 24}
!17 = !{!6, !6, i64 0}
!18 = !{!5, !9, i64 24}
!19 = !{!5, !9, i64 16}
!20 = !{!13, !6, i64 32}
!21 = !{!13, !6, i64 48}
!22 = !{!23, !10, i64 8}
!23 = !{!"ossl_param_st", !6, i64 0, !10, i64 8, !6, i64 16, !9, i64 24, !9, i64 32}
!24 = !{!23, !6, i64 16}
!25 = !{!23, !9, i64 24}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!29, !6, i64 112}
!29 = !{!"ossl_decoder_st", !30, i64 0, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120}
!30 = !{!"ossl_endecode_base_st", !6, i64 0, !10, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40, !6, i64 48}
!31 = !{!13, !10, i64 16}
!32 = !{!9, !9, i64 0}
!33 = !{!34, !6, i64 16}
!34 = !{!"ossl_decoder_instance_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !10, i64 32}
!35 = !{!34, !6, i64 24}
!36 = !{!34, !6, i64 0}
!37 = !{!34, !6, i64 8}
!38 = !{!29, !6, i64 64}
!39 = !{!29, !6, i64 56}
!40 = !{!41, !6, i64 0}
!41 = !{!"collect_extra_decoder_data_st", !6, i64 0, !6, i64 8, !7, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48}
!42 = !{!41, !9, i64 24}
!43 = !{!41, !9, i64 32}
!44 = !{!41, !9, i64 48}
!45 = !{!41, !9, i64 40}
!46 = !{!41, !7, i64 16}
!47 = !{!41, !6, i64 8}
!48 = distinct !{!48, !27}
!49 = distinct !{!49, !27}
!50 = distinct !{!50, !27}
!51 = distinct !{!51, !27}
!52 = distinct !{!52, !27}
!53 = !{!29, !6, i64 24}
!54 = !{!13, !6, i64 40}
!55 = !{!29, !6, i64 120}
!56 = !{!10, !10, i64 0}
