; ModuleID = 'engines/e_afalg.c'
source_filename = "engines/e_afalg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ERR_string_data_st = type { i64, i8* }
%struct.cbc_cipher_handles = type { i32, %struct.evp_cipher_st* }
%struct.evp_cipher_st = type opaque
%struct.engine_st = type opaque
%struct.st_dynamic_fns = type { i8*, %struct.st_dynamic_MEM_fns }
%struct.st_dynamic_MEM_fns = type { i8* (i64, i8*, i32)*, i8* (i8*, i64, i8*, i32)*, void (i8*, i8*, i32)* }
%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.evp_cipher_ctx_st = type opaque
%struct.afalg_ctx_st = type { i32, i32, i32, %struct.afalg_aio_st }
%struct.afalg_aio_st = type { i32, i32, i64, [1 x %struct.io_event], [1 x %struct.iocb] }
%struct.io_event = type { i64, i64, i64, i64 }
%struct.iocb = type { i64, i32, i32, i16, i16, i32, i64, i64, i64, i64, i32, i32 }
%struct.sockaddr_alg = type { i16, [14 x i8], i32, i32, [64 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.msghdr = type { i8*, i32, %struct.iovec*, i64, i8*, i64, i32 }
%struct.iovec = type { i8*, i64 }
%struct.cmsghdr = type { i64, i32, i32, [0 x i8] }
%struct.timespec = type { i64, i64 }
%struct.async_job_st = type opaque
%struct.async_wait_ctx_st = type opaque

@.str = private unnamed_addr constant [6 x i8] c"afalg\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"engines/e_afalg.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [58 x i8] c"ALG_ERR: ASYNC AFALG not supported this kernel(%d.%d.%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"ALG_ERR: ASYNC AFALG requires kernel version %d.%d.%d or later\0A\00", align 1
@lib_code = internal unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"engines/e_afalg_err.c\00", align 1
@__func__.ERR_AFALG_error = private unnamed_addr constant [16 x i8] c"ERR_AFALG_error\00", align 1
@afalg_cipher_nids = internal global [3 x i32] [i32 419, i32 423, i32 427], align 4
@error_loaded = internal unnamed_addr global i1 false, align 4
@AFALG_str_reasons = internal global [13 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 101, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 107, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 106, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [15 x i8] c"eventfd failed\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to get platform info\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"init failed\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"io setup failed\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"kernel does not support afalg\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"kernel does not support async afalg\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"mem alloc failed\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"socket accept failed\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"socket bind failed\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"socket create failed\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"socket operation failed\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"socket set key failed\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"AFALG engine support\00", align 1
@cbc_handle = internal global [3 x %struct.cbc_cipher_handles] [%struct.cbc_cipher_handles { i32 16, %struct.evp_cipher_st* null }, %struct.cbc_cipher_handles { i32 24, %struct.evp_cipher_st* null }, %struct.cbc_cipher_handles { i32 32, %struct.evp_cipher_st* null }], align 16
@.str.19 = private unnamed_addr constant [9 x i8] c"cbc(aes)\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"skcipher\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"ALG_PERR: %s(%d): Failed to open socket : \00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"ALG_PERR: %s(%d): Failed to bind socket : \00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"ALG_PERR: %s(%d): Socket Accept Failed : \00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"ALG_PERR: %s(%d): Failed to set socket option : \00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"ALG_PERR: %s(%d): io_setup error : \00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"ALG_PERR: %s(%d): sendmsg failed for cipher operation : \00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"ALG_PERR: %s(%d): io_read failed : \00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"ALG_PERR: %s(%d): read failed for event fd : \00", align 1
@.str.29 = private unnamed_addr constant [49 x i8] c"ALG_PERR: %s(%d): retry %d for io_read failed : \00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"ALG_PERR: %s(%d): io_getevents failed : \00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"ALG_PERR: %s(%d): Failed to get eventfd : \00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i64 @v_check(i64 noundef %v) local_unnamed_addr #0 {
entry:
  %cmp.inv = icmp ult i64 %v, 196608
  %. = select i1 %cmp.inv, i64 0, i64 196608
  ret i64 %.
}

; Function Attrs: noinline nounwind uwtable
define i32 @bind_engine(%struct.engine_st* noundef %e, i8* noundef %id, %struct.st_dynamic_fns* nocapture noundef readonly %fns) local_unnamed_addr #1 {
entry:
  %call = tail call i8* @ENGINE_get_static_state() #9
  %static_state = getelementptr inbounds %struct.st_dynamic_fns, %struct.st_dynamic_fns* %fns, i64 0, i32 0
  %0 = load i8*, i8** %static_state, align 8, !tbaa !4
  %cmp = icmp eq i8* %call, %0
  br i1 %cmp, label %skip_cbs, label %if.end

if.end:                                           ; preds = %entry
  %malloc_fn = getelementptr inbounds %struct.st_dynamic_fns, %struct.st_dynamic_fns* %fns, i64 0, i32 1, i32 0
  %1 = load i8* (i64, i8*, i32)*, i8* (i64, i8*, i32)** %malloc_fn, align 8, !tbaa !10
  %realloc_fn = getelementptr inbounds %struct.st_dynamic_fns, %struct.st_dynamic_fns* %fns, i64 0, i32 1, i32 1
  %2 = load i8* (i8*, i64, i8*, i32)*, i8* (i8*, i64, i8*, i32)** %realloc_fn, align 8, !tbaa !11
  %free_fn = getelementptr inbounds %struct.st_dynamic_fns, %struct.st_dynamic_fns* %fns, i64 0, i32 1, i32 2
  %3 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %free_fn, align 8, !tbaa !12
  %call3 = tail call i32 @CRYPTO_set_mem_functions(i8* (i64, i8*, i32)* noundef %1, i8* (i8*, i64, i8*, i32)* noundef %2, void (i8*, i8*, i32)* noundef %3) #9
  br label %skip_cbs

skip_cbs:                                         ; preds = %entry, %if.end
  %call4 = tail call fastcc i32 @bind_helper(%struct.engine_st* noundef %e, i8* noundef %id) #10
  %tobool.not = icmp ne i32 %call4, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

declare i8* @ENGINE_get_static_state() local_unnamed_addr #2

declare i32 @CRYPTO_set_mem_functions(i8* (i64, i8*, i32)* noundef, i8* (i8*, i64, i8*, i32)* noundef, void (i8*, i8*, i32)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @bind_helper(%struct.engine_st* noundef %e, i8* noundef readonly %id) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i8* %id, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @strcmp(i8* noundef nonnull %id, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #11
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call1 = tail call fastcc i32 @afalg_chk_platform() #10
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @bind_afalg(%struct.engine_st* noundef %e) #10
  %tobool6.not = icmp ne i32 %call5, 0
  %. = zext i1 %tobool6.not to i32
  br label %return

return:                                           ; preds = %if.end4, %if.end, %land.lhs.true
  %retval.0 = phi i32 [ 0, %land.lhs.true ], [ 0, %if.end ], [ %., %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @afalg_chk_platform() unnamed_addr #1 {
entry:
  %kver = alloca [3 x i32], align 4
  %ut = alloca %struct.utsname, align 1
  %0 = bitcast [3 x i32]* %kver to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %0, i8 -1, i64 12, i1 false)
  %1 = getelementptr inbounds %struct.utsname, %struct.utsname* %ut, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 390, i8* nonnull %1) #12
  %call = call i32 @uname(%struct.utsname* noundef nonnull %ut) #9
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @ERR_AFALG_error(i32 noundef 111, i32 noundef 838) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.utsname, %struct.utsname* %ut, i64 0, i32 2, i64 0
  %call1 = call i8* @strtok(i8* noundef nonnull %arraydecay, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #9
  %cmp339.not = icmp eq i8* %call1, null
  br i1 %cmp339.not, label %for.end.thread, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ]
  %str.041 = phi i8* [ %call5, %for.body ], [ %call1, %if.end ]
  %call4 = call i32 @atoi(i8* noundef %str.041) #11
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %kver, i64 0, i64 %indvars.iv
  store i32 %call4, i32* %arrayidx, align 4, !tbaa !13
  %call5 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp2 = icmp ult i64 %indvars.iv, 2
  %cmp3 = icmp ne i8* %call5, null
  %2 = select i1 %cmp2, i1 %cmp3, i1 false
  br i1 %2, label %for.body, label %for.end, !llvm.loop !15

for.end:                                          ; preds = %for.body
  %arrayidx6.phi.trans.insert = getelementptr inbounds [3 x i32], [3 x i32]* %kver, i64 0, i64 0
  %.pre = load i32, i32* %arrayidx6.phi.trans.insert, align 4, !tbaa !13
  %arrayidx7.phi.trans.insert = getelementptr inbounds [3 x i32], [3 x i32]* %kver, i64 0, i64 1
  %.pre43 = load i32, i32* %arrayidx7.phi.trans.insert, align 4, !tbaa !13
  %arrayidx9.phi.trans.insert = getelementptr inbounds [3 x i32], [3 x i32]* %kver, i64 0, i64 2
  %.pre44 = load i32, i32* %arrayidx9.phi.trans.insert, align 4, !tbaa !13
  %shl = shl i32 %.pre, 16
  %shl8 = shl i32 %.pre43, 8
  %add = add nsw i32 %shl8, %shl
  %3 = icmp slt i32 %.pre44, 255
  br i1 %3, label %for.end.thread, label %7

for.end.thread:                                   ; preds = %if.end, %for.end
  %add49 = phi i32 [ %add, %for.end ], [ -65792, %if.end ]
  %4 = phi i32 [ %.pre, %for.end ], [ -1, %if.end ]
  %5 = phi i32 [ %.pre43, %for.end ], [ -1, %if.end ]
  %6 = phi i32 [ %.pre44, %for.end ], [ -1, %if.end ]
  br label %7

7:                                                ; preds = %for.end, %for.end.thread
  %add48 = phi i32 [ %add49, %for.end.thread ], [ %add, %for.end ]
  %8 = phi i32 [ %4, %for.end.thread ], [ %.pre, %for.end ]
  %9 = phi i32 [ %5, %for.end.thread ], [ %.pre43, %for.end ]
  %10 = phi i32 [ %6, %for.end.thread ], [ %.pre44, %for.end ]
  %11 = phi i32 [ %6, %for.end.thread ], [ 255, %for.end ]
  %add12 = add nsw i32 %add48, %11
  %cmp13 = icmp slt i32 %add12, 262400
  br i1 %cmp13, label %if.then14, label %if.end20

if.then14:                                        ; preds = %7
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 noundef %8, i32 noundef %9, i32 noundef %10) #9
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i32 noundef 4, i32 noundef 1, i32 noundef 0) #9
  call fastcc void @ERR_AFALG_error(i32 noundef 107, i32 noundef 855) #10
  br label %cleanup

if.end20:                                         ; preds = %7
  %call21 = call i32 @socket(i32 noundef 38, i32 noundef 5, i32 noundef 0) #9
  %cmp22 = icmp eq i32 %call21, -1
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  call fastcc void @ERR_AFALG_error(i32 noundef 109, i32 noundef 862) #10
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %call25 = call i32 @close(i32 noundef %call21) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then23, %if.then14, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then14 ], [ 0, %if.then23 ], [ 1, %if.end24 ]
  call void @llvm.lifetime.end.p0i8(i64 390, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @bind_afalg(%struct.engine_st* noundef %e) unnamed_addr #1 {
entry:
  tail call fastcc void @ERR_load_AFALG_strings() #10
  %call1 = tail call i32 @ENGINE_set_id(%struct.engine_st* noundef %e, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @ENGINE_set_name(%struct.engine_st* noundef %e, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0)) #9
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup.sink.split, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = tail call i32 @ENGINE_set_destroy_function(%struct.engine_st* noundef %e, i32 (%struct.engine_st*)* noundef nonnull @afalg_destroy) #9
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup.sink.split, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = tail call i32 @ENGINE_set_init_function(%struct.engine_st* noundef %e, i32 (%struct.engine_st*)* noundef nonnull @afalg_init) #9
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup.sink.split, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %call11 = tail call i32 @ENGINE_set_finish_function(%struct.engine_st* noundef %e, i32 (%struct.engine_st*)* noundef nonnull @afalg_finish) #9
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup.sink.split, label %for.body.preheader

for.body.preheader:                               ; preds = %lor.lhs.false10
  %0 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @afalg_cipher_nids, i64 0, i64 0), align 4, !tbaa !13
  %call14 = tail call fastcc %struct.evp_cipher_st* @afalg_aes_cbc(i32 noundef %0) #10
  %cmp15 = icmp eq %struct.evp_cipher_st* %call14, null
  br i1 %cmp15, label %cleanup.sink.split, label %for.cond

