; ModuleID = 'crypto/evp/bio_ok.c'
source_filename = "crypto/evp/bio_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.bio_st = type opaque
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_md_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.engine_st = type opaque

@methods_ok = internal constant %struct.bio_method_st { i32 522, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 (%struct.bio_st*, i8*, i64, i64*)* @bwrite_conv, i32 (%struct.bio_st*, i8*, i32)* @ok_write, i32 (%struct.bio_st*, i8*, i64, i64*)* @bread_conv, i32 (%struct.bio_st*, i8*, i32)* @ok_read, i32 (%struct.bio_st*, i8*)* null, i32 (%struct.bio_st*, i8*, i32)* null, i64 (%struct.bio_st*, i32, i64, i8*)* @ok_ctrl, i32 (%struct.bio_st*)* @ok_new, i32 (%struct.bio_st*)* @ok_free, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* @ok_callback_ctrl }, align 8
@.str = private unnamed_addr constant [9 x i8] c"reliable\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"The quick brown fox jumped over the lazy dog's back.\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"crypto/evp/bio_ok.c\00", align 1
@__func__.ok_new = private unnamed_addr constant [7 x i8] c"ok_new\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bio_method_st* @BIO_f_reliable() local_unnamed_addr #0 {
entry:
  ret %struct.bio_method_st* @methods_ok
}

declare i32 @bwrite_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ok_write(%struct.bio_st* noundef %b, i8* noundef %in, i32 noundef %inl) #2 {
entry:
  %cmp = icmp slt i32 %inl, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #7
  %call1 = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #7
  %cmp2 = icmp eq i8* %call, null
  %cmp3 = icmp eq %struct.bio_st* %call1, null
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp3
  br i1 %or.cond, label %cleanup, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.end
  %call5 = tail call i32 @BIO_get_init(%struct.bio_st* noundef %b) #7
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false4
  %sigio = getelementptr inbounds i8, i8* %call, i64 52
  %0 = bitcast i8* %sigio to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end8
  %call9 = tail call fastcc i32 @sig_out(%struct.bio_st* noundef %b) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.end8
  %buf_len = bitcast i8* %call to i64*
  %buf_off = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %buf_off to i64*
  %blockout = getelementptr inbounds i8, i8* %call, i64 48
  %3 = bitcast i8* %blockout to i32*
  %buf = getelementptr inbounds i8, i8* %call, i64 56
  %4 = bitcast i8* %call to <2 x i64>*
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end12
  %inl.addr.0 = phi i32 [ %inl, %if.end12 ], [ %sub61, %do.cond ]
  %in.addr.0 = phi i8* [ %in, %if.end12 ], [ %add.ptr, %do.cond ]
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #7
  %5 = load i64, i64* %buf_len, align 8, !tbaa !11
  %6 = load i64, i64* %2, align 8, !tbaa !12
  %sub = sub i64 %5, %6
  %conv = trunc i64 %sub to i32
  %7 = load i32, i32* %3, align 8, !tbaa !13
  %tobool13133 = icmp ne i32 %7, 0
  %cmp14134 = icmp sgt i32 %conv, 0
  %8 = select i1 %tobool13133, i1 %cmp14134, i1 false
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %do.body, %if.end25
  %9 = phi i64 [ %add, %if.end25 ], [ %6, %do.body ]
  %n.0135 = phi i32 [ %sub28, %if.end25 ], [ %conv, %do.body ]
  %arrayidx = getelementptr inbounds i8, i8* %buf, i64 %9
  %call17 = tail call i32 @BIO_write(%struct.bio_st* noundef %call1, i8* noundef nonnull %arrayidx, i32 noundef %n.0135) #7
  %cmp18 = icmp slt i32 %call17, 1
  br i1 %cmp18, label %if.then20, label %if.end25

if.then20:                                        ; preds = %while.body
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef %b) #7
  %call21 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %b, i32 noundef 8) #7
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %cleanup

if.then23:                                        ; preds = %if.then20
  %cont = getelementptr inbounds i8, i8* %call, i64 32
  %10 = bitcast i8* %cont to i32*
  store i32 0, i32* %10, align 8, !tbaa !14
  br label %cleanup

if.end25:                                         ; preds = %while.body
  %conv26131 = zext i32 %call17 to i64
  %11 = load i64, i64* %2, align 8, !tbaa !12
  %add = add i64 %11, %conv26131
  store i64 %add, i64* %2, align 8, !tbaa !12
  %sub28 = sub nsw i32 %n.0135, %call17
  %12 = load i32, i32* %3, align 8, !tbaa !13
  %tobool13 = icmp ne i32 %12, 0
  %cmp14 = icmp sgt i32 %sub28, 0
  %13 = select i1 %tobool13, i1 %cmp14, i1 false
  br i1 %13, label %while.body, label %while.end.loopexit, !llvm.loop !15

while.end.loopexit:                               ; preds = %if.end25
  %.pre = load i64, i64* %buf_len, align 8, !tbaa !11
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %do.body
  %14 = phi i64 [ %add, %while.end.loopexit ], [ %6, %do.body ]
  %15 = phi i64 [ %.pre, %while.end.loopexit ], [ %5, %do.body ]
  store i32 0, i32* %3, align 8, !tbaa !13
  %cmp32 = icmp eq i64 %15, %14
  br i1 %cmp32, label %if.then34, label %if.end37

