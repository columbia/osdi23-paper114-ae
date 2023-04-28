; ModuleID = 'crypto/bio/bss_core.c'
source_filename = "crypto/bio/bss_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.bio_st = type { %struct.ossl_lib_ctx_st*, %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.ossl_lib_ctx_method = type { i32, i8* (%struct.ossl_lib_ctx_st*)*, void (i8*)* }
%struct.ossl_core_bio_st = type opaque
%struct.BIO_CORE_GLOBALS = type { i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)*, i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)*, i32 (%struct.ossl_core_bio_st*, i8*, i32)*, i32 (%struct.ossl_core_bio_st*, i8*)*, i32 (%struct.ossl_core_bio_st*, i32, i64, i8*)*, i32 (%struct.ossl_core_bio_st*)*, i32 (%struct.ossl_core_bio_st*)* }
%struct.ossl_dispatch_st = type { i32, void ()* }

@corebiometh = internal constant %struct.bio_method_st { i32 1049, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 (%struct.bio_st*, i8*, i64, i64*)* @bio_core_write_ex, i32 (%struct.bio_st*, i8*, i32)* null, i32 (%struct.bio_st*, i8*, i64, i64*)* @bio_core_read_ex, i32 (%struct.bio_st*, i8*, i32)* null, i32 (%struct.bio_st*, i8*)* @bio_core_puts, i32 (%struct.bio_st*, i8*, i32)* @bio_core_gets, i64 (%struct.bio_st*, i32, i64, i8*)* @bio_core_ctrl, i32 (%struct.bio_st*)* @bio_core_new, i32 (%struct.bio_st*)* @bio_core_free, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* null }, align 8
@.str = private unnamed_addr constant [19 x i8] c"BIO to Core filter\00", align 1
@bio_core_globals_method = internal constant %struct.ossl_lib_ctx_method { i32 0, i8* (%struct.ossl_lib_ctx_st*)* @bio_core_globals_new, void (i8*)* @bio_core_globals_free }, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"crypto/bio/bss_core.c\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bio_method_st* @BIO_s_core() local_unnamed_addr #0 {
entry:
  ret %struct.bio_method_st* @corebiometh
}

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @BIO_new_from_core_bio(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ossl_core_bio_st* noundef %corebio) local_unnamed_addr #1 {
entry:
  %call = tail call fastcc %struct.BIO_CORE_GLOBALS* @get_globals(%struct.ossl_lib_ctx_st* noundef %libctx) #4
  %c_bio_write_ex = getelementptr inbounds %struct.BIO_CORE_GLOBALS, %struct.BIO_CORE_GLOBALS* %call, i64 0, i32 1
  %0 = load i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)*, i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)** %c_bio_write_ex, align 8, !tbaa !4
  %cmp = icmp eq i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %c_bio_read_ex = getelementptr inbounds %struct.BIO_CORE_GLOBALS, %struct.BIO_CORE_GLOBALS* %call, i64 0, i32 0
  %1 = load i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)*, i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)** %c_bio_read_ex, align 8, !tbaa !9
  %cmp1 = icmp eq i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)* %1, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = tail call %struct.bio_st* @BIO_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.bio_method_st* noundef nonnull @corebiometh) #5
  %cmp4 = icmp eq %struct.bio_st* %call3, null
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %c_bio_up_ref = getelementptr inbounds %struct.BIO_CORE_GLOBALS, %struct.BIO_CORE_GLOBALS* %call, i64 0, i32 5
  %2 = load i32 (%struct.ossl_core_bio_st*)*, i32 (%struct.ossl_core_bio_st*)** %c_bio_up_ref, align 8, !tbaa !10
  %call7 = tail call i32 %2(%struct.ossl_core_bio_st* noundef %corebio) #5
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %call9 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call3) #5
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %3 = bitcast %struct.ossl_core_bio_st* %corebio to i8*
  tail call void @BIO_set_data(%struct.bio_st* noundef nonnull %call3, i8* noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true, %if.end10, %if.then8
  %retval.0 = phi %struct.bio_st* [ %call3, %if.end10 ], [ null, %if.then8 ], [ null, %land.lhs.true ], [ null, %if.end ]
  ret %struct.bio_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.BIO_CORE_GLOBALS* @get_globals(%struct.ossl_lib_ctx_st* noundef %libctx) unnamed_addr #1 {
entry:
  %call = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 17, %struct.ossl_lib_ctx_method* noundef nonnull @bio_core_globals_method) #5
  %0 = bitcast i8* %call to %struct.BIO_CORE_GLOBALS*
  ret %struct.BIO_CORE_GLOBALS* %0
}