for.cond:                                         ; preds = %for.body.preheader
  %1 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @afalg_cipher_nids, i64 0, i64 1), align 4, !tbaa !13
  %call14.1 = tail call fastcc %struct.evp_cipher_st* @afalg_aes_cbc(i32 noundef %1) #10
  %cmp15.1 = icmp eq %struct.evp_cipher_st* %call14.1, null
  br i1 %cmp15.1, label %cleanup.sink.split, label %for.cond.1

for.cond.1:                                       ; preds = %for.cond
  %2 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @afalg_cipher_nids, i64 0, i64 2), align 4, !tbaa !13
  %call14.2 = tail call fastcc %struct.evp_cipher_st* @afalg_aes_cbc(i32 noundef %2) #10
  %cmp15.2 = icmp eq %struct.evp_cipher_st* %call14.2, null
  br i1 %cmp15.2, label %cleanup.sink.split, label %for.cond.2

for.cond.2:                                       ; preds = %for.cond.1
  %call19 = tail call i32 @ENGINE_set_ciphers(%struct.engine_st* noundef %e, i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)* noundef nonnull @afalg_ciphers) #9
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %for.cond.2, %for.body.preheader, %for.cond, %for.cond.1, %entry, %lor.lhs.false, %lor.lhs.false4, %lor.lhs.false7, %lor.lhs.false10
  %.sink = phi i32 [ 784, %lor.lhs.false10 ], [ 784, %lor.lhs.false7 ], [ 784, %lor.lhs.false4 ], [ 784, %lor.lhs.false ], [ 784, %entry ], [ 795, %for.cond.1 ], [ 795, %for.cond ], [ 795, %for.body.preheader ], [ 801, %for.cond.2 ]
  tail call fastcc void @ERR_AFALG_error(i32 noundef 100, i32 noundef %.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.cond.2
  %retval.0 = phi i32 [ 1, %for.cond.2 ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind
declare i32 @uname(%struct.utsname* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ERR_AFALG_error(i32 noundef %reason, i32 noundef %line) unnamed_addr #1 {
entry:
  %0 = load i32, i32* @lib_code, align 4, !tbaa !13
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @ERR_get_next_error_library() #9
  store i32 %call, i32* @lib_code, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ERR_AFALG_error, i64 0, i64 0)) #9
  %1 = load i32, i32* @lib_code, align 4, !tbaa !13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef %1, i32 noundef %reason, i8* noundef null) #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef %line, i8* noundef null) #9
  ret void
}