if.then34:                                        ; preds = %while.end
  store <2 x i64> <i64 4, i64 0>, <2 x i64>* %4, align 8, !tbaa !17
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %while.end
  %16 = phi i64 [ 4, %if.then34 ], [ %15, %while.end ]
  %cmp38 = icmp eq i8* %in.addr.0, null
  br i1 %cmp38, label %cleanup, label %if.end44

if.end44:                                         ; preds = %if.end37
  %conv45 = sext i32 %inl.addr.0 to i64
  %add47 = add i64 %16, %conv45
  %cmp48 = icmp ugt i64 %add47, 4100
  %17 = trunc i64 %16 to i32
  %conv52 = sub i32 4100, %17
  %cond = select i1 %cmp48, i32 %conv52, i32 %inl.addr.0
  %arrayidx55 = getelementptr inbounds i8, i8* %buf, i64 %16
  %conv56 = sext i32 %cond to i64
  %call57 = tail call i8* @memcpy(i8* noundef nonnull %arrayidx55, i8* noundef nonnull %in.addr.0, i64 noundef %conv56) #7
  %18 = load i64, i64* %buf_len, align 8, !tbaa !11
  %add60 = add i64 %18, %conv56
  store i64 %add60, i64* %buf_len, align 8, !tbaa !11
  %sub61 = sub nsw i32 %inl.addr.0, %cond
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.0, i64 %conv56
  %cmp63 = icmp ugt i64 %add60, 4099
  br i1 %cmp63, label %if.then65, label %do.cond

if.then65:                                        ; preds = %if.end44
  %call66 = tail call fastcc i32 @block_out(%struct.bio_st* noundef %b) #8
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then68, label %do.cond

if.then68:                                        ; preds = %if.then65
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #7
  br label %cleanup

do.cond:                                          ; preds = %if.end44, %if.then65
  %cmp71 = icmp sgt i32 %sub61, 0
  br i1 %cmp71, label %do.body, label %do.end, !llvm.loop !18

do.end:                                           ; preds = %do.cond
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #7
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef %b) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then20, %if.then23, %land.lhs.true, %if.end, %lor.lhs.false4, %entry, %do.end, %if.then68
  %retval.0 = phi i32 [ %inl, %do.end ], [ 0, %if.then68 ], [ %inl, %entry ], [ 0, %lor.lhs.false4 ], [ 0, %if.end ], [ 0, %land.lhs.true ], [ %call17, %if.then23 ], [ %call17, %if.then20 ], [ 0, %if.end37 ]
  ret i32 %retval.0
}

declare i32 @bread_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ok_read(%struct.bio_st* noundef %b, i8* noundef %out, i32 noundef %outl) #2 {
entry:
  %cmp = icmp eq i8* %out, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #7
  %call1 = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #7
  %cmp2 = icmp eq i8* %call, null
  %cmp3 = icmp eq %struct.bio_st* %call1, null
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp3
  br i1 %or.cond, label %cleanup, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.end
  %call5 = tail call i32 @BIO_get_init(%struct.bio_st* noundef %b) #7
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %cleanup, label %while.cond

while.cond:                                       ; preds = %lor.lhs.false4
  %cmp9.old = icmp sgt i32 %outl, 0
  br i1 %cmp9.old, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %while.cond
  %blockout = getelementptr inbounds i8, i8* %call, i64 48
  %0 = bitcast i8* %blockout to i32*
  %buf_len = bitcast i8* %call to i64*
  %buf_off = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %buf_off to i64*
  %buf = getelementptr inbounds i8, i8* %call, i64 56
  %buf_len_save = getelementptr inbounds i8, i8* %call, i64 16
  %2 = bitcast i8* %buf_len_save to i64*
  %buf_off_save = getelementptr inbounds i8, i8* %call, i64 24
  %3 = bitcast i8* %buf_off_save to i64*
  %sigio = getelementptr inbounds i8, i8* %call, i64 52
  %4 = bitcast i8* %sigio to i32*
  %cont = getelementptr inbounds i8, i8* %call, i64 32
  %5 = bitcast i8* %cont to i32*
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end80
  %ret.0 = phi i32 [ %ret.1152, %if.end80 ], [ 0, %while.body.preheader ]
  %outl.addr.0 = phi i32 [ %outl.addr.1153, %if.end80 ], [ %outl, %while.body.preheader ]
  %out.addr.0 = phi i8* [ %out.addr.1154, %if.end80 ], [ %out, %while.body.preheader ]
  %6 = load i32, i32* %0, align 8, !tbaa !13
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end49, label %if.then10

if.then10:                                        ; preds = %while.body
  %7 = load i64, i64* %buf_len, align 8, !tbaa !11
  %8 = load i64, i64* %1, align 8, !tbaa !12
  %sub = sub i64 %7, %8
  %conv = trunc i64 %sub to i32
  %cmp11 = icmp slt i32 %outl.addr.0, %conv
  %spec.select = select i1 %cmp11, i32 %outl.addr.0, i32 %conv
  %arrayidx = getelementptr inbounds i8, i8* %buf, i64 %8
  %conv16 = sext i32 %spec.select to i64
  %call17 = tail call i8* @memcpy(i8* noundef %out.addr.0, i8* noundef nonnull %arrayidx, i64 noundef %conv16) #7
  %add = add nsw i32 %spec.select, %ret.0
  %add.ptr = getelementptr inbounds i8, i8* %out.addr.0, i64 %conv16
  %sub18 = sub nsw i32 %outl.addr.0, %spec.select
  %9 = load i64, i64* %1, align 8, !tbaa !12
  %add21 = add i64 %9, %conv16
  store i64 %add21, i64* %1, align 8, !tbaa !12
  %10 = load i64, i64* %buf_len, align 8, !tbaa !11
  %cmp24 = icmp eq i64 %10, %add21
  br i1 %cmp24, label %if.then26, label %if.end45