declare %struct.bio_st* @BIO_new_ex(%struct.ossl_lib_ctx_st* noundef, %struct.bio_method_st* noundef) local_unnamed_addr #2

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare void @BIO_set_data(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_bio_init_core(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ossl_dispatch_st* nocapture noundef readonly %fns) local_unnamed_addr #1 {
entry:
  %call = tail call fastcc %struct.BIO_CORE_GLOBALS* @get_globals(%struct.ossl_lib_ctx_st* noundef %libctx) #4
  %c_bio_free = getelementptr inbounds %struct.BIO_CORE_GLOBALS, %struct.BIO_CORE_GLOBALS* %call, i64 0, i32 6
  %c_bio_up_ref = getelementptr inbounds %struct.BIO_CORE_GLOBALS, %struct.BIO_CORE_GLOBALS* %call, i64 0, i32 5
  %c_bio_ctrl = getelementptr inbounds %struct.BIO_CORE_GLOBALS, %struct.BIO_CORE_GLOBALS* %call, i64 0, i32 4
  %c_bio_puts = getelementptr inbounds %struct.BIO_CORE_GLOBALS, %struct.BIO_CORE_GLOBALS* %call, i64 0, i32 3
  %c_bio_gets = getelementptr inbounds %struct.BIO_CORE_GLOBALS, %struct.BIO_CORE_GLOBALS* %call, i64 0, i32 2
  %c_bio_write_ex = getelementptr inbounds %struct.BIO_CORE_GLOBALS, %struct.BIO_CORE_GLOBALS* %call, i64 0, i32 1
  %c_bio_read_ex = getelementptr inbounds %struct.BIO_CORE_GLOBALS, %struct.BIO_CORE_GLOBALS* %call, i64 0, i32 0
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %fns.addr.0 = phi %struct.ossl_dispatch_st* [ %fns, %entry ], [ %incdec.ptr, %for.inc ]
  %function_id = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.addr.0, i64 0, i32 0
  %0 = load i32, i32* %function_id, align 8, !tbaa !11
  switch i32 %0, label %for.inc [
    i32 0, label %for.end
    i32 42, label %sw.bb
    i32 43, label %sw.bb5
    i32 49, label %sw.bb11
    i32 48, label %sw.bb17
    i32 50, label %sw.bb23
    i32 44, label %sw.bb29
    i32 45, label %sw.bb35
  ]

sw.bb:                                            ; preds = %for.cond
  %1 = load i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)*, i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)** %c_bio_read_ex, align 8, !tbaa !9
  %cmp2 = icmp eq i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)* %1, null
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %sw.bb
  %call3 = tail call fastcc i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)* @OSSL_FUNC_BIO_read_ex(%struct.ossl_dispatch_st* noundef nonnull %fns.addr.0) #4
  store i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)* %call3, i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)** %c_bio_read_ex, align 8, !tbaa !9
  br label %for.inc

sw.bb5:                                           ; preds = %for.cond
  %2 = load i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)*, i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)** %c_bio_write_ex, align 8, !tbaa !4
  %cmp6 = icmp eq i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)* %2, null
  br i1 %cmp6, label %if.then7, label %for.inc