; Function Attrs: nounwind
declare i8* @strtok(i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare i32 @atoi(i8* noundef nonnull) local_unnamed_addr #6

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @ERR_get_next_error_library() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ERR_load_AFALG_strings() unnamed_addr #1 {
entry:
  %0 = load i32, i32* @lib_code, align 4, !tbaa !13
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @ERR_get_next_error_library() #9
  store i32 %call, i32* @lib_code, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %call, %if.then ], [ %0, %entry ]
  %.b = load i1, i1* @error_loaded, align 4
  br i1 %.b, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  %call2 = tail call i32 @ERR_load_strings(i32 noundef %1, %struct.ERR_string_data_st* noundef getelementptr inbounds ([13 x %struct.ERR_string_data_st], [13 x %struct.ERR_string_data_st]* @AFALG_str_reasons, i64 0, i64 0)) #9
  store i1 true, i1* @error_loaded, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  ret void
}

declare i32 @ENGINE_set_id(%struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ENGINE_set_name(%struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ENGINE_set_destroy_function(%struct.engine_st* noundef, i32 (%struct.engine_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @afalg_destroy(%struct.engine_st* nocapture noundef readnone %e) #1 {
entry:
  tail call fastcc void @ERR_unload_AFALG_strings() #10
  tail call fastcc void @free_cbc() #10
  ret i32 1
}

declare i32 @ENGINE_set_init_function(%struct.engine_st* noundef, i32 (%struct.engine_st*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @afalg_init(%struct.engine_st* nocapture noundef readnone %e) #0 {
entry:
  ret i32 1
}

declare i32 @ENGINE_set_finish_function(%struct.engine_st* noundef, i32 (%struct.engine_st*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @afalg_finish(%struct.engine_st* nocapture noundef readnone %e) #0 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_cipher_st* @afalg_aes_cbc(i32 noundef %nid) unnamed_addr #1 {
entry:
  %call = tail call fastcc %struct.cbc_cipher_handles* @get_cipher_handle(i32 noundef %nid) #10
  %cmp = icmp eq %struct.cbc_cipher_handles* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %_hidden = getelementptr inbounds %struct.cbc_cipher_handles, %struct.cbc_cipher_handles* %call, i64 0, i32 1
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %_hidden, align 8, !tbaa !18
  %cmp1 = icmp eq %struct.evp_cipher_st* %0, null
  br i1 %cmp1, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %key_size = getelementptr inbounds %struct.cbc_cipher_handles, %struct.cbc_cipher_handles* %call, i64 0, i32 0
  %1 = load i32, i32* %key_size, align 8, !tbaa !20
  %call2 = tail call %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef %nid, i32 noundef 16, i32 noundef %1) #9
  store %struct.evp_cipher_st* %call2, %struct.evp_cipher_st** %_hidden, align 8, !tbaa !18
  %cmp4 = icmp eq %struct.evp_cipher_st* %call2, null
  br i1 %cmp4, label %if.then27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call6 = tail call i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef nonnull %call2, i32 noundef 16) #9
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then27, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %_hidden, align 8, !tbaa !18
  %call9 = tail call i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef %2, i64 noundef 2) #9
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then27, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %_hidden, align 8, !tbaa !18
  %call13 = tail call i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef %3, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef nonnull @afalg_cipher_init) #9
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then27, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %_hidden, align 8, !tbaa !18
  %call17 = tail call i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef %4, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef nonnull @afalg_do_cipher) #9
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then27, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false15
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %_hidden, align 8, !tbaa !18
  %call21 = tail call i32 @EVP_CIPHER_meth_set_cleanup(%struct.evp_cipher_st* noundef %5, i32 (%struct.evp_cipher_ctx_st*)* noundef nonnull @afalg_cipher_cleanup) #9
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then27, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false19
  %6 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %_hidden, align 8, !tbaa !18
  %call25 = tail call i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef %6, i32 noundef 128) #9
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %lor.lhs.false23.if.end30_crit_edge

lor.lhs.false23.if.end30_crit_edge:               ; preds = %lor.lhs.false23
  %.pre = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %_hidden, align 8, !tbaa !18
  br label %cleanup

if.then27:                                        ; preds = %lor.lhs.false23, %lor.lhs.false19, %lor.lhs.false15, %lor.lhs.false11, %lor.lhs.false7, %lor.lhs.false, %land.lhs.true
  %7 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %_hidden, align 8, !tbaa !18
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %7) #9
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %_hidden, align 8, !tbaa !18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then27, %lor.lhs.false23.if.end30_crit_edge, %entry
  %retval.0 = phi %struct.evp_cipher_st* [ null, %entry ], [ %.pre, %lor.lhs.false23.if.end30_crit_edge ], [ null, %if.then27 ], [ %0, %if.end ]
  ret %struct.evp_cipher_st* %retval.0
}

declare i32 @ENGINE_set_ciphers(%struct.engine_st* noundef, i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @afalg_ciphers(%struct.engine_st* nocapture noundef readnone %e, %struct.evp_cipher_st** noundef writeonly %cipher, i32** nocapture noundef writeonly %nids, i32 noundef %nid) #1 {
entry:
  %cmp = icmp eq %struct.evp_cipher_st** %cipher, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @afalg_cipher_nids, i64 0, i64 0), i32** %nids, align 8, !tbaa !17
  br label %cleanup

if.end:                                           ; preds = %entry
  switch i32 %nid, label %sw.epilog [
    i32 419, label %sw.bb
    i32 423, label %sw.bb
    i32 427, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  %call = tail call fastcc %struct.evp_cipher_st* @afalg_aes_cbc(i32 noundef %nid) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb
  %storemerge = phi %struct.evp_cipher_st* [ %call, %sw.bb ], [ null, %if.end ]
  %r.0 = phi i32 [ 1, %sw.bb ], [ 0, %if.end ]
  store %struct.evp_cipher_st* %storemerge, %struct.evp_cipher_st** %cipher, align 8, !tbaa !17
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %retval.0 = phi i32 [ 3, %if.then ], [ %r.0, %sw.epilog ]
  ret i32 %retval.0
}

declare i32 @ERR_load_strings(i32 noundef, %struct.ERR_string_data_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ERR_unload_AFALG_strings() unnamed_addr #1 {
entry:
  %.b = load i1, i1* @error_loaded, align 4
  br i1 %.b, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @lib_code, align 4, !tbaa !13
  %call = tail call i32 @ERR_unload_strings(i32 noundef %0, %struct.ERR_string_data_st* noundef getelementptr inbounds ([13 x %struct.ERR_string_data_st], [13 x %struct.ERR_string_data_st]* @AFALG_str_reasons, i64 0, i64 0)) #9
  store i1 false, i1* @error_loaded, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @free_cbc() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** getelementptr inbounds ([3 x %struct.cbc_cipher_handles], [3 x %struct.cbc_cipher_handles]* @cbc_handle, i64 0, i64 0, i32 1), align 8, !tbaa !18
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %0) #9
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** getelementptr inbounds ([3 x %struct.cbc_cipher_handles], [3 x %struct.cbc_cipher_handles]* @cbc_handle, i64 0, i64 0, i32 1), align 8, !tbaa !18
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** getelementptr inbounds ([3 x %struct.cbc_cipher_handles], [3 x %struct.cbc_cipher_handles]* @cbc_handle, i64 0, i64 1, i32 1), align 8, !tbaa !18
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %1) #9
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** getelementptr inbounds ([3 x %struct.cbc_cipher_handles], [3 x %struct.cbc_cipher_handles]* @cbc_handle, i64 0, i64 1, i32 1), align 8, !tbaa !18
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** getelementptr inbounds ([3 x %struct.cbc_cipher_handles], [3 x %struct.cbc_cipher_handles]* @cbc_handle, i64 0, i64 2, i32 1), align 8, !tbaa !18
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %2) #9
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** getelementptr inbounds ([3 x %struct.cbc_cipher_handles], [3 x %struct.cbc_cipher_handles]* @cbc_handle, i64 0, i64 2, i32 1), align 8, !tbaa !18
  ret void
}