if.then26:                                        ; preds = %if.then10
  store i64 0, i64* %1, align 8, !tbaa !12
  %11 = load i64, i64* %2, align 8, !tbaa !19
  %12 = load i64, i64* %3, align 8, !tbaa !20
  %cmp28 = icmp ugt i64 %11, %12
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.then26
  %sub33 = sub i64 %11, %12
  store i64 %sub33, i64* %buf_len, align 8, !tbaa !11
  %arrayidx38 = getelementptr inbounds i8, i8* %buf, i64 %12
  %call40 = tail call i8* @memmove(i8* noundef nonnull %buf, i8* noundef nonnull %arrayidx38, i64 noundef %sub33) #7
  br label %if.end42

if.else:                                          ; preds = %if.then26
  store i64 0, i64* %buf_len, align 8, !tbaa !11
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then30
  store i32 0, i32* %0, align 8, !tbaa !13
  br label %if.end45

if.end45:                                         ; preds = %if.then10, %if.end42
  %cmp46 = icmp eq i32 %sub18, 0
  br i1 %cmp46, label %while.end, label %if.end49

if.end49:                                         ; preds = %while.body, %if.end45
  %out.addr.1154 = phi i8* [ %add.ptr, %if.end45 ], [ %out.addr.0, %while.body ]
  %outl.addr.1153 = phi i32 [ %sub18, %if.end45 ], [ %outl.addr.0, %while.body ]
  %ret.1152 = phi i32 [ %add, %if.end45 ], [ %ret.0, %while.body ]
  %13 = load i64, i64* %buf_len, align 8, !tbaa !11
  %14 = trunc i64 %13 to i32
  %conv52 = sub i32 4292, %14
  %arrayidx55 = getelementptr inbounds i8, i8* %buf, i64 %13
  %call56 = tail call i32 @BIO_read(%struct.bio_st* noundef %call1, i8* noundef nonnull %arrayidx55, i32 noundef %conv52) #7
  %cmp57 = icmp slt i32 %call56, 1
  br i1 %cmp57, label %while.end, label %if.end60

if.end60:                                         ; preds = %if.end49
  %conv61155 = zext i32 %call56 to i64
  %15 = load i64, i64* %buf_len, align 8, !tbaa !11
  %add63 = add i64 %15, %conv61155
  store i64 %add63, i64* %buf_len, align 8, !tbaa !11
  %16 = load i32, i32* %4, align 4, !tbaa !4
  %cmp64 = icmp eq i32 %16, 1
  br i1 %cmp64, label %if.then66, label %if.end71

if.then66:                                        ; preds = %if.end60
  %call67 = tail call fastcc i32 @sig_in(%struct.bio_st* noundef %b) #8
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then69, label %if.end71thread-pre-split

if.then69:                                        ; preds = %if.then66
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #7
  br label %cleanup

if.end71thread-pre-split:                         ; preds = %if.then66
  %.pr = load i32, i32* %4, align 4, !tbaa !4
  br label %if.end71

if.end71:                                         ; preds = %if.end71thread-pre-split, %if.end60
  %17 = phi i32 [ %.pr, %if.end71thread-pre-split ], [ %16, %if.end60 ]
  %cmp73 = icmp eq i32 %17, 0
  br i1 %cmp73, label %if.then75, label %if.end80

if.then75:                                        ; preds = %if.end71
  %call76 = tail call fastcc i32 @block_in(%struct.bio_st* noundef %b) #8
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.then75
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #7
  br label %cleanup

if.end80:                                         ; preds = %if.then75, %if.end71
  %18 = load i32, i32* %5, align 8, !tbaa !14
  %cmp81 = icmp sgt i32 %18, 0
  %cmp9 = icmp sgt i32 %outl.addr.1153, 0
  %or.cond89 = select i1 %cmp81, i1 %cmp9, i1 false
  br i1 %or.cond89, label %while.body, label %while.end, !llvm.loop !21

while.end:                                        ; preds = %if.end80, %if.end49, %if.end45, %while.cond
  %ret.2 = phi i32 [ 0, %while.cond ], [ %ret.1152, %if.end80 ], [ %ret.1152, %if.end49 ], [ %add, %if.end45 ]
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #7
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef %b) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false4, %entry, %while.end, %if.then78, %if.then69
  %retval.0 = phi i32 [ %ret.2, %while.end ], [ 0, %if.then78 ], [ 0, %if.then69 ], [ 0, %entry ], [ 0, %lor.lhs.false4 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @ok_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #2 {
entry:
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #7
  %call1 = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #7
  switch i32 %cmd, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 10, label %sw.bb6
    i32 13, label %sw.bb6
    i32 11, label %sw.bb14
    i32 101, label %sw.bb35
    i32 3, label %sw.bb37
    i32 111, label %sw.bb40
    i32 112, label %sw.bb46
  ]