if.then7:                                         ; preds = %sw.bb5
  %call8 = tail call fastcc i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)* @OSSL_FUNC_BIO_write_ex(%struct.ossl_dispatch_st* noundef nonnull %fns.addr.0) #4
  store i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)* %call8, i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)** %c_bio_write_ex, align 8, !tbaa !4
  br label %for.inc

sw.bb11:                                          ; preds = %for.cond
  %3 = load i32 (%struct.ossl_core_bio_st*, i8*, i32)*, i32 (%struct.ossl_core_bio_st*, i8*, i32)** %c_bio_gets, align 8, !tbaa !14
  %cmp12 = icmp eq i32 (%struct.ossl_core_bio_st*, i8*, i32)* %3, null
  br i1 %cmp12, label %if.then13, label %for.inc

if.then13:                                        ; preds = %sw.bb11
  %call14 = tail call fastcc i32 (%struct.ossl_core_bio_st*, i8*, i32)* @OSSL_FUNC_BIO_gets(%struct.ossl_dispatch_st* noundef nonnull %fns.addr.0) #4
  store i32 (%struct.ossl_core_bio_st*, i8*, i32)* %call14, i32 (%struct.ossl_core_bio_st*, i8*, i32)** %c_bio_gets, align 8, !tbaa !14
  br label %for.inc

sw.bb17:                                          ; preds = %for.cond
  %4 = load i32 (%struct.ossl_core_bio_st*, i8*)*, i32 (%struct.ossl_core_bio_st*, i8*)** %c_bio_puts, align 8, !tbaa !15
  %cmp18 = icmp eq i32 (%struct.ossl_core_bio_st*, i8*)* %4, null
  br i1 %cmp18, label %if.then19, label %for.inc

if.then19:                                        ; preds = %sw.bb17
  %call20 = tail call fastcc i32 (%struct.ossl_core_bio_st*, i8*)* @OSSL_FUNC_BIO_puts(%struct.ossl_dispatch_st* noundef nonnull %fns.addr.0) #4
  store i32 (%struct.ossl_core_bio_st*, i8*)* %call20, i32 (%struct.ossl_core_bio_st*, i8*)** %c_bio_puts, align 8, !tbaa !15
  br label %for.inc

sw.bb23:                                          ; preds = %for.cond
  %5 = load i32 (%struct.ossl_core_bio_st*, i32, i64, i8*)*, i32 (%struct.ossl_core_bio_st*, i32, i64, i8*)** %c_bio_ctrl, align 8, !tbaa !16
  %cmp24 = icmp eq i32 (%struct.ossl_core_bio_st*, i32, i64, i8*)* %5, null
  br i1 %cmp24, label %if.then25, label %for.inc

if.then25:                                        ; preds = %sw.bb23
  %call26 = tail call fastcc i32 (%struct.ossl_core_bio_st*, i32, i64, i8*)* @OSSL_FUNC_BIO_ctrl(%struct.ossl_dispatch_st* noundef nonnull %fns.addr.0) #4
  store i32 (%struct.ossl_core_bio_st*, i32, i64, i8*)* %call26, i32 (%struct.ossl_core_bio_st*, i32, i64, i8*)** %c_bio_ctrl, align 8, !tbaa !16
  br label %for.inc

sw.bb29:                                          ; preds = %for.cond
  %6 = load i32 (%struct.ossl_core_bio_st*)*, i32 (%struct.ossl_core_bio_st*)** %c_bio_up_ref, align 8, !tbaa !10
  %cmp30 = icmp eq i32 (%struct.ossl_core_bio_st*)* %6, null
  br i1 %cmp30, label %if.then31, label %for.inc