declare i32 @ERR_unload_strings(i32 noundef, %struct.ERR_string_data_st* noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.cbc_cipher_handles* @get_cipher_handle(i32 noundef %nid) unnamed_addr #0 {
entry:
  switch i32 %nid, label %sw.default [
    i32 419, label %return
    i32 423, label %sw.bb1
    i32 427, label %sw.bb2
  ]

sw.bb1:                                           ; preds = %entry
  br label %return

sw.bb2:                                           ; preds = %entry
  br label %return

sw.default:                                       ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %sw.default, %sw.bb2, %sw.bb1
  %retval.0 = phi %struct.cbc_cipher_handles* [ null, %sw.default ], [ getelementptr inbounds ([3 x %struct.cbc_cipher_handles], [3 x %struct.cbc_cipher_handles]* @cbc_handle, i64 0, i64 2), %sw.bb2 ], [ getelementptr inbounds ([3 x %struct.cbc_cipher_handles], [3 x %struct.cbc_cipher_handles]* @cbc_handle, i64 0, i64 1), %sw.bb1 ], [ getelementptr inbounds ([3 x %struct.cbc_cipher_handles], [3 x %struct.cbc_cipher_handles]* @cbc_handle, i64 0, i64 0), %entry ]
  ret %struct.cbc_cipher_handles* %retval.0
}