sw.bb:                                            ; preds = %entry
  %0 = bitcast i8* %call to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %0, align 8, !tbaa !17
  %buf_len_save = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %buf_len_save to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %1, align 8, !tbaa !17
  %cont = getelementptr inbounds i8, i8* %call, i64 32
  %2 = bitcast i8* %cont to i32*
  store i32 1, i32* %2, align 8, !tbaa !14
  %finished = getelementptr inbounds i8, i8* %call, i64 36
  %3 = bitcast i8* %finished to i32*
  store i32 0, i32* %3, align 4, !tbaa !22
  %blockout = getelementptr inbounds i8, i8* %call, i64 48
  %4 = bitcast i8* %blockout to i32*
  store i32 0, i32* %4, align 8, !tbaa !13
  %sigio = getelementptr inbounds i8, i8* %call, i64 52
  %5 = bitcast i8* %sigio to i32*
  store i32 1, i32* %5, align 4, !tbaa !4
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 1, i64 noundef %num, i8* noundef %ptr) #7
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %cont4 = getelementptr inbounds i8, i8* %call, i64 32
  %6 = bitcast i8* %cont4 to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !14
  %cmp = icmp slt i32 %7, 1
  br i1 %cmp, label %cleanup, label %if.else

if.else:                                          ; preds = %sw.bb3
  %call5 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 2, i64 noundef %num, i8* noundef %ptr) #7
  br label %cleanup

sw.bb6:                                           ; preds = %entry, %entry
  %blockout7 = getelementptr inbounds i8, i8* %call, i64 48
  %8 = bitcast i8* %blockout7 to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !13
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then11, label %cond.end

cond.end:                                         ; preds = %sw.bb6
  %buf_len8 = bitcast i8* %call to i64*
  %10 = load i64, i64* %buf_len8, align 8, !tbaa !11
  %buf_off9 = getelementptr inbounds i8, i8* %call, i64 8
  %11 = bitcast i8* %buf_off9 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !12
  %sub = sub i64 %10, %12
  %cmp10 = icmp slt i64 %sub, 1
  br i1 %cmp10, label %if.then11, label %cleanup

if.then11:                                        ; preds = %sw.bb6, %cond.end
  %call12 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #7
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %blockout15 = getelementptr inbounds i8, i8* %call, i64 48
  %13 = bitcast i8* %blockout15 to i32*
  %14 = load i32, i32* %13, align 8, !tbaa !13
  %cmp16 = icmp eq i32 %14, 0
  br i1 %cmp16, label %if.then17, label %while.cond.preheader

if.then17:                                        ; preds = %sw.bb14
  %call18 = tail call fastcc i32 @block_out(%struct.bio_st* noundef %b) #8
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then17, %sw.bb14
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %15 = load i32, i32* %13, align 8, !tbaa !13
  %tobool24.not = icmp eq i32 %15, 0
  br i1 %tobool24.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call25 = tail call i32 @ok_write(%struct.bio_st* noundef %b, i8* noundef null, i32 noundef 0) #8
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %while.end, label %while.cond, !llvm.loop !23

while.end:                                        ; preds = %while.body, %while.cond
  %ret.0 = phi i32 [ 1, %while.cond ], [ %call25, %while.body ]
  %finished29 = getelementptr inbounds i8, i8* %call, i64 36
  %16 = bitcast i8* %finished29 to i32*
  store i32 1, i32* %16, align 4, !tbaa !22
  %17 = bitcast i8* %call to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %17, align 8, !tbaa !17
  %cont33 = getelementptr inbounds i8, i8* %call, i64 32
  %18 = bitcast i8* %cont33 to i32*
  store i32 %ret.0, i32* %18, align 8, !tbaa !14
  %call34 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 11, i64 noundef %num, i8* noundef %ptr) #7
  br label %cleanup

sw.bb35:                                          ; preds = %entry
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #7
  %call36 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 101, i64 noundef %num, i8* noundef %ptr) #7
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef %b) #7
  br label %cleanup

sw.bb37:                                          ; preds = %entry
  %cont38 = getelementptr inbounds i8, i8* %call, i64 32
  %19 = bitcast i8* %cont38 to i32*
  %20 = load i32, i32* %19, align 8, !tbaa !14
  %conv39 = sext i32 %20 to i64
  br label %cleanup

sw.bb40:                                          ; preds = %entry
  %21 = bitcast i8* %ptr to %struct.evp_md_st*
  %md41 = getelementptr inbounds i8, i8* %call, i64 40
  %22 = bitcast i8* %md41 to %struct.evp_md_ctx_st**
  %23 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %22, align 8, !tbaa !24
  %call42 = tail call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %23, %struct.evp_md_st* noundef %21, %struct.engine_st* noundef null) #7
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cleanup, label %if.end45

if.end45:                                         ; preds = %sw.bb40
  tail call void @BIO_set_init(%struct.bio_st* noundef %b, i32 noundef 1) #7
  br label %cleanup

sw.bb46:                                          ; preds = %entry
  %call47 = tail call i32 @BIO_get_init(%struct.bio_st* noundef %b) #7
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %cleanup, label %if.then49

if.then49:                                        ; preds = %sw.bb46
  %24 = bitcast i8* %ptr to %struct.evp_md_st**
  %md50 = getelementptr inbounds i8, i8* %call, i64 40
  %25 = bitcast i8* %md50 to %struct.evp_md_ctx_st**
  %26 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %25, align 8, !tbaa !24
  %call51 = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %26) #7
  store %struct.evp_md_st* %call51, %struct.evp_md_st** %24, align 8, !tbaa !25
  br label %cleanup