if.then31:                                        ; preds = %sw.bb29
  %call32 = tail call fastcc i32 (%struct.ossl_core_bio_st*)* @OSSL_FUNC_BIO_up_ref(%struct.ossl_dispatch_st* noundef nonnull %fns.addr.0) #4
  store i32 (%struct.ossl_core_bio_st*)* %call32, i32 (%struct.ossl_core_bio_st*)** %c_bio_up_ref, align 8, !tbaa !10
  br label %for.inc

sw.bb35:                                          ; preds = %for.cond
  %7 = load i32 (%struct.ossl_core_bio_st*)*, i32 (%struct.ossl_core_bio_st*)** %c_bio_free, align 8, !tbaa !17
  %cmp36 = icmp eq i32 (%struct.ossl_core_bio_st*)* %7, null
  br i1 %cmp36, label %if.then37, label %for.inc

if.then37:                                        ; preds = %sw.bb35
  %call38 = tail call fastcc i32 (%struct.ossl_core_bio_st*)* @OSSL_FUNC_BIO_free(%struct.ossl_dispatch_st* noundef nonnull %fns.addr.0) #4
  store i32 (%struct.ossl_core_bio_st*)* %call38, i32 (%struct.ossl_core_bio_st*)** %c_bio_free, align 8, !tbaa !17
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %if.then, %sw.bb, %if.then7, %sw.bb5, %if.then13, %sw.bb11, %if.then19, %sw.bb17, %if.then25, %sw.bb23, %if.then31, %sw.bb29, %if.then37, %sw.bb35
  %incdec.ptr = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.addr.0, i64 1
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)* @OSSL_FUNC_BIO_read_ex(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)**
  %1 = load i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)*, i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)** %0, align 8, !tbaa !20
  ret i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)* @OSSL_FUNC_BIO_write_ex(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)**
  %1 = load i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)*, i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)** %0, align 8, !tbaa !20
  ret i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (%struct.ossl_core_bio_st*, i8*, i32)* @OSSL_FUNC_BIO_gets(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (%struct.ossl_core_bio_st*, i8*, i32)**
  %1 = load i32 (%struct.ossl_core_bio_st*, i8*, i32)*, i32 (%struct.ossl_core_bio_st*, i8*, i32)** %0, align 8, !tbaa !20
  ret i32 (%struct.ossl_core_bio_st*, i8*, i32)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (%struct.ossl_core_bio_st*, i8*)* @OSSL_FUNC_BIO_puts(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (%struct.ossl_core_bio_st*, i8*)**
  %1 = load i32 (%struct.ossl_core_bio_st*, i8*)*, i32 (%struct.ossl_core_bio_st*, i8*)** %0, align 8, !tbaa !20
  ret i32 (%struct.ossl_core_bio_st*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (%struct.ossl_core_bio_st*, i32, i64, i8*)* @OSSL_FUNC_BIO_ctrl(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (%struct.ossl_core_bio_st*, i32, i64, i8*)**
  %1 = load i32 (%struct.ossl_core_bio_st*, i32, i64, i8*)*, i32 (%struct.ossl_core_bio_st*, i32, i64, i8*)** %0, align 8, !tbaa !20
  ret i32 (%struct.ossl_core_bio_st*, i32, i64, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (%struct.ossl_core_bio_st*)* @OSSL_FUNC_BIO_up_ref(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (%struct.ossl_core_bio_st*)**
  %1 = load i32 (%struct.ossl_core_bio_st*)*, i32 (%struct.ossl_core_bio_st*)** %0, align 8, !tbaa !20
  ret i32 (%struct.ossl_core_bio_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (%struct.ossl_core_bio_st*)* @OSSL_FUNC_BIO_free(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (%struct.ossl_core_bio_st*)**
  %1 = load i32 (%struct.ossl_core_bio_st*)*, i32 (%struct.ossl_core_bio_st*)** %0, align 8, !tbaa !20
  ret i32 (%struct.ossl_core_bio_st*)* %1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bio_core_write_ex(%struct.bio_st* noundef %bio, i8* noundef %data, i64 noundef %data_len, i64* noundef %written) #1 {
entry:
  %libctx = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 0
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !21
  %call = tail call fastcc %struct.BIO_CORE_GLOBALS* @get_globals(%struct.ossl_lib_ctx_st* noundef %0) #4
  %c_bio_write_ex = getelementptr inbounds %struct.BIO_CORE_GLOBALS, %struct.BIO_CORE_GLOBALS* %call, i64 0, i32 1
  %1 = load i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)*, i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)** %c_bio_write_ex, align 8, !tbaa !4
  %cmp = icmp eq i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)* %1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @BIO_get_data(%struct.bio_st* noundef nonnull %bio) #5
  %2 = bitcast i8* %call2 to %struct.ossl_core_bio_st*
  %call3 = tail call i32 %1(%struct.ossl_core_bio_st* noundef %2, i8* noundef %data, i64 noundef %data_len, i64* noundef %written) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bio_core_read_ex(%struct.bio_st* noundef %bio, i8* noundef %data, i64 noundef %data_len, i64* noundef %bytes_read) #1 {
entry:
  %libctx = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 0
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !21
  %call = tail call fastcc %struct.BIO_CORE_GLOBALS* @get_globals(%struct.ossl_lib_ctx_st* noundef %0) #4
  %c_bio_read_ex = getelementptr inbounds %struct.BIO_CORE_GLOBALS, %struct.BIO_CORE_GLOBALS* %call, i64 0, i32 0
  %1 = load i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)*, i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)** %c_bio_read_ex, align 8, !tbaa !9
  %cmp = icmp eq i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)* %1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @BIO_get_data(%struct.bio_st* noundef nonnull %bio) #5
  %2 = bitcast i8* %call2 to %struct.ossl_core_bio_st*
  %call3 = tail call i32 %1(%struct.ossl_core_bio_st* noundef %2, i8* noundef %data, i64 noundef %data_len, i64* noundef %bytes_read) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bio_core_puts(%struct.bio_st* noundef %bio, i8* noundef %str) #1 {
entry:
  %libctx = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 0
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !21
  %call = tail call fastcc %struct.BIO_CORE_GLOBALS* @get_globals(%struct.ossl_lib_ctx_st* noundef %0) #4
  %c_bio_puts = getelementptr inbounds %struct.BIO_CORE_GLOBALS, %struct.BIO_CORE_GLOBALS* %call, i64 0, i32 3
  %1 = load i32 (%struct.ossl_core_bio_st*, i8*)*, i32 (%struct.ossl_core_bio_st*, i8*)** %c_bio_puts, align 8, !tbaa !15
  %cmp = icmp eq i32 (%struct.ossl_core_bio_st*, i8*)* %1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @BIO_get_data(%struct.bio_st* noundef nonnull %bio) #5
  %2 = bitcast i8* %call2 to %struct.ossl_core_bio_st*
  %call3 = tail call i32 %1(%struct.ossl_core_bio_st* noundef %2, i8* noundef %str) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bio_core_gets(%struct.bio_st* noundef %bio, i8* noundef %buf, i32 noundef %size) #1 {
entry:
  %libctx = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 0
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !21
  %call = tail call fastcc %struct.BIO_CORE_GLOBALS* @get_globals(%struct.ossl_lib_ctx_st* noundef %0) #4
  %c_bio_gets = getelementptr inbounds %struct.BIO_CORE_GLOBALS, %struct.BIO_CORE_GLOBALS* %call, i64 0, i32 2
  %1 = load i32 (%struct.ossl_core_bio_st*, i8*, i32)*, i32 (%struct.ossl_core_bio_st*, i8*, i32)** %c_bio_gets, align 8, !tbaa !14
  %cmp = icmp eq i32 (%struct.ossl_core_bio_st*, i8*, i32)* %1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @BIO_get_data(%struct.bio_st* noundef nonnull %bio) #5
  %2 = bitcast i8* %call2 to %struct.ossl_core_bio_st*
  %call3 = tail call i32 %1(%struct.ossl_core_bio_st* noundef %2, i8* noundef %buf, i32 noundef %size) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @bio_core_ctrl(%struct.bio_st* noundef %bio, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #1 {
entry:
  %libctx = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 0
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !21
  %call = tail call fastcc %struct.BIO_CORE_GLOBALS* @get_globals(%struct.ossl_lib_ctx_st* noundef %0) #4
  %c_bio_ctrl = getelementptr inbounds %struct.BIO_CORE_GLOBALS, %struct.BIO_CORE_GLOBALS* %call, i64 0, i32 4
  %1 = load i32 (%struct.ossl_core_bio_st*, i32, i64, i8*)*, i32 (%struct.ossl_core_bio_st*, i32, i64, i8*)** %c_bio_ctrl, align 8, !tbaa !16
  %cmp = icmp eq i32 (%struct.ossl_core_bio_st*, i32, i64, i8*)* %1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @BIO_get_data(%struct.bio_st* noundef nonnull %bio) #5
  %2 = bitcast i8* %call2 to %struct.ossl_core_bio_st*
  %call3 = tail call i32 %1(%struct.ossl_core_bio_st* noundef %2, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #5
  %conv = sext i32 %call3 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %conv, %if.end ], [ -1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bio_core_new(%struct.bio_st* noundef %bio) #1 {
entry:
  tail call void @BIO_set_init(%struct.bio_st* noundef %bio, i32 noundef 1) #5
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bio_core_free(%struct.bio_st* noundef %bio) #1 {
entry:
  %libctx = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 0
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !21
  %call = tail call fastcc %struct.BIO_CORE_GLOBALS* @get_globals(%struct.ossl_lib_ctx_st* noundef %0) #4
  tail call void @BIO_set_init(%struct.bio_st* noundef %bio, i32 noundef 0) #5
  %c_bio_free = getelementptr inbounds %struct.BIO_CORE_GLOBALS, %struct.BIO_CORE_GLOBALS* %call, i64 0, i32 6
  %1 = load i32 (%struct.ossl_core_bio_st*)*, i32 (%struct.ossl_core_bio_st*)** %c_bio_free, align 8, !tbaa !17
  %call1 = tail call i8* @BIO_get_data(%struct.bio_st* noundef %bio) #5
  %2 = bitcast i8* %call1 to %struct.ossl_core_bio_st*
  %call2 = tail call i32 %1(%struct.ossl_core_bio_st* noundef %2) #5
  ret i32 1
}

declare i8* @BIO_get_data(%struct.bio_st* noundef) local_unnamed_addr #2

declare void @BIO_set_init(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef, i32 noundef, %struct.ossl_lib_ctx_method* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @bio_core_globals_new(%struct.ossl_lib_ctx_st* nocapture noundef readnone %ctx) #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 56, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 31) #5
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define internal void @bio_core_globals_free(i8* noundef %vbcg) #1 {
entry:
  tail call void @CRYPTO_free(i8* noundef %vbcg, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 26) #5
  ret void
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 8}
!5 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 0}
!10 = !{!5, !6, i64 40}
!11 = !{!12, !13, i64 0}
!12 = !{!"ossl_dispatch_st", !13, i64 0, !6, i64 8}
!13 = !{!"int", !7, i64 0}
!14 = !{!5, !6, i64 16}
!15 = !{!5, !6, i64 24}
!16 = !{!5, !6, i64 32}
!17 = !{!5, !6, i64 48}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!12, !6, i64 8}
!21 = !{!22, !6, i64 0}
!22 = !{!"bio_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !7, i64 88, !23, i64 96, !23, i64 104, !24, i64 112, !6, i64 128}
!23 = !{!"long", !7, i64 0}
!24 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