declare %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @afalg_cipher_init(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* nocapture noundef readnone %iv, i32 noundef %enc) #1 {
entry:
  %cmp = icmp eq %struct.evp_cipher_ctx_st* %ctx, null
  %cmp1 = icmp eq i8* %key, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #9
  %cmp2 = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #9
  %0 = bitcast i8* %call5 to %struct.afalg_ctx_st*
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @EVP_CIPHER_CTX_get_nid(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #9
  switch i32 %call9, label %cleanup [
    i32 419, label %sw.bb
    i32 423, label %sw.bb
    i32 427, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end8, %if.end8, %if.end8
  %call10 = tail call i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #9
  %cmp11.not = icmp eq i32 %call10, 16
  br i1 %cmp11.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %sw.bb
  %call14 = tail call fastcc i32 @afalg_create_sk(%struct.afalg_ctx_st* noundef nonnull %0) #10
  %cmp15 = icmp slt i32 %call14, 1
  br i1 %cmp15, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.end13
  %call18 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #9
  %cmp19 = icmp slt i32 %call18, 1
  br i1 %cmp19, label %err, label %if.end21

if.end21:                                         ; preds = %if.end17
  %call22 = tail call fastcc i32 @afalg_set_key(%struct.afalg_ctx_st* noundef nonnull %0, i8* noundef nonnull %key, i32 noundef %call18) #10
  %cmp23 = icmp slt i32 %call22, 1
  br i1 %cmp23, label %err, label %if.end25

if.end25:                                         ; preds = %if.end21
  %aio = getelementptr inbounds i8, i8* %call5, i64 16
  %1 = bitcast i8* %aio to %struct.afalg_aio_st*
  %call26 = tail call fastcc i32 @afalg_init_aio(%struct.afalg_aio_st* noundef nonnull %1) #10
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %err, label %if.end29

if.end29:                                         ; preds = %if.end25
  %init_done = bitcast i8* %call5 to i32*
  store i32 25757297, i32* %init_done, align 8, !tbaa !21
  br label %cleanup

err:                                              ; preds = %if.end25, %if.end21, %if.end17
  %sfd = getelementptr inbounds i8, i8* %call5, i64 4
  %2 = bitcast i8* %sfd to i32*
  %3 = load i32, i32* %2, align 4, !tbaa !25
  %call30 = tail call i32 @close(i32 noundef %3) #9
  %bfd = getelementptr inbounds i8, i8* %call5, i64 8
  %4 = bitcast i8* %bfd to i32*
  %5 = load i32, i32* %4, align 8, !tbaa !26
  %call31 = tail call i32 @close(i32 noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %sw.bb, %if.end8, %if.end4, %if.end, %entry, %err, %if.end29
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end29 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end4 ], [ 0, %if.end8 ], [ 0, %sw.bb ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

declare i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @afalg_do_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %nxtiv = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %nxtiv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %cmp = icmp eq %struct.evp_cipher_ctx_st* %ctx, null
  %cmp1 = icmp eq i8* %out, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i8* %in, null
  %or.cond36 = or i1 %or.cond, %cmp3
  br i1 %or.cond36, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #9
  %1 = bitcast i8* %call to %struct.afalg_ctx_st*
  %cmp4 = icmp eq i8* %call, null
  br i1 %cmp4, label %cleanup, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %init_done = bitcast i8* %call to i32*
  %2 = load i32, i32* %init_done, align 8, !tbaa !21
  %cmp6.not = icmp eq i32 %2, 25757297
  br i1 %cmp6.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %lor.lhs.false5
  %call9 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #9
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  %sub = add i64 %inl, -16
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %sub
  %call12 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %add.ptr, i64 noundef 16) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8
  %call14 = call i8* @EVP_CIPHER_CTX_iv(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #9
  %call15 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #9
  %call16 = call fastcc i32 @afalg_start_cipher_sk(%struct.afalg_ctx_st* noundef nonnull %1, i8* noundef nonnull %in, i64 noundef %inl, i8* noundef %call14, i32 noundef %call15) #10
  %cmp17 = icmp slt i32 %call16, 1
  br i1 %cmp17, label %cleanup, label %if.end19

if.end19:                                         ; preds = %if.end13
  %aio = getelementptr inbounds i8, i8* %call, i64 16
  %3 = bitcast i8* %aio to %struct.afalg_aio_st*
  %sfd = getelementptr inbounds i8, i8* %call, i64 4
  %4 = bitcast i8* %sfd to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !25
  %call20 = call fastcc i32 @afalg_fin_cipher_aio(%struct.afalg_aio_st* noundef nonnull %3, i32 noundef %5, i8* noundef nonnull %out, i64 noundef %inl) #10
  %cmp21 = icmp slt i32 %call20, 1
  br i1 %cmp21, label %cleanup, label %if.end23

if.end23:                                         ; preds = %if.end19
  %call24 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #9
  %tobool.not = icmp eq i32 %call24, 0
  %call30 = call i8* @EVP_CIPHER_CTX_iv_noconst(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #9
  br i1 %tobool.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end23
  %sub27 = add i64 %inl, -16
  %add.ptr28 = getelementptr inbounds i8, i8* %out, i64 %sub27
  %call29 = call i8* @memcpy(i8* noundef %call30, i8* noundef %add.ptr28, i64 noundef 16) #9
  br label %cleanup

if.else:                                          ; preds = %if.end23
  %call32 = call i8* @memcpy(i8* noundef %call30, i8* noundef nonnull %0, i64 noundef 16) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.else, %if.end19, %if.end13, %if.end, %lor.lhs.false5, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %lor.lhs.false5 ], [ 0, %if.end ], [ 0, %if.end13 ], [ 0, %if.end19 ], [ 1, %if.else ], [ 1, %if.then25 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i32 %retval.0
}

declare i32 @EVP_CIPHER_meth_set_cleanup(%struct.evp_cipher_st* noundef, i32 (%struct.evp_cipher_ctx_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @afalg_cipher_cleanup(%struct.evp_cipher_ctx_st* noundef %ctx) #1 {
entry:
  %cmp = icmp eq %struct.evp_cipher_ctx_st* %ctx, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef nonnull %ctx) #9
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %init_done = bitcast i8* %call to i32*
  %0 = load i32, i32* %init_done, align 8, !tbaa !21
  %cmp2.not = icmp eq i32 %0, 25757297
  br i1 %cmp2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %sfd = getelementptr inbounds i8, i8* %call, i64 4
  %1 = bitcast i8* %sfd to i32*
  %2 = load i32, i32* %1, align 4, !tbaa !25
  %call5 = tail call i32 @close(i32 noundef %2) #9
  %bfd = getelementptr inbounds i8, i8* %call, i64 8
  %3 = bitcast i8* %bfd to i32*
  %4 = load i32, i32* %3, align 8, !tbaa !26
  %call6 = tail call i32 @close(i32 noundef %4) #9
  %mode = getelementptr inbounds i8, i8* %call, i64 20
  %5 = bitcast i8* %mode to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !27
  %cmp7 = icmp eq i32 %6, 1
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end4
  %aio = getelementptr inbounds i8, i8* %call, i64 16
  %efd = bitcast i8* %aio to i32*
  %7 = load i32, i32* %efd, align 8, !tbaa !28
  %call10 = tail call i32 @close(i32 noundef %7) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end4
  %aio_ctx = getelementptr inbounds i8, i8* %call, i64 24
  %8 = bitcast i8* %aio_ctx to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !29
  tail call fastcc void @io_destroy(i64 noundef %9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %entry, %if.end11
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_nid(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @afalg_create_sk(%struct.afalg_ctx_st* nocapture noundef %actx) unnamed_addr #1 {
entry:
  %sa = alloca %struct.sockaddr_alg, align 4
  %0 = bitcast %struct.sockaddr_alg* %sa to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %0) #12
  %sfd = getelementptr inbounds %struct.afalg_ctx_st, %struct.afalg_ctx_st* %actx, i64 0, i32 1
  store i32 -1, i32* %sfd, align 4, !tbaa !25
  %bfd = getelementptr inbounds %struct.afalg_ctx_st, %struct.afalg_ctx_st* %actx, i64 0, i32 2
  store i32 -1, i32* %bfd, align 8, !tbaa !26
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 88) #9
  %salg_family = getelementptr inbounds %struct.sockaddr_alg, %struct.sockaddr_alg* %sa, i64 0, i32 0
  store i16 38, i16* %salg_family, align 4, !tbaa !30
  %arraydecay = getelementptr inbounds %struct.sockaddr_alg, %struct.sockaddr_alg* %sa, i64 0, i32 1, i64 0
  %call1 = call i64 @OPENSSL_strlcpy(i8* noundef nonnull %arraydecay, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i64 noundef 14) #9
  %arraydecay2 = getelementptr inbounds %struct.sockaddr_alg, %struct.sockaddr_alg* %sa, i64 0, i32 4, i64 0
  %call3 = call i64 @OPENSSL_strlcpy(i8* noundef nonnull %arraydecay2, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i64 noundef 64) #9
  %call4 = call i32 @socket(i32 noundef 38, i32 noundef 5, i32 noundef 0) #9
  store i32 %call4, i32* %bfd, align 8, !tbaa !26
  %cmp = icmp eq i32 %call4, -1
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 433) #9
  call void @perror(i8* noundef null) #9
  call fastcc void @ERR_AFALG_error(i32 noundef 109, i32 noundef 434) #10
  br label %err

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.sockaddr_alg* %sa to %struct.sockaddr*
  %call9 = call i32 @bind(i32 noundef %call4, %struct.sockaddr* nonnull %2, i32 noundef 88) #9
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.body12, label %if.end16

do.body12:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 440) #9
  call void @perror(i8* noundef null) #9
  call fastcc void @ERR_AFALG_error(i32 noundef 103, i32 noundef 441) #10
  br label %err

if.end16:                                         ; preds = %if.end
  %4 = load i32, i32* %bfd, align 8, !tbaa !26
  %call21 = call i32 @accept(i32 noundef %4, %struct.sockaddr* null, i32* noundef null) #9
  store i32 %call21, i32* %sfd, align 4, !tbaa !25
  %cmp24 = icmp slt i32 %call21, 0
  br i1 %cmp24, label %do.body26, label %cleanup

do.body26:                                        ; preds = %if.end16
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 447) #9
  call void @perror(i8* noundef null) #9
  call fastcc void @ERR_AFALG_error(i32 noundef 110, i32 noundef 448) #10
  br label %err

err:                                              ; preds = %do.body26, %do.body12, %do.body
  %6 = load i32, i32* %bfd, align 8, !tbaa !26
  %cmp32 = icmp sgt i32 %6, -1
  br i1 %cmp32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %err
  %call35 = call i32 @close(i32 noundef %6) #9
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %err
  %7 = load i32, i32* %sfd, align 4, !tbaa !25
  %cmp38 = icmp sgt i32 %7, -1
  br i1 %cmp38, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end36
  %call41 = call i32 @close(i32 noundef %7) #9
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end36
  store i32 -1, i32* %sfd, align 4, !tbaa !25
  store i32 -1, i32* %bfd, align 8, !tbaa !26
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end42
  %retval.0 = phi i32 [ 0, %if.end42 ], [ 1, %if.end16 ]
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %0) #12
  ret i32 %retval.0
}

declare i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @afalg_set_key(%struct.afalg_ctx_st* nocapture noundef readonly %actx, i8* noundef %key, i32 noundef %klen) unnamed_addr #1 {
entry:
  %bfd = getelementptr inbounds %struct.afalg_ctx_st, %struct.afalg_ctx_st* %actx, i64 0, i32 2
  %0 = load i32, i32* %bfd, align 8, !tbaa !26
  %call = tail call i32 @setsockopt(i32 noundef %0, i32 noundef 279, i32 noundef 1, i8* noundef %key, i32 noundef %klen) #9
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %cleanup