sw.default:                                       ; preds = %entry
  %call54 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %while.end, %sw.bb35, %sw.bb37, %if.end45, %sw.default, %if.else, %if.then11, %cond.end, %if.then49, %sw.bb3, %sw.bb46, %sw.bb40, %if.then17
  %retval.0 = phi i64 [ 0, %if.then17 ], [ 0, %sw.bb40 ], [ %call54, %sw.default ], [ 1, %if.then49 ], [ 1, %if.end45 ], [ %conv39, %sw.bb37 ], [ %call36, %sw.bb35 ], [ %call34, %while.end ], [ %call12, %if.then11 ], [ %sub, %cond.end ], [ %call5, %if.else ], [ %call2, %sw.bb ], [ 1, %sw.bb3 ], [ 0, %sw.bb46 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ok_new(%struct.bio_st* noundef %bi) #2 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 4352, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 135) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 136, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.ok_new, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %cont = getelementptr inbounds i8, i8* %call, i64 32
  %0 = bitcast i8* %cont to i32*
  store i32 1, i32* %0, align 8, !tbaa !14
  %sigio = getelementptr inbounds i8, i8* %call, i64 52
  %1 = bitcast i8* %sigio to i32*
  store i32 1, i32* %1, align 4, !tbaa !4
  %call1 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #7
  %md = getelementptr inbounds i8, i8* %call, i64 40
  %2 = bitcast i8* %md to %struct.evp_md_ctx_st**
  store %struct.evp_md_ctx_st* %call1, %struct.evp_md_ctx_st** %2, align 8, !tbaa !24
  %cmp3 = icmp eq %struct.evp_md_ctx_st* %call1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 144) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @BIO_set_init(%struct.bio_st* noundef %bi, i32 noundef 0) #7
  tail call void @BIO_set_data(%struct.bio_st* noundef %bi, i8* noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 1, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ok_free(%struct.bio_st* noundef %a) #2 {
entry:
  %cmp = icmp eq %struct.bio_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef nonnull %a) #7
  %md = getelementptr inbounds i8, i8* %call, i64 40
  %0 = bitcast i8* %md to %struct.evp_md_ctx_st**
  %1 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %0, align 8, !tbaa !24
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %1) #7
  tail call void @CRYPTO_clear_free(i8* noundef %call, i64 noundef 4352, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 163) #7
  tail call void @BIO_set_data(%struct.bio_st* noundef nonnull %a, i8* noundef null) #7
  tail call void @BIO_set_init(%struct.bio_st* noundef nonnull %a, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @ok_callback_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i32 (%struct.bio_st*, i32, i32)* noundef %fp) #2 {
entry:
  %call = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #7
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @BIO_callback_ctrl(%struct.bio_st* noundef nonnull %call, i32 noundef %cmd, i32 (%struct.bio_st*, i32, i32)* noundef %fp) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call1, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare i8* @BIO_get_data(%struct.bio_st* noundef) local_unnamed_addr #1

declare %struct.bio_st* @BIO_next(%struct.bio_st* noundef) local_unnamed_addr #1

declare i32 @BIO_get_init(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sig_out(%struct.bio_st* noundef %b) unnamed_addr #2 {
entry:
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #7
  %md1 = getelementptr inbounds i8, i8* %call, i64 40
  %0 = bitcast i8* %md1 to %struct.evp_md_ctx_st**
  %1 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %0, align 8, !tbaa !24
  %call2 = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %1) #7
  %call3 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %call2) #7
  %call4 = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %1) #7
  %buf_len = bitcast i8* %call to i64*
  %2 = load i64, i64* %buf_len, align 8, !tbaa !11
  %mul = shl nsw i32 %call3, 1
  %conv = sext i32 %mul to i64
  %add = add i64 %2, %conv
  %cmp = icmp ugt i64 %add, 4096
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %1, %struct.evp_md_st* noundef %call2, %struct.engine_st* noundef null) #7
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %berr, label %if.end8

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @RAND_bytes(i8* noundef %call4, i32 noundef %call3) #7
  %cmp10 = icmp slt i32 %call9, 1
  br i1 %cmp10, label %berr, label %if.end13

if.end13:                                         ; preds = %if.end8
  %buf = getelementptr inbounds i8, i8* %call, i64 56
  %3 = load i64, i64* %buf_len, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i8, i8* %buf, i64 %3
  %conv15 = sext i32 %call3 to i64
  %call16 = tail call i8* @memcpy(i8* noundef nonnull %arrayidx, i8* noundef %call4, i64 noundef %conv15) #7
  %4 = load i64, i64* %buf_len, align 8, !tbaa !11
  %arrayidx19 = getelementptr inbounds i8, i8* %buf, i64 %4
  tail call fastcc void @longswap(i8* noundef nonnull %arrayidx19, i64 noundef %conv15) #8
  %5 = load i64, i64* %buf_len, align 8, !tbaa !11
  %add23 = add i64 %5, %conv15
  store i64 %add23, i64* %buf_len, align 8, !tbaa !11
  %call24 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0)) #9
  %call25 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %1, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 noundef %call24) #7
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %berr, label %if.end28

if.end28:                                         ; preds = %if.end13
  %6 = load i64, i64* %buf_len, align 8, !tbaa !11
  %arrayidx31 = getelementptr inbounds i8, i8* %buf, i64 %6
  %call32 = tail call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %1, i8* noundef nonnull %arrayidx31, i32* noundef null) #7
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %berr, label %if.end35

if.end35:                                         ; preds = %if.end28
  %7 = load i64, i64* %buf_len, align 8, !tbaa !11
  %add38 = add i64 %7, %conv15
  store i64 %add38, i64* %buf_len, align 8, !tbaa !11
  %blockout = getelementptr inbounds i8, i8* %call, i64 48
  %8 = bitcast i8* %blockout to i32*
  store i32 1, i32* %8, align 8, !tbaa !13
  %sigio = getelementptr inbounds i8, i8* %call, i64 52
  %9 = bitcast i8* %sigio to i32*
  store i32 0, i32* %9, align 4, !tbaa !4
  br label %cleanup