do.body:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 411) #9
  tail call void @perror(i8* noundef null) #9
  tail call fastcc void @ERR_AFALG_error(i32 noundef 106, i32 noundef 412) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body
  %retval.0 = phi i32 [ 0, %do.body ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @afalg_init_aio(%struct.afalg_aio_st* noundef %aio) unnamed_addr #1 {
entry:
  %aio_ctx = getelementptr inbounds %struct.afalg_aio_st, %struct.afalg_aio_st* %aio, i64 0, i32 2
  store i64 0, i64* %aio_ctx, align 8, !tbaa !33
  %call = tail call fastcc i32 @io_setup(i64* noundef nonnull %aio_ctx) #10
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 252) #9
  tail call void @perror(i8* noundef null) #9
  tail call fastcc void @ERR_AFALG_error(i32 noundef 105, i32 noundef 253) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.afalg_aio_st, %struct.afalg_aio_st* %aio, i64 0, i32 4, i64 0
  %1 = bitcast %struct.iocb* %arraydecay to i8*
  %call3 = tail call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 64) #9
  %efd = getelementptr inbounds %struct.afalg_aio_st, %struct.afalg_aio_st* %aio, i64 0, i32 0
  store i32 -1, i32* %efd, align 8, !tbaa !34
  %mode = getelementptr inbounds %struct.afalg_aio_st, %struct.afalg_aio_st* %aio, i64 0, i32 1
  store i32 0, i32* %mode, align 4, !tbaa !35
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body
  %retval.0 = phi i32 [ 0, %do.body ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare i64 @OPENSSL_strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @perror(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, %struct.sockaddr*, i32 noundef) local_unnamed_addr #5

declare i32 @accept(i32 noundef, %struct.sockaddr*, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @io_setup(i64* noundef %ctx) unnamed_addr #1 {
entry:
  %call = tail call i64 (i64, ...) @syscall(i64 noundef 206, i32 noundef 1, i64* noundef %ctx) #9
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

declare i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @afalg_start_cipher_sk(%struct.afalg_ctx_st* nocapture noundef readonly %actx, i8* noundef %in, i64 noundef %inl, i8* noundef %iv, i32 noundef %enc) unnamed_addr #1 {
entry:
  %msg = alloca %struct.msghdr, align 8
  %iov = alloca %struct.iovec, align 8
  %cbuf = alloca [64 x i8], align 16
  %0 = bitcast %struct.msghdr* %msg to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #12
  %1 = bitcast %struct.iovec* %iov to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %cbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #12
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 56) #9
  %call1 = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 64) #9
  %msg_control = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i64 0, i32 4
  store i8* %2, i8** %msg_control, align 8, !tbaa !36
  %msg_controllen = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i64 0, i32 5
  store i64 64, i64* %msg_controllen, align 8, !tbaa !38
  %.cast = bitcast [64 x i8]* %cbuf to %struct.cmsghdr*
  call fastcc void @afalg_set_op_sk(%struct.cmsghdr* noundef nonnull %.cast, i32 noundef %enc) #10
  %call5 = call %struct.cmsghdr* @__cmsg_nxthdr(%struct.msghdr* noundef nonnull %msg, %struct.cmsghdr* noundef nonnull %.cast) #9
  call fastcc void @afalg_set_iv_sk(%struct.cmsghdr* noundef %call5, i8* noundef %iv) #10
  %iov_base = getelementptr inbounds %struct.iovec, %struct.iovec* %iov, i64 0, i32 0
  store i8* %in, i8** %iov_base, align 8, !tbaa !39
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %iov, i64 0, i32 1
  store i64 %inl, i64* %iov_len, align 8, !tbaa !41
  %msg_flags = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i64 0, i32 6
  store i32 32768, i32* %msg_flags, align 8, !tbaa !42
  %msg_iovlen = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i64 0, i32 3
  store i64 1, i64* %msg_iovlen, align 8, !tbaa !43
  %msg_iov = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i64 0, i32 2
  store %struct.iovec* %iov, %struct.iovec** %msg_iov, align 8, !tbaa !44
  %sfd = getelementptr inbounds %struct.afalg_ctx_st, %struct.afalg_ctx_st* %actx, i64 0, i32 1
  %3 = load i32, i32* %sfd, align 4, !tbaa !25
  %call6 = call i64 @sendmsg(i32 noundef %3, %struct.msghdr* noundef nonnull %msg, i32 noundef 0) #9
  %cmp7 = icmp slt i64 %call6, 0
  br i1 %cmp7, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 538) #9
  call void @perror(i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp9.not = icmp eq i64 %call6, %inl
  %. = zext i1 %cmp9.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body
  %retval.0 = phi i32 [ 0, %do.body ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #12
  ret i32 %retval.0
}

declare i8* @EVP_CIPHER_CTX_iv(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @afalg_fin_cipher_aio(%struct.afalg_aio_st* noundef %aio, i32 noundef %sfd, i8* noundef %buf, i64 noundef %len) unnamed_addr #1 {
entry:
  %cb = alloca %struct.iocb*, align 8
  %timeout = alloca <2 x i64>, align 16
  %tmpcast = bitcast <2 x i64>* %timeout to %struct.timespec*
  %events = alloca [1 x %struct.io_event], align 16
  %eval = alloca i64, align 8
  %0 = bitcast %struct.iocb** %cb to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  %1 = bitcast <2 x i64>* %timeout to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %2 = bitcast [1 x %struct.io_event]* %events to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #12
  %3 = bitcast i64* %eval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #12
  store i64 0, i64* %eval, align 8, !tbaa !45
  store <2 x i64> zeroinitializer, <2 x i64>* %timeout, align 16, !tbaa !45
  %mode = getelementptr inbounds %struct.afalg_aio_st, %struct.afalg_aio_st* %aio, i64 0, i32 1
  %4 = load i32, i32* %mode, align 4, !tbaa !35
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @afalg_setup_async_event_notification(%struct.afalg_aio_st* noundef nonnull %aio) #10
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %arrayidx = getelementptr inbounds %struct.afalg_aio_st, %struct.afalg_aio_st* %aio, i64 0, i32 4, i64 0
  store %struct.iocb* %arrayidx, %struct.iocb** %cb, align 8, !tbaa !17
  %5 = bitcast %struct.iocb* %arrayidx to i8*
  %call4 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i64 noundef 64) #9
  %aio_fildes = getelementptr inbounds %struct.afalg_aio_st, %struct.afalg_aio_st* %aio, i64 0, i32 4, i64 0, i32 5
  store i32 %sfd, i32* %aio_fildes, align 4, !tbaa !46
  %aio_lio_opcode = getelementptr inbounds %struct.afalg_aio_st, %struct.afalg_aio_st* %aio, i64 0, i32 4, i64 0, i32 3
  store i16 0, i16* %aio_lio_opcode, align 8, !tbaa !49
  %6 = ptrtoint i8* %buf to i64
  %aio_buf = getelementptr inbounds %struct.afalg_aio_st, %struct.afalg_aio_st* %aio, i64 0, i32 4, i64 0, i32 6
  store i64 %6, i64* %aio_buf, align 8, !tbaa !50
  %aio_offset = getelementptr inbounds %struct.afalg_aio_st, %struct.afalg_aio_st* %aio, i64 0, i32 4, i64 0, i32 8
  store i64 0, i64* %aio_offset, align 8, !tbaa !51
  %aio_data = getelementptr inbounds %struct.iocb, %struct.iocb* %arrayidx, i64 0, i32 0
  store i64 0, i64* %aio_data, align 8, !tbaa !52
  %aio_nbytes = getelementptr inbounds %struct.afalg_aio_st, %struct.afalg_aio_st* %aio, i64 0, i32 4, i64 0, i32 7
  store i64 %len, i64* %aio_nbytes, align 8, !tbaa !53
  %aio_flags = getelementptr inbounds %struct.afalg_aio_st, %struct.afalg_aio_st* %aio, i64 0, i32 4, i64 0, i32 10
  store i32 1, i32* %aio_flags, align 8, !tbaa !54
  %efd = getelementptr inbounds %struct.afalg_aio_st, %struct.afalg_aio_st* %aio, i64 0, i32 0
  %7 = load i32, i32* %efd, align 8, !tbaa !34
  %aio_resfd = getelementptr inbounds %struct.afalg_aio_st, %struct.afalg_aio_st* %aio, i64 0, i32 4, i64 0, i32 11
  store i32 %7, i32* %aio_resfd, align 4, !tbaa !55
  %aio_ctx = getelementptr inbounds %struct.afalg_aio_st, %struct.afalg_aio_st* %aio, i64 0, i32 2
  %8 = load i64, i64* %aio_ctx, align 8, !tbaa !33
  %call5 = call fastcc i32 @io_read(i64 noundef %8, %struct.iocb** noundef nonnull %cb) #10
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.body, label %do.body10.preheader

do.body10.preheader:                              ; preds = %if.end3
  %arraydecay = getelementptr inbounds [1 x %struct.io_event], [1 x %struct.io_event]* %events, i64 0, i64 0
  %res = getelementptr inbounds [1 x %struct.io_event], [1 x %struct.io_event]* %events, i64 0, i64 0, i32 2
  br label %do.body10.outer

do.body10.outer:                                  ; preds = %if.then55, %do.body10.preheader
  %retry.0.ph = phi i32 [ %inc, %if.then55 ], [ 0, %do.body10.preheader ]
  br label %do.body10

do.body:                                          ; preds = %if.end3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 306) #9
  br label %cleanup.sink.split

do.body10:                                        ; preds = %do.body10.backedge, %do.body10.outer
  %call11 = call i32 @ASYNC_pause_job() #9
  %10 = load i32, i32* %efd, align 8, !tbaa !34
  %call13 = call i64 @read(i32 noundef %10, i8* noundef nonnull %3, i64 noundef 8) #9
  %11 = and i64 %call13, 2147483648
  %cmp14.not = icmp eq i64 %11, 0
  br i1 %cmp14.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %do.body10
  %call17 = tail call i32* @__errno_location() #13
  %12 = load i32, i32* %call17, align 4, !tbaa !13
  %cmp18 = icmp eq i32 %12, 11
  br i1 %cmp18, label %do.body10.backedge, label %do.body25

do.body25:                                        ; preds = %if.then16
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 319) #9
  br label %cleanup.sink.split

if.else:                                          ; preds = %do.body10
  %14 = load i64, i64* %eval, align 8
  %cmp37.not = icmp eq i64 %14, 0
  br i1 %cmp37.not, label %do.body10.backedge, label %if.then39

do.body10.backedge:                               ; preds = %if.else, %if.else68, %if.then16
  br label %do.body10

if.then39:                                        ; preds = %if.else
  %15 = load i64, i64* %aio_ctx, align 8, !tbaa !33
  %call41 = call fastcc i32 @io_getevents(i64 noundef %15, %struct.io_event* noundef nonnull %arraydecay, %struct.timespec* noundef nonnull %tmpcast) #10
  %cmp42 = icmp sgt i32 %call41, 0
  br i1 %cmp42, label %if.then44, label %if.else68

if.then44:                                        ; preds = %if.then39
  %16 = load i64, i64* %res, align 16, !tbaa !56
  %cmp46 = icmp slt i64 %16, 0
  br i1 %cmp46, label %if.then48, label %cleanup

if.then48:                                        ; preds = %if.then44
  %cmp51 = icmp eq i64 %16, -16
  br i1 %cmp51, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %if.then48
  %inc = add nuw nsw i32 %retry.0.ph, 1
  %cmp53 = icmp ult i32 %retry.0.ph, 3
  br i1 %cmp53, label %if.then55, label %cleanup

if.then55:                                        ; preds = %land.lhs.true
  %17 = load i64, i64* %aio_ctx, align 8, !tbaa !33
  %call57 = call fastcc i32 @io_read(i64 noundef %17, %struct.iocb** noundef nonnull %cb) #10
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %do.body61, label %do.body10.outer

do.body61:                                        ; preds = %if.then55
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 353, i32 noundef %inc) #9
  br label %cleanup.sink.split

if.else68:                                        ; preds = %if.then39
  %cmp69 = icmp slt i32 %call41, 0
  br i1 %cmp69, label %do.body72, label %do.body10.backedge

do.body72:                                        ; preds = %if.else68
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 371) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body, %do.body25, %do.body61, %do.body72
  call void @perror(i8* noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.then48, %land.lhs.true, %cleanup.sink.split, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %cleanup.sink.split ], [ 1, %if.then44 ], [ 0, %if.then48 ], [ 0, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

declare i8* @EVP_CIPHER_CTX_iv_noconst(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @afalg_set_op_sk(%struct.cmsghdr* noundef %cmsg, i32 noundef %op) unnamed_addr #1 {
entry:
  %op.addr = alloca i32, align 4
  store i32 %op, i32* %op.addr, align 4, !tbaa !13
  %cmsg_level = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %cmsg, i64 0, i32 1
  store i32 279, i32* %cmsg_level, align 8, !tbaa !13
  %cmsg_type = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %cmsg, i64 0, i32 2
  store i32 3, i32* %cmsg_type, align 4, !tbaa !13
  %cmsg_len = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %cmsg, i64 0, i32 0
  store i64 20, i64* %cmsg_len, align 8, !tbaa !45
  %arraydecay = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %cmsg, i64 0, i32 3, i64 0
  %0 = bitcast i32* %op.addr to i8*
  %call = call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef nonnull %0, i64 noundef 4) #9
  ret void
}

; Function Attrs: noinline nounwind uwtable
declare %struct.cmsghdr* @__cmsg_nxthdr(%struct.msghdr* noundef, %struct.cmsghdr* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @afalg_set_iv_sk(%struct.cmsghdr* noundef %cmsg, i8* noundef %iv) unnamed_addr #1 {
entry:
  %cmsg_level = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %cmsg, i64 0, i32 1
  store i32 279, i32* %cmsg_level, align 8, !tbaa !13
  %cmsg_type = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %cmsg, i64 0, i32 2
  store i32 2, i32* %cmsg_type, align 4, !tbaa !13
  %cmsg_len = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %cmsg, i64 0, i32 0
  store i64 36, i64* %cmsg_len, align 8, !tbaa !45
  %arraydecay = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %cmsg, i64 0, i32 3, i64 0
  %ivlen = bitcast i8* %arraydecay to i32*
  store i32 16, i32* %ivlen, align 4, !tbaa !58
  %iv2 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %cmsg, i64 0, i32 3, i64 4
  %call = tail call i8* @memcpy(i8* noundef nonnull %iv2, i8* noundef %iv, i64 noundef 16) #9
  ret void
}

declare i64 @sendmsg(i32 noundef, %struct.msghdr* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @afalg_setup_async_event_notification(%struct.afalg_aio_st* noundef %aio) unnamed_addr #1 {
entry:
  %custom = alloca i8*, align 8
  %0 = bitcast i8** %custom to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i8* null, i8** %custom, align 8, !tbaa !17
  %call = tail call %struct.async_job_st* @ASYNC_get_current_job() #9
  %cmp.not = icmp eq %struct.async_job_st* %call, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.async_wait_ctx_st* @ASYNC_get_wait_ctx(%struct.async_job_st* noundef nonnull %call) #9
  %cmp2 = icmp eq %struct.async_wait_ctx_st* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %efd = getelementptr inbounds %struct.afalg_aio_st, %struct.afalg_aio_st* %aio, i64 0, i32 0
  %call4 = call i32 @ASYNC_WAIT_CTX_get_fd(%struct.async_wait_ctx_st* noundef nonnull %call1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* noundef %efd, i8** noundef nonnull %custom) #9
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end26

if.then6:                                         ; preds = %if.end
  %call7 = call fastcc i32 @eventfd() #10
  store i32 %call7, i32* %efd, align 8, !tbaa !34
  %cmp10 = icmp eq i32 %call7, -1
  br i1 %cmp10, label %do.body, label %if.end13

do.body:                                          ; preds = %if.then6
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 210) #9
  call void @perror(i8* noundef null) #9
  call fastcc void @ERR_AFALG_error(i32 noundef 108, i32 noundef 212) #10
  br label %cleanup