berr:                                             ; preds = %if.end28, %if.end13, %if.end8, %if.end
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %berr, %if.end35
  %retval.0 = phi i32 [ 0, %berr ], [ 1, %if.end35 ], [ 1, %entry ]
  ret i32 %retval.0
}

declare void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @BIO_copy_next_retry(%struct.bio_st* noundef) local_unnamed_addr #1

declare i32 @BIO_test_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @block_out(%struct.bio_st* noundef %b) unnamed_addr #2 {
entry:
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #7
  %md1 = getelementptr inbounds i8, i8* %call, i64 40
  %0 = bitcast i8* %md1 to %struct.evp_md_ctx_st**
  %1 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %0, align 8, !tbaa !24
  %call2 = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %1) #7
  %call3 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %call2) #7
  %buf_len = bitcast i8* %call to i64*
  %2 = load i64, i64* %buf_len, align 8, !tbaa !11
  %sub = add i64 %2, -4
  %shr = lshr i64 %sub, 24
  %conv = trunc i64 %shr to i8
  %buf = getelementptr inbounds i8, i8* %call, i64 56
  store i8 %conv, i8* %buf, align 8, !tbaa !26
  %shr4 = lshr i64 %sub, 16
  %conv5 = trunc i64 %shr4 to i8
  %arrayidx7 = getelementptr inbounds i8, i8* %call, i64 57
  store i8 %conv5, i8* %arrayidx7, align 1, !tbaa !26
  %shr8 = lshr i64 %sub, 8
  %conv9 = trunc i64 %shr8 to i8
  %arrayidx11 = getelementptr inbounds i8, i8* %call, i64 58
  store i8 %conv9, i8* %arrayidx11, align 2, !tbaa !26
  %conv12 = trunc i64 %sub to i8
  %arrayidx14 = getelementptr inbounds i8, i8* %call, i64 59
  store i8 %conv12, i8* %arrayidx14, align 1, !tbaa !26
  %arrayidx16 = getelementptr inbounds i8, i8* %call, i64 60
  %call17 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %1, i8* noundef nonnull %arrayidx16, i64 noundef %sub) #7
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %berr, label %if.end

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %buf_len, align 8, !tbaa !11
  %arrayidx20 = getelementptr inbounds i8, i8* %buf, i64 %3
  %call21 = tail call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %1, i8* noundef nonnull %arrayidx20, i32* noundef null) #7
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %berr, label %if.end24

if.end24:                                         ; preds = %if.end
  %conv25 = sext i32 %call3 to i64
  %4 = load i64, i64* %buf_len, align 8, !tbaa !11
  %add = add i64 %4, %conv25
  store i64 %add, i64* %buf_len, align 8, !tbaa !11
  %blockout = getelementptr inbounds i8, i8* %call, i64 48
  %5 = bitcast i8* %blockout to i32*
  store i32 1, i32* %5, align 8, !tbaa !13
  br label %cleanup

berr:                                             ; preds = %if.end, %entry
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #7
  br label %cleanup

cleanup:                                          ; preds = %berr, %if.end24
  %retval.0 = phi i32 [ 1, %if.end24 ], [ 0, %berr ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #1

declare i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @longswap(i8* nocapture noundef %_ptr, i64 noundef %len) unnamed_addr #5 {
entry:
  %cmp20.not = icmp eq i64 %len, 0
  br i1 %cmp20.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx1 = getelementptr inbounds i8, i8* %_ptr, i64 3
  %arrayidx4 = getelementptr inbounds i8, i8* %_ptr, i64 1
  %arrayidx5 = getelementptr inbounds i8, i8* %_ptr, i64 2
  %_ptr.promoted = load i8, i8* %_ptr, align 1, !tbaa !26
  %arrayidx1.promoted = load i8, i8* %arrayidx1, align 1, !tbaa !26
  %arrayidx4.promoted = load i8, i8* %arrayidx4, align 1, !tbaa !26
  %arrayidx5.promoted = load i8, i8* %arrayidx5, align 1, !tbaa !26
  %0 = add i64 %len, -1
  %1 = lshr i64 %0, 2
  %2 = add nuw nsw i64 %1, 1
  %xtraiter = and i64 %2, 7
  %3 = icmp ult i64 %0, 28
  br i1 %3, label %for.cond.for.end_crit_edge.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %2, 9223372036854775800
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.7, %for.body ]
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7.not = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %for.cond.for.end_crit_edge.unr-lcssa, label %for.body, !llvm.loop !27

for.cond.for.end_crit_edge.unr-lcssa:             ; preds = %for.body, %for.body.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond.for.end_crit_edge, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond.for.end_crit_edge.unr-lcssa, %for.body.epil
  %4 = phi i8 [ %5, %for.body.epil ], [ %arrayidx5.promoted, %for.cond.for.end_crit_edge.unr-lcssa ]
  %5 = phi i8 [ %4, %for.body.epil ], [ %arrayidx4.promoted, %for.cond.for.end_crit_edge.unr-lcssa ]
  %6 = phi i8 [ %7, %for.body.epil ], [ %arrayidx1.promoted, %for.cond.for.end_crit_edge.unr-lcssa ]
  %7 = phi i8 [ %6, %for.body.epil ], [ %_ptr.promoted, %for.cond.for.end_crit_edge.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.cond.for.end_crit_edge.unr-lcssa ]
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.cond.for.end_crit_edge, label %for.body.epil, !llvm.loop !28

for.cond.for.end_crit_edge:                       ; preds = %for.body.epil, %for.cond.for.end_crit_edge.unr-lcssa
  %.lcssa36 = phi i8 [ %arrayidx4.promoted, %for.cond.for.end_crit_edge.unr-lcssa ], [ %4, %for.body.epil ]
  %.lcssa35 = phi i8 [ %arrayidx5.promoted, %for.cond.for.end_crit_edge.unr-lcssa ], [ %5, %for.body.epil ]
  %.lcssa34 = phi i8 [ %_ptr.promoted, %for.cond.for.end_crit_edge.unr-lcssa ], [ %6, %for.body.epil ]
  %.lcssa = phi i8 [ %arrayidx1.promoted, %for.cond.for.end_crit_edge.unr-lcssa ], [ %7, %for.body.epil ]
  store i8 %.lcssa34, i8* %_ptr, align 1, !tbaa !26
  store i8 %.lcssa, i8* %arrayidx1, align 1, !tbaa !26
  store i8 %.lcssa36, i8* %arrayidx4, align 1, !tbaa !26
  store i8 %.lcssa35, i8* %arrayidx5, align 1, !tbaa !26
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  ret void
}

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #6

declare i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sig_in(%struct.bio_st* noundef %b) unnamed_addr #2 {
entry:
  %tmp = alloca [64 x i8], align 16
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #10
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #7
  %md1 = getelementptr inbounds i8, i8* %call, i64 40
  %1 = bitcast i8* %md1 to %struct.evp_md_ctx_st**
  %2 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %1, align 8, !tbaa !24
  %cmp = icmp eq %struct.evp_md_ctx_st* %2, null
  br i1 %cmp, label %berr, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef nonnull %2) #7
  %call3 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %call2) #7
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %berr, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef nonnull %2) #7
  %buf_len = bitcast i8* %call to i64*
  %3 = load i64, i64* %buf_len, align 8, !tbaa !11
  %buf_off = getelementptr inbounds i8, i8* %call, i64 8
  %4 = bitcast i8* %buf_off to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !12
  %sub = sub i64 %3, %5
  %conv = trunc i64 %sub to i32
  %mul = shl nuw nsw i32 %call3, 1
  %cmp8 = icmp sgt i32 %mul, %conv
  br i1 %cmp8, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end6
  %call12 = tail call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %2, %struct.evp_md_st* noundef %call2, %struct.engine_st* noundef null) #7
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %berr, label %if.end14

if.end14:                                         ; preds = %if.end11
  %buf = getelementptr inbounds i8, i8* %call, i64 56
  %6 = load i64, i64* %4, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i8, i8* %buf, i64 %6
  %conv16110 = zext i32 %call3 to i64
  %call17 = tail call i8* @memcpy(i8* noundef %call7, i8* noundef nonnull %arrayidx, i64 noundef %conv16110) #7
  tail call fastcc void @longswap(i8* noundef %call7, i64 noundef %conv16110) #8
  %7 = load i64, i64* %4, align 8, !tbaa !12
  %add = add i64 %7, %conv16110
  store i64 %add, i64* %4, align 8, !tbaa !12
  %call21 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0)) #9
  %call22 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %2, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 noundef %call21) #7
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %berr, label %if.end25

if.end25:                                         ; preds = %if.end14
  %call26 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %2, i8* noundef nonnull %0, i32* noundef null) #7
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %berr, label %if.end29

if.end29:                                         ; preds = %if.end25
  %8 = load i64, i64* %4, align 8, !tbaa !12
  %arrayidx32 = getelementptr inbounds i8, i8* %buf, i64 %8
  %call35 = call i32 @memcmp(i8* noundef nonnull %arrayidx32, i8* noundef nonnull %0, i64 noundef %conv16110) #9
  %cmp36 = icmp eq i32 %call35, 0
  %add40 = add i64 %8, %conv16110
  store i64 %add40, i64* %4, align 8, !tbaa !12
  br i1 %cmp36, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.end29
  %sigio = getelementptr inbounds i8, i8* %call, i64 52
  %9 = bitcast i8* %sigio to i32*
  store i32 0, i32* %9, align 4, !tbaa !4
  %10 = load i64, i64* %buf_len, align 8, !tbaa !11
  %cmp46.not = icmp eq i64 %10, %add40
  br i1 %cmp46.not, label %if.end58, label %if.then48

if.then48:                                        ; preds = %if.then43
  %arrayidx53 = getelementptr inbounds i8, i8* %buf, i64 %add40
  %sub56 = sub i64 %10, %add40
  %call57 = call i8* @memmove(i8* noundef nonnull %buf, i8* noundef nonnull %arrayidx53, i64 noundef %sub56) #7
  %.pre = load i64, i64* %4, align 8, !tbaa !12
  %.pre111 = load i64, i64* %buf_len, align 8, !tbaa !11
  br label %if.end58

if.end58:                                         ; preds = %if.then48, %if.then43
  %11 = phi i64 [ %.pre111, %if.then48 ], [ %add40, %if.then43 ]
  %12 = phi i64 [ %.pre, %if.then48 ], [ %add40, %if.then43 ]
  %sub61 = sub i64 %11, %12
  store i64 %sub61, i64* %buf_len, align 8, !tbaa !11
  store i64 0, i64* %4, align 8, !tbaa !12
  br label %cleanup