if.end13:                                         ; preds = %if.then6
  %2 = load i8*, i8** %custom, align 8, !tbaa !17
  %call15 = call i32 @ASYNC_WAIT_CTX_set_wait_fd(%struct.async_wait_ctx_st* noundef nonnull %call1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef %call7, i8* noundef %2, void (%struct.async_wait_ctx_st*, i8*, i32, i8*)* noundef nonnull @afalg_waitfd_cleanup) #9
  %cmp16 = icmp eq i32 %call15, 0
  %3 = load i32, i32* %efd, align 8, !tbaa !34
  br i1 %cmp16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end13
  %call19 = call i32 @close(i32 noundef %3) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %call22 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 4, i32 noundef 2048) #9
  br label %if.end26

if.end26:                                         ; preds = %if.end20, %if.end
  %mode = getelementptr inbounds %struct.afalg_aio_st, %struct.afalg_aio_st* %aio, i64 0, i32 1
  store i32 2, i32* %mode, align 4, !tbaa !35
  br label %cleanup

if.else:                                          ; preds = %entry
  %call27 = tail call fastcc i32 @eventfd() #10
  %efd28 = getelementptr inbounds %struct.afalg_aio_st, %struct.afalg_aio_st* %aio, i64 0, i32 0
  store i32 %call27, i32* %efd28, align 8, !tbaa !34
  %cmp30 = icmp eq i32 %call27, -1
  br i1 %cmp30, label %do.body32, label %if.end36

do.body32:                                        ; preds = %if.else
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 234) #9
  tail call void @perror(i8* noundef null) #9
  tail call fastcc void @ERR_AFALG_error(i32 noundef 108, i32 noundef 236) #10
  br label %cleanup

if.end36:                                         ; preds = %if.else
  %mode37 = getelementptr inbounds %struct.afalg_aio_st, %struct.afalg_aio_st* %aio, i64 0, i32 1
  store i32 1, i32* %mode37, align 4, !tbaa !35
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end36, %if.then, %do.body32, %if.then17, %do.body
  %retval.0 = phi i32 [ 0, %do.body ], [ 0, %if.then17 ], [ 0, %do.body32 ], [ 0, %if.then ], [ 1, %if.end36 ], [ 1, %if.end26 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @io_read(i64 noundef %ctx, %struct.iocb** noundef %iocb) unnamed_addr #1 {
entry:
  %call = tail call i64 (i64, ...) @syscall(i64 noundef 209, i64 noundef %ctx, i64 noundef 1, %struct.iocb** noundef %iocb) #9
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

declare i32 @ASYNC_pause_job() local_unnamed_addr #2

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @io_getevents(i64 noundef %ctx, %struct.io_event* noundef %events, %struct.timespec* noundef %timeout) unnamed_addr #1 {
entry:
  %call = tail call i64 (i64, ...) @syscall(i64 noundef 208, i64 noundef %ctx, i64 noundef 1, i64 noundef 1, %struct.io_event* noundef %events, %struct.timespec* noundef %timeout) #9
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

declare %struct.async_job_st* @ASYNC_get_current_job() local_unnamed_addr #2

declare %struct.async_wait_ctx_st* @ASYNC_get_wait_ctx(%struct.async_job_st* noundef) local_unnamed_addr #2

declare i32 @ASYNC_WAIT_CTX_get_fd(%struct.async_wait_ctx_st* noundef, i8* noundef, i32* noundef, i8** noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @eventfd() unnamed_addr #1 {
entry:
  %call = tail call i64 (i64, ...) @syscall(i64 noundef 290, i32 noundef 0, i32 noundef 0) #9
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

declare i32 @ASYNC_WAIT_CTX_set_wait_fd(%struct.async_wait_ctx_st* noundef, i8* noundef, i32 noundef, i8* noundef, void (%struct.async_wait_ctx_st*, i8*, i32, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @afalg_waitfd_cleanup(%struct.async_wait_ctx_st* nocapture noundef readnone %ctx, i8* nocapture noundef readnone %key, i32 noundef %waitfd, i8* nocapture noundef readnone %custom) #1 {
entry:
  %call = tail call i32 @close(i32 noundef %waitfd) #9
  ret void
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @io_destroy(i64 noundef %ctx) unnamed_addr #1 {
entry:
  %call = tail call i64 (i64, ...) @syscall(i64 noundef 207, i64 noundef %ctx) #9
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"st_dynamic_fns", !6, i64 0, !9, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"st_dynamic_MEM_fns", !6, i64 0, !6, i64 8, !6, i64 16}
!10 = !{!5, !6, i64 8}
!11 = !{!5, !6, i64 16}
!12 = !{!5, !6, i64 24}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!6, !6, i64 0}
!18 = !{!19, !6, i64 8}
!19 = !{!"cbc_cipher_handles", !14, i64 0, !6, i64 8}
!20 = !{!19, !14, i64 0}
!21 = !{!22, !14, i64 0}
!22 = !{!"afalg_ctx_st", !14, i64 0, !14, i64 4, !14, i64 8, !23, i64 16}
!23 = !{!"afalg_aio_st", !14, i64 0, !7, i64 4, !24, i64 8, !7, i64 16, !7, i64 48}
!24 = !{!"long", !7, i64 0}
!25 = !{!22, !14, i64 4}
!26 = !{!22, !14, i64 8}
!27 = !{!22, !7, i64 20}
!28 = !{!22, !14, i64 16}
!29 = !{!22, !24, i64 24}
!30 = !{!31, !32, i64 0}
!31 = !{!"sockaddr_alg", !32, i64 0, !7, i64 2, !14, i64 16, !14, i64 20, !7, i64 24}
!32 = !{!"short", !7, i64 0}
!33 = !{!23, !24, i64 8}
!34 = !{!23, !14, i64 0}
!35 = !{!23, !7, i64 4}
!36 = !{!37, !6, i64 32}
!37 = !{!"msghdr", !6, i64 0, !14, i64 8, !6, i64 16, !24, i64 24, !6, i64 32, !24, i64 40, !14, i64 48}
!38 = !{!37, !24, i64 40}
!39 = !{!40, !6, i64 0}
!40 = !{!"iovec", !6, i64 0, !24, i64 8}
!41 = !{!40, !24, i64 8}
!42 = !{!37, !14, i64 48}
!43 = !{!37, !24, i64 24}
!44 = !{!37, !6, i64 16}
!45 = !{!24, !24, i64 0}
!46 = !{!47, !14, i64 20}
!47 = !{!"iocb", !48, i64 0, !14, i64 8, !14, i64 12, !32, i64 16, !32, i64 18, !14, i64 20, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !14, i64 56, !14, i64 60}
!48 = !{!"long long", !7, i64 0}
!49 = !{!47, !32, i64 16}
!50 = !{!47, !48, i64 24}
!51 = !{!47, !48, i64 40}
!52 = !{!47, !48, i64 0}
!53 = !{!47, !48, i64 32}
!54 = !{!47, !14, i64 56}
!55 = !{!47, !14, i64 60}
!56 = !{!57, !48, i64 16}
!57 = !{!"io_event", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24}
!58 = !{!59, !14, i64 0}
!59 = !{!"af_alg_iv", !14, i64 0, !7, i64 4}