if.else:                                          ; preds = %if.end29
  %cont = getelementptr inbounds i8, i8* %call, i64 32
  %13 = bitcast i8* %cont to i32*
  store i32 0, i32* %13, align 8, !tbaa !14
  br label %cleanup

berr:                                             ; preds = %if.end25, %if.end14, %if.end11, %if.end, %entry
  call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.else, %if.end6, %berr
  %retval.0 = phi i32 [ 0, %berr ], [ 1, %if.end6 ], [ 1, %if.else ], [ 1, %if.end58 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @block_in(%struct.bio_st* noundef %b) unnamed_addr #2 {
entry:
  %tmp = alloca [64 x i8], align 16
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #10
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #7
  %md1 = getelementptr inbounds i8, i8* %call, i64 40
  %1 = bitcast i8* %md1 to %struct.evp_md_ctx_st**
  %2 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %1, align 8, !tbaa !24
  %call2 = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %2) #7
  %call3 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %call2) #7
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %berr, label %if.end

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds i8, i8* %call, i64 56
  %3 = load i8, i8* %buf, align 8, !tbaa !26
  %conv = zext i8 %3 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %call, i64 57
  %4 = load i8, i8* %arrayidx5, align 1, !tbaa !26
  %conv6 = zext i8 %4 to i64
  %5 = shl nuw nsw i64 %conv, 16
  %6 = shl nuw nsw i64 %conv6, 8
  %shl7 = or i64 %6, %5
  %arrayidx9 = getelementptr inbounds i8, i8* %call, i64 58
  %7 = load i8, i8* %arrayidx9, align 2, !tbaa !26
  %conv10 = zext i8 %7 to i64
  %or11 = or i64 %shl7, %conv10
  %shl12 = shl nuw nsw i64 %or11, 8
  %arrayidx14 = getelementptr inbounds i8, i8* %call, i64 59
  %8 = load i8, i8* %arrayidx14, align 1, !tbaa !26
  %conv15 = zext i8 %8 to i64
  %or16 = or i64 %shl12, %conv15
  %buf_len = bitcast i8* %call to i64*
  %9 = load i64, i64* %buf_len, align 8, !tbaa !11
  %add = add nuw nsw i64 %or16, 4
  %conv1786 = zext i32 %call3 to i64
  %add18 = add i64 %add, %conv1786
  %cmp19 = icmp ult i64 %9, %add18
  br i1 %cmp19, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end
  %arrayidx24 = getelementptr inbounds i8, i8* %call, i64 60
  %call25 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %2, i8* noundef nonnull %arrayidx24, i64 noundef %or16) #7
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %berr, label %if.end27

if.end27:                                         ; preds = %if.end22
  %call28 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %2, i8* noundef nonnull %0, i32* noundef null) #7
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %berr, label %if.end31

if.end31:                                         ; preds = %if.end27
  %arrayidx34 = getelementptr inbounds i8, i8* %buf, i64 %add
  %call37 = call i32 @memcmp(i8* noundef nonnull %arrayidx34, i8* noundef nonnull %0, i64 noundef %conv1786) #9
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end31
  %buf_off_save = getelementptr inbounds i8, i8* %call, i64 24
  %10 = bitcast i8* %buf_off_save to i64*
  store i64 %add18, i64* %10, align 8, !tbaa !20
  %11 = load i64, i64* %buf_len, align 8, !tbaa !11
  %buf_len_save = getelementptr inbounds i8, i8* %call, i64 16
  %12 = bitcast i8* %buf_len_save to i64*
  store i64 %11, i64* %12, align 8, !tbaa !19
  %buf_off = getelementptr inbounds i8, i8* %call, i64 8
  %13 = bitcast i8* %buf_off to i64*
  store i64 4, i64* %13, align 8, !tbaa !12
  store i64 %add, i64* %buf_len, align 8, !tbaa !11
  %blockout = getelementptr inbounds i8, i8* %call, i64 48
  %14 = bitcast i8* %blockout to i32*
  store i32 1, i32* %14, align 8, !tbaa !13
  br label %cleanup

if.else:                                          ; preds = %if.end31
  %cont = getelementptr inbounds i8, i8* %call, i64 32
  %15 = bitcast i8* %cont to i32*
  store i32 0, i32* %15, align 8, !tbaa !14
  br label %cleanup

berr:                                             ; preds = %if.end27, %if.end22, %entry
  call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.else, %if.end, %berr
  %retval.0 = phi i32 [ 0, %berr ], [ 1, %if.end ], [ 1, %if.else ], [ 1, %if.then40 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare void @BIO_set_init(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @BIO_set_data(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #1

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i64 @BIO_callback_ctrl(%struct.bio_st* noundef, i32 noundef, i32 (%struct.bio_st*, i32, i32)* noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 52}
!5 = !{!"ok_struct", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !9, i64 32, !9, i64 36, !10, i64 40, !9, i64 48, !9, i64 52, !7, i64 56}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!5, !6, i64 0}
!12 = !{!5, !6, i64 8}
!13 = !{!5, !9, i64 48}
!14 = !{!5, !9, i64 32}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!6, !6, i64 0}
!18 = distinct !{!18, !16}
!19 = !{!5, !6, i64 16}
!20 = !{!5, !6, i64 24}
!21 = distinct !{!21, !16}
!22 = !{!5, !9, i64 36}
!23 = distinct !{!23, !16}
!24 = !{!5, !10, i64 40}
!25 = !{!10, !10, i64 0}
!26 = !{!7, !7, i64 0}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.unroll.disable"}
