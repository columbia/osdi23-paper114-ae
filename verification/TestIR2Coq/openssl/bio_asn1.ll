; ModuleID = 'crypto/asn1/bio_asn1.c'
source_filename = "crypto/asn1/bio_asn1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.bio_st = type opaque
%struct.BIO_ASN1_EX_FUNCS_st = type { i32 (%struct.bio_st*, i8**, i32*, i8*)*, i32 (%struct.bio_st*, i8**, i32*, i8*)* }
%struct.BIO_ASN1_BUF_CTX_t = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32 (%struct.bio_st*, i8**, i32*, i8*)*, i32 (%struct.bio_st*, i8**, i32*, i8*)*, i32 (%struct.bio_st*, i8**, i32*, i8*)*, i32 (%struct.bio_st*, i8**, i32*, i8*)*, i8*, i32, i32, i8* }

@methods_asn1 = internal constant %struct.bio_method_st { i32 534, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (%struct.bio_st*, i8*, i64, i64*)* @bwrite_conv, i32 (%struct.bio_st*, i8*, i32)* @asn1_bio_write, i32 (%struct.bio_st*, i8*, i64, i64*)* @bread_conv, i32 (%struct.bio_st*, i8*, i32)* @asn1_bio_read, i32 (%struct.bio_st*, i8*)* @asn1_bio_puts, i32 (%struct.bio_st*, i8*, i32)* @asn1_bio_gets, i64 (%struct.bio_st*, i32, i64, i8*)* @asn1_bio_ctrl, i32 (%struct.bio_st*)* @asn1_bio_new, i32 (%struct.bio_st*)* @asn1_bio_free, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* @asn1_bio_callback_ctrl }, align 8
@.str = private unnamed_addr constant [5 x i8] c"asn1\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"crypto/asn1/bio_asn1.c\00", align 1
@__func__.asn1_bio_new = private unnamed_addr constant [13 x i8] c"asn1_bio_new\00", align 1
@__func__.asn1_bio_init = private unnamed_addr constant [14 x i8] c"asn1_bio_init\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bio_method_st* @BIO_f_asn1() local_unnamed_addr #0 {
entry:
  ret %struct.bio_method_st* @methods_asn1
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_asn1_set_prefix(%struct.bio_st* noundef %b, i32 (%struct.bio_st*, i8**, i32*, i8*)* noundef %prefix, i32 (%struct.bio_st*, i8**, i32*, i8*)* noundef %prefix_free) local_unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @asn1_bio_set_ex(%struct.bio_st* noundef %b, i32 noundef 149, i32 (%struct.bio_st*, i8**, i32*, i8*)* noundef %prefix, i32 (%struct.bio_st*, i8**, i32*, i8*)* noundef %prefix_free) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_bio_set_ex(%struct.bio_st* noundef %b, i32 noundef %cmd, i32 (%struct.bio_st*, i8**, i32*, i8*)* noundef %ex_func, i32 (%struct.bio_st*, i8**, i32*, i8*)* noundef %ex_free_func) unnamed_addr #1 {
entry:
  %extmp = alloca %struct.BIO_ASN1_EX_FUNCS_st, align 8
  %0 = bitcast %struct.BIO_ASN1_EX_FUNCS_st* %extmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #6
  %ex_func1 = getelementptr inbounds %struct.BIO_ASN1_EX_FUNCS_st, %struct.BIO_ASN1_EX_FUNCS_st* %extmp, i64 0, i32 0
  store i32 (%struct.bio_st*, i8**, i32*, i8*)* %ex_func, i32 (%struct.bio_st*, i8**, i32*, i8*)** %ex_func1, align 8, !tbaa !4
  %ex_free_func2 = getelementptr inbounds %struct.BIO_ASN1_EX_FUNCS_st, %struct.BIO_ASN1_EX_FUNCS_st* %extmp, i64 0, i32 1
  store i32 (%struct.bio_st*, i8**, i32*, i8*)* %ex_free_func, i32 (%struct.bio_st*, i8**, i32*, i8*)** %ex_free_func2, align 8, !tbaa !9
  %call = call i64 @BIO_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i64 noundef 0, i8* noundef nonnull %0) #7
  %conv = trunc i64 %call to i32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #6
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_asn1_get_prefix(%struct.bio_st* noundef %b, i32 (%struct.bio_st*, i8**, i32*, i8*)** nocapture noundef writeonly %pprefix, i32 (%struct.bio_st*, i8**, i32*, i8*)** nocapture noundef writeonly %pprefix_free) local_unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @asn1_bio_get_ex(%struct.bio_st* noundef %b, i32 noundef 150, i32 (%struct.bio_st*, i8**, i32*, i8*)** noundef %pprefix, i32 (%struct.bio_st*, i8**, i32*, i8*)** noundef %pprefix_free) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_bio_get_ex(%struct.bio_st* noundef %b, i32 noundef %cmd, i32 (%struct.bio_st*, i8**, i32*, i8*)** nocapture noundef writeonly %ex_func, i32 (%struct.bio_st*, i8**, i32*, i8*)** nocapture noundef writeonly %ex_free_func) unnamed_addr #1 {
entry:
  %extmp = alloca %struct.BIO_ASN1_EX_FUNCS_st, align 8
  %0 = bitcast %struct.BIO_ASN1_EX_FUNCS_st* %extmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #6
  %call = call i64 @BIO_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i64 noundef 0, i8* noundef nonnull %0) #7
  %conv = trunc i64 %call to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %ex_func2 = getelementptr inbounds %struct.BIO_ASN1_EX_FUNCS_st, %struct.BIO_ASN1_EX_FUNCS_st* %extmp, i64 0, i32 0
  %1 = load i32 (%struct.bio_st*, i8**, i32*, i8*)*, i32 (%struct.bio_st*, i8**, i32*, i8*)** %ex_func2, align 8, !tbaa !4
  store i32 (%struct.bio_st*, i8**, i32*, i8*)* %1, i32 (%struct.bio_st*, i8**, i32*, i8*)** %ex_func, align 8, !tbaa !10
  %ex_free_func3 = getelementptr inbounds %struct.BIO_ASN1_EX_FUNCS_st, %struct.BIO_ASN1_EX_FUNCS_st* %extmp, i64 0, i32 1
  %2 = load i32 (%struct.bio_st*, i8**, i32*, i8*)*, i32 (%struct.bio_st*, i8**, i32*, i8*)** %ex_free_func3, align 8, !tbaa !9
  store i32 (%struct.bio_st*, i8**, i32*, i8*)* %2, i32 (%struct.bio_st*, i8**, i32*, i8*)** %ex_free_func, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #6
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_asn1_set_suffix(%struct.bio_st* noundef %b, i32 (%struct.bio_st*, i8**, i32*, i8*)* noundef %suffix, i32 (%struct.bio_st*, i8**, i32*, i8*)* noundef %suffix_free) local_unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @asn1_bio_set_ex(%struct.bio_st* noundef %b, i32 noundef 151, i32 (%struct.bio_st*, i8**, i32*, i8*)* noundef %suffix, i32 (%struct.bio_st*, i8**, i32*, i8*)* noundef %suffix_free) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_asn1_get_suffix(%struct.bio_st* noundef %b, i32 (%struct.bio_st*, i8**, i32*, i8*)** nocapture noundef writeonly %psuffix, i32 (%struct.bio_st*, i8**, i32*, i8*)** nocapture noundef writeonly %psuffix_free) local_unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @asn1_bio_get_ex(%struct.bio_st* noundef %b, i32 noundef 152, i32 (%struct.bio_st*, i8**, i32*, i8*)** noundef %psuffix, i32 (%struct.bio_st*, i8**, i32*, i8*)** noundef %psuffix_free) #5
  ret i32 %call
}

declare i32 @bwrite_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @asn1_bio_write(%struct.bio_st* noundef %b, i8* noundef %in, i32 noundef %inl) #1 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #7
  %1 = bitcast i8* %call to %struct.BIO_ASN1_BUF_CTX_t*
  %call1 = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #7
  %cmp = icmp eq i8* %in, null
  %cmp2 = icmp slt i32 %inl, 0
  %or.cond = or i1 %cmp, %cmp2
  %cmp4 = icmp eq i8* %call, null
  %or.cond79 = select i1 %or.cond, i1 true, i1 %cmp4
  %cmp6 = icmp eq %struct.bio_st* %call1, null
  %or.cond80 = select i1 %or.cond79, i1 true, i1 %cmp6
  br i1 %or.cond80, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %state = bitcast i8* %call to i32*
  %copylen43 = getelementptr inbounds i8, i8* %call, i64 28
  %2 = bitcast i8* %copylen43 to i32*
  %buf26 = getelementptr inbounds i8, i8* %call, i64 8
  %3 = bitcast i8* %buf26 to i8**
  %bufpos = getelementptr inbounds i8, i8* %call, i64 20
  %4 = bitcast i8* %bufpos to i32*
  %buflen27 = getelementptr inbounds i8, i8* %call, i64 24
  %5 = bitcast i8* %buflen27 to i32*
  %asn1_tag = getelementptr inbounds i8, i8* %call, i64 36
  %6 = bitcast i8* %asn1_tag to i32*
  %bufsize = getelementptr inbounds i8, i8* %call, i64 16
  %7 = bitcast i8* %bufsize to i32*
  %asn1_class = getelementptr inbounds i8, i8* %call, i64 32
  %8 = bitcast i8* %asn1_class to i32*
  %prefix_free = getelementptr inbounds i8, i8* %call, i64 48
  %9 = bitcast i8* %prefix_free to i32 (%struct.bio_st*, i8**, i32*, i8*)**
  %prefix = getelementptr inbounds i8, i8* %call, i64 40
  %10 = bitcast i8* %prefix to i32 (%struct.bio_st*, i8**, i32*, i8*)**
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.end66, %for.cond.preheader
  %inl.addr.0.ph = phi i32 [ %sub60, %if.end66 ], [ %inl, %for.cond.preheader ]
  %in.addr.0.ph = phi i8* [ %add.ptr59, %if.end66 ], [ %in, %for.cond.preheader ]
  %wrlen.0.ph = phi i32 [ %add55, %if.end66 ], [ 0, %for.cond.preheader ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.outer
  %11 = load i32, i32* %state, align 8, !tbaa !11
  switch i32 %11, label %for.cond.backedge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb15
    i32 3, label %sw.bb25
    i32 4, label %sw.bb42
    i32 5, label %sw.bb71
    i32 6, label %sw.bb71
  ]

sw.bb:                                            ; preds = %for.cond
  %12 = load i32 (%struct.bio_st*, i8**, i32*, i8*)*, i32 (%struct.bio_st*, i8**, i32*, i8*)** %10, align 8, !tbaa !14
  %call7 = call fastcc i32 @asn1_bio_setup_ex(%struct.bio_st* noundef %b, %struct.BIO_ASN1_BUF_CTX_t* noundef nonnull %1, i32 (%struct.bio_st*, i8**, i32*, i8*)* noundef %12, i32 noundef 1, i32 noundef 2) #5
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %cleanup, label %for.cond.backedge

sw.bb10:                                          ; preds = %for.cond
  %13 = load i32 (%struct.bio_st*, i8**, i32*, i8*)*, i32 (%struct.bio_st*, i8**, i32*, i8*)** %9, align 8, !tbaa !15
  %call11 = call fastcc i32 @asn1_bio_flush_ex(%struct.bio_st* noundef %b, %struct.BIO_ASN1_BUF_CTX_t* noundef nonnull %1, i32 (%struct.bio_st*, i8**, i32*, i8*)* noundef %13, i32 noundef 2) #5
  %cmp12 = icmp slt i32 %call11, 1
  br i1 %cmp12, label %done, label %for.cond.backedge

sw.bb15:                                          ; preds = %for.cond
  %14 = load i32, i32* %6, align 4, !tbaa !16
  %call16 = call i32 @ASN1_object_size(i32 noundef 0, i32 noundef %inl.addr.0.ph, i32 noundef %14) #7
  %sub = sub nsw i32 %call16, %inl.addr.0.ph
  store i32 %sub, i32* %5, align 8, !tbaa !17
  %15 = load i32, i32* %7, align 8, !tbaa !18
  %cmp18.not = icmp sgt i32 %sub, %15
  br i1 %cmp18.not, label %cleanup, label %if.end22

if.end22:                                         ; preds = %sw.bb15
  %16 = load i8*, i8** %3, align 8, !tbaa !19
  store i8* %16, i8** %p, align 8, !tbaa !10
  %17 = load i32, i32* %6, align 4, !tbaa !16
  %18 = load i32, i32* %8, align 8, !tbaa !20
  call void @ASN1_put_object(i8** noundef nonnull %p, i32 noundef 0, i32 noundef %inl.addr.0.ph, i32 noundef %17, i32 noundef %18) #7
  store i32 %inl.addr.0.ph, i32* %2, align 4, !tbaa !21
  store i32 3, i32* %state, align 8, !tbaa !11
  br label %for.cond.backedge

sw.bb25:                                          ; preds = %for.cond
  %19 = load i8*, i8** %3, align 8, !tbaa !19
  %20 = load i32, i32* %4, align 4, !tbaa !22
  %idx.ext = sext i32 %20 to i64
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  %21 = load i32, i32* %5, align 8, !tbaa !17
  %call28 = call i32 @BIO_write(%struct.bio_st* noundef %call1, i8* noundef %add.ptr, i32 noundef %21) #7
  %cmp29 = icmp slt i32 %call28, 1
  br i1 %cmp29, label %done, label %if.end32

if.end32:                                         ; preds = %sw.bb25
  %22 = load i32, i32* %5, align 8, !tbaa !17
  %sub34 = sub nsw i32 %22, %call28
  store i32 %sub34, i32* %5, align 8, !tbaa !17
  %tobool36.not = icmp eq i32 %sub34, 0
  br i1 %tobool36.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.end32
  %23 = load i32, i32* %4, align 4, !tbaa !22
  %add = add nsw i32 %23, %call28
  store i32 %add, i32* %4, align 4, !tbaa !22
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then37, %if.else, %sw.bb10, %sw.bb, %for.cond, %if.end22
  br label %for.cond

if.else:                                          ; preds = %if.end32
  store i32 0, i32* %4, align 4, !tbaa !22
  store i32 4, i32* %state, align 8, !tbaa !11
  br label %for.cond.backedge

sw.bb42:                                          ; preds = %for.cond
  %24 = load i32, i32* %2, align 4, !tbaa !21
  %cmp44 = icmp sgt i32 %inl.addr.0.ph, %24
  %.inl.addr.0 = select i1 %cmp44, i32 %24, i32 %inl.addr.0.ph
  %call50 = call i32 @BIO_write(%struct.bio_st* noundef %call1, i8* noundef %in.addr.0.ph, i32 noundef %.inl.addr.0) #7
  %cmp51 = icmp slt i32 %call50, 1
  br i1 %cmp51, label %done, label %if.end54

if.end54:                                         ; preds = %sw.bb42
  %add55 = add nsw i32 %call50, %wrlen.0.ph
  %25 = load i32, i32* %2, align 4, !tbaa !21
  %sub57 = sub nsw i32 %25, %call50
  store i32 %sub57, i32* %2, align 4, !tbaa !21
  %idx.ext58143 = zext i32 %call50 to i64
  %add.ptr59 = getelementptr inbounds i8, i8* %in.addr.0.ph, i64 %idx.ext58143
  %sub60 = sub nsw i32 %inl.addr.0.ph, %call50
  %cmp62 = icmp eq i32 %sub57, 0
  br i1 %cmp62, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.end54
  store i32 2, i32* %state, align 8, !tbaa !11
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end54
  %cmp67 = icmp eq i32 %sub60, 0
  br i1 %cmp67, label %done, label %for.cond.outer

sw.bb71:                                          ; preds = %for.cond, %for.cond
  call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #7
  br label %cleanup

done:                                             ; preds = %if.end66, %sw.bb42, %sw.bb25, %sw.bb10
  %wrlen.2 = phi i32 [ %wrlen.0.ph, %sw.bb10 ], [ %wrlen.0.ph, %sw.bb25 ], [ %add55, %if.end66 ], [ %wrlen.0.ph, %sw.bb42 ]
  %ret.0 = phi i32 [ %call11, %sw.bb10 ], [ %call28, %sw.bb25 ], [ %call50, %sw.bb42 ], [ %call50, %if.end66 ]
  call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #7
  call void @BIO_copy_next_retry(%struct.bio_st* noundef %b) #7
  %cmp72 = icmp sgt i32 %wrlen.2, 0
  %cond = select i1 %cmp72, i32 %wrlen.2, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %sw.bb15, %sw.bb, %entry, %done, %sw.bb71
  %retval.0 = phi i32 [ 0, %sw.bb71 ], [ %cond, %done ], [ 0, %entry ], [ 0, %sw.bb ], [ 0, %sw.bb15 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

declare i32 @bread_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @asn1_bio_read(%struct.bio_st* noundef %b, i8* noundef %in, i32 noundef %inl) #1 {
entry:
  %call = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #7
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @BIO_read(%struct.bio_st* noundef nonnull %call, i8* noundef %in, i32 noundef %inl) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @asn1_bio_puts(%struct.bio_st* noundef %b, i8* noundef %str) #1 {
entry:
  %call = tail call i64 @strlen(i8* noundef %str) #8
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 @asn1_bio_write(%struct.bio_st* noundef %b, i8* noundef %str, i32 noundef %conv) #5
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @asn1_bio_gets(%struct.bio_st* noundef %b, i8* noundef %str, i32 noundef %size) #1 {
entry:
  %call = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #7
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @BIO_gets(%struct.bio_st* noundef nonnull %call, i8* noundef %str, i32 noundef %size) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @asn1_bio_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i64 noundef %arg1, i8* noundef %arg2) #1 {
entry:
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #7
  %0 = bitcast i8* %call to %struct.BIO_ASN1_BUF_CTX_t*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #7
  switch i32 %cmd, label %sw.default [
    i32 149, label %sw.bb
    i32 150, label %sw.bb3
    i32 151, label %sw.bb8
    i32 152, label %sw.bb11
    i32 153, label %sw.bb16
    i32 154, label %sw.bb17
    i32 11, label %sw.bb19
  ]

sw.bb:                                            ; preds = %if.end
  %prefix = getelementptr inbounds i8, i8* %call, i64 40
  %1 = bitcast i8* %arg2 to <2 x i32 (%struct.bio_st*, i8**, i32*, i8*)*>*
  %2 = load <2 x i32 (%struct.bio_st*, i8**, i32*, i8*)*>, <2 x i32 (%struct.bio_st*, i8**, i32*, i8*)*>* %1, align 8, !tbaa !10
  %3 = bitcast i8* %prefix to <2 x i32 (%struct.bio_st*, i8**, i32*, i8*)*>*
  store <2 x i32 (%struct.bio_st*, i8**, i32*, i8*)*> %2, <2 x i32 (%struct.bio_st*, i8**, i32*, i8*)*>* %3, align 8, !tbaa !10
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  %prefix4 = getelementptr inbounds i8, i8* %call, i64 40
  %4 = bitcast i8* %prefix4 to <2 x i32 (%struct.bio_st*, i8**, i32*, i8*)*>*
  %5 = load <2 x i32 (%struct.bio_st*, i8**, i32*, i8*)*>, <2 x i32 (%struct.bio_st*, i8**, i32*, i8*)*>* %4, align 8, !tbaa !10
  %6 = bitcast i8* %arg2 to <2 x i32 (%struct.bio_st*, i8**, i32*, i8*)*>*
  store <2 x i32 (%struct.bio_st*, i8**, i32*, i8*)*> %5, <2 x i32 (%struct.bio_st*, i8**, i32*, i8*)*>* %6, align 8, !tbaa !10
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  %suffix = getelementptr inbounds i8, i8* %call, i64 56
  %7 = bitcast i8* %arg2 to <2 x i32 (%struct.bio_st*, i8**, i32*, i8*)*>*
  %8 = load <2 x i32 (%struct.bio_st*, i8**, i32*, i8*)*>, <2 x i32 (%struct.bio_st*, i8**, i32*, i8*)*>* %7, align 8, !tbaa !10
  %9 = bitcast i8* %suffix to <2 x i32 (%struct.bio_st*, i8**, i32*, i8*)*>*
  store <2 x i32 (%struct.bio_st*, i8**, i32*, i8*)*> %8, <2 x i32 (%struct.bio_st*, i8**, i32*, i8*)*>* %9, align 8, !tbaa !10
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  %suffix12 = getelementptr inbounds i8, i8* %call, i64 56
  %10 = bitcast i8* %suffix12 to <2 x i32 (%struct.bio_st*, i8**, i32*, i8*)*>*
  %11 = load <2 x i32 (%struct.bio_st*, i8**, i32*, i8*)*>, <2 x i32 (%struct.bio_st*, i8**, i32*, i8*)*>* %10, align 8, !tbaa !10
  %12 = bitcast i8* %arg2 to <2 x i32 (%struct.bio_st*, i8**, i32*, i8*)*>*
  store <2 x i32 (%struct.bio_st*, i8**, i32*, i8*)*> %11, <2 x i32 (%struct.bio_st*, i8**, i32*, i8*)*>* %12, align 8, !tbaa !10
  br label %cleanup

sw.bb16:                                          ; preds = %if.end
  %ex_arg = getelementptr inbounds i8, i8* %call, i64 88
  %13 = bitcast i8* %ex_arg to i8**
  store i8* %arg2, i8** %13, align 8, !tbaa !23
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  %ex_arg18 = getelementptr inbounds i8, i8* %call, i64 88
  %14 = bitcast i8* %ex_arg18 to i8**
  %15 = load i8*, i8** %14, align 8, !tbaa !23
  %16 = bitcast i8* %arg2 to i8**
  store i8* %15, i8** %16, align 8, !tbaa !10
  br label %cleanup

sw.bb19:                                          ; preds = %if.end
  %cmp20 = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp20, label %cleanup, label %if.end22

if.end22:                                         ; preds = %sw.bb19
  %state = bitcast i8* %call to i32*
  %17 = load i32, i32* %state, align 8, !tbaa !11
  %cmp23 = icmp eq i32 %17, 2
  br i1 %cmp23, label %if.then24, label %if.end29

if.then24:                                        ; preds = %if.end22
  %suffix25 = getelementptr inbounds i8, i8* %call, i64 56
  %18 = bitcast i8* %suffix25 to i32 (%struct.bio_st*, i8**, i32*, i8*)**
  %19 = load i32 (%struct.bio_st*, i8**, i32*, i8*)*, i32 (%struct.bio_st*, i8**, i32*, i8*)** %18, align 8, !tbaa !24
  %call26 = tail call fastcc i32 @asn1_bio_setup_ex(%struct.bio_st* noundef %b, %struct.BIO_ASN1_BUF_CTX_t* noundef nonnull %0, i32 (%struct.bio_st*, i8**, i32*, i8*)* noundef %19, i32 noundef 5, i32 noundef 6) #5
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %cleanup, label %if.end29thread-pre-split

if.end29thread-pre-split:                         ; preds = %if.then24
  %.pr = load i32, i32* %state, align 8, !tbaa !11
  br label %if.end29

if.end29:                                         ; preds = %if.end29thread-pre-split, %if.end22
  %20 = phi i32 [ %.pr, %if.end29thread-pre-split ], [ %17, %if.end22 ]
  %cmp31 = icmp eq i32 %20, 5
  br i1 %cmp31, label %if.then32, label %if.end39

if.then32:                                        ; preds = %if.end29
  %suffix_free33 = getelementptr inbounds i8, i8* %call, i64 64
  %21 = bitcast i8* %suffix_free33 to i32 (%struct.bio_st*, i8**, i32*, i8*)**
  %22 = load i32 (%struct.bio_st*, i8**, i32*, i8*)*, i32 (%struct.bio_st*, i8**, i32*, i8*)** %21, align 8, !tbaa !25
  %call34 = tail call fastcc i32 @asn1_bio_flush_ex(%struct.bio_st* noundef %b, %struct.BIO_ASN1_BUF_CTX_t* noundef nonnull %0, i32 (%struct.bio_st*, i8**, i32*, i8*)* noundef %22, i32 noundef 6) #5
  %cmp35 = icmp slt i32 %call34, 1
  br i1 %cmp35, label %if.then37, label %if.then32.if.end39_crit_edge

if.then32.if.end39_crit_edge:                     ; preds = %if.then32
  %.pre = load i32, i32* %state, align 8, !tbaa !11
  br label %if.end39

if.then37:                                        ; preds = %if.then32
  %conv = sext i32 %call34 to i64
  br label %cleanup

if.end39:                                         ; preds = %if.then32.if.end39_crit_edge, %if.end29
  %23 = phi i32 [ %.pre, %if.then32.if.end39_crit_edge ], [ %20, %if.end29 ]
  %cmp41 = icmp eq i32 %23, 6
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.end39
  %call44 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 11, i64 noundef %arg1, i8* noundef %arg2) #7
  br label %cleanup

if.else:                                          ; preds = %if.end39
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #7
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %cmp45 = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp45, label %cleanup, label %if.end48

if.end48:                                         ; preds = %sw.default
  %call49 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef %cmd, i64 noundef %arg1, i8* noundef %arg2) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.bb3, %sw.bb8, %sw.bb11, %sw.bb16, %sw.bb17, %sw.default, %if.then24, %sw.bb19, %entry, %if.end48, %if.else, %if.then43, %if.then37
  %retval.0 = phi i64 [ %call49, %if.end48 ], [ %conv, %if.then37 ], [ %call44, %if.then43 ], [ 0, %if.else ], [ 0, %entry ], [ 0, %sw.bb19 ], [ 0, %if.then24 ], [ 0, %sw.default ], [ 1, %sw.bb17 ], [ 1, %sw.bb16 ], [ 1, %sw.bb11 ], [ 1, %sw.bb8 ], [ 1, %sw.bb3 ], [ 1, %sw.bb ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @asn1_bio_new(%struct.bio_st* noundef %b) #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 96, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 101) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.asn1_bio_new, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.BIO_ASN1_BUF_CTX_t*
  %call1 = tail call fastcc i32 @asn1_bio_init(%struct.BIO_ASN1_BUF_CTX_t* noundef nonnull %0) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 108) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @BIO_set_data(%struct.bio_st* noundef %b, i8* noundef nonnull %call) #7
  tail call void @BIO_set_init(%struct.bio_st* noundef %b, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end3 ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @asn1_bio_free(%struct.bio_st* noundef %b) #1 {
entry:
  %cmp = icmp eq %struct.bio_st* %b, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef nonnull %b) #7
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %prefix_free = getelementptr inbounds i8, i8* %call, i64 48
  %0 = bitcast i8* %prefix_free to i32 (%struct.bio_st*, i8**, i32*, i8*)**
  %1 = load i32 (%struct.bio_st*, i8**, i32*, i8*)*, i32 (%struct.bio_st*, i8**, i32*, i8*)** %0, align 8, !tbaa !15
  %cmp4.not = icmp eq i32 (%struct.bio_st*, i8**, i32*, i8*)* %1, null
  br i1 %cmp4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end3
  %ex_buf = getelementptr inbounds i8, i8* %call, i64 72
  %2 = bitcast i8* %ex_buf to i8**
  %ex_len = getelementptr inbounds i8, i8* %call, i64 80
  %3 = bitcast i8* %ex_len to i32*
  %ex_arg = getelementptr inbounds i8, i8* %call, i64 88
  %call7 = tail call i32 %1(%struct.bio_st* noundef nonnull %b, i8** noundef nonnull %2, i32* noundef nonnull %3, i8* noundef nonnull %ex_arg) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end3
  %suffix_free = getelementptr inbounds i8, i8* %call, i64 64
  %4 = bitcast i8* %suffix_free to i32 (%struct.bio_st*, i8**, i32*, i8*)**
  %5 = load i32 (%struct.bio_st*, i8**, i32*, i8*)*, i32 (%struct.bio_st*, i8**, i32*, i8*)** %4, align 8, !tbaa !25
  %cmp9.not = icmp eq i32 (%struct.bio_st*, i8**, i32*, i8*)* %5, null
  br i1 %cmp9.not, label %if.end16, label %if.then10

if.then10:                                        ; preds = %if.end8
  %ex_buf12 = getelementptr inbounds i8, i8* %call, i64 72
  %6 = bitcast i8* %ex_buf12 to i8**
  %ex_len13 = getelementptr inbounds i8, i8* %call, i64 80
  %7 = bitcast i8* %ex_len13 to i32*
  %ex_arg14 = getelementptr inbounds i8, i8* %call, i64 88
  %call15 = tail call i32 %5(%struct.bio_st* noundef nonnull %b, i8** noundef nonnull %6, i32* noundef nonnull %7, i8* noundef nonnull %ex_arg14) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %if.end8
  %buf = getelementptr inbounds i8, i8* %call, i64 8
  %8 = bitcast i8* %buf to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !19
  tail call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 146) #7
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 147) #7
  tail call void @BIO_set_data(%struct.bio_st* noundef nonnull %b, i8* noundef null) #7
  tail call void @BIO_set_init(%struct.bio_st* noundef nonnull %b, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end16
  %retval.0 = phi i32 [ 1, %if.end16 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @asn1_bio_callback_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i32 (%struct.bio_st*, i32, i32)* noundef %fp) #1 {
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

declare i8* @BIO_get_data(%struct.bio_st* noundef) local_unnamed_addr #2

declare %struct.bio_st* @BIO_next(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_bio_setup_ex(%struct.bio_st* noundef %b, %struct.BIO_ASN1_BUF_CTX_t* noundef %ctx, i32 (%struct.bio_st*, i8**, i32*, i8*)* noundef readonly %setup, i32 noundef %ex_state, i32 noundef %other_state) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i32 (%struct.bio_st*, i8**, i32*, i8*)* %setup, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ex_buf = getelementptr inbounds %struct.BIO_ASN1_BUF_CTX_t, %struct.BIO_ASN1_BUF_CTX_t* %ctx, i64 0, i32 12
  %ex_len = getelementptr inbounds %struct.BIO_ASN1_BUF_CTX_t, %struct.BIO_ASN1_BUF_CTX_t* %ctx, i64 0, i32 13
  %ex_arg = getelementptr inbounds %struct.BIO_ASN1_BUF_CTX_t, %struct.BIO_ASN1_BUF_CTX_t* %ctx, i64 0, i32 15
  %0 = bitcast i8** %ex_arg to i8*
  %call = tail call i32 %setup(%struct.bio_st* noundef %b, i8** noundef nonnull %ex_buf, i32* noundef nonnull %ex_len, i8* noundef nonnull %0) #7
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #7
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %ex_len2 = getelementptr inbounds %struct.BIO_ASN1_BUF_CTX_t, %struct.BIO_ASN1_BUF_CTX_t* %ctx, i64 0, i32 13
  %1 = load i32, i32* %ex_len2, align 8, !tbaa !26
  %cmp = icmp sgt i32 %1, 0
  %state = getelementptr inbounds %struct.BIO_ASN1_BUF_CTX_t, %struct.BIO_ASN1_BUF_CTX_t* %ctx, i64 0, i32 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store i32 %ex_state, i32* %state, align 8, !tbaa !11
  br label %return

if.else:                                          ; preds = %if.end
  store i32 %other_state, i32* %state, align 8, !tbaa !11
  br label %return

return:                                           ; preds = %if.then3, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.else ], [ 1, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_bio_flush_ex(%struct.bio_st* noundef %b, %struct.BIO_ASN1_BUF_CTX_t* noundef %ctx, i32 (%struct.bio_st*, i8**, i32*, i8*)* noundef readonly %cleanup, i32 noundef %next) unnamed_addr #1 {
entry:
  %ex_len = getelementptr inbounds %struct.BIO_ASN1_BUF_CTX_t, %struct.BIO_ASN1_BUF_CTX_t* %ctx, i64 0, i32 13
  %0 = load i32, i32* %ex_len, align 8, !tbaa !26
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %cleanup18, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call39 = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #7
  %ex_buf = getelementptr inbounds %struct.BIO_ASN1_BUF_CTX_t, %struct.BIO_ASN1_BUF_CTX_t* %ctx, i64 0, i32 12
  %1 = load i8*, i8** %ex_buf, align 8, !tbaa !27
  %ex_pos = getelementptr inbounds %struct.BIO_ASN1_BUF_CTX_t, %struct.BIO_ASN1_BUF_CTX_t* %ctx, i64 0, i32 14
  %2 = load i32, i32* %ex_pos, align 4, !tbaa !28
  %idx.ext40 = sext i32 %2 to i64
  %add.ptr41 = getelementptr inbounds i8, i8* %1, i64 %idx.ext40
  %3 = load i32, i32* %ex_len, align 8, !tbaa !26
  %call242 = tail call i32 @BIO_write(%struct.bio_st* noundef %call39, i8* noundef %add.ptr41, i32 noundef %3) #7
  %cmp343 = icmp slt i32 %call242, 1
  br i1 %cmp343, label %cleanup18, label %if.end5

if.end5:                                          ; preds = %for.cond.preheader, %if.then9
  %call244 = phi i32 [ %call2, %if.then9 ], [ %call242, %for.cond.preheader ]
  %4 = load i32, i32* %ex_len, align 8, !tbaa !26
  %sub = sub nsw i32 %4, %call244
  store i32 %sub, i32* %ex_len, align 8, !tbaa !26
  %cmp8 = icmp sgt i32 %sub, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end5
  %5 = load i32, i32* %ex_pos, align 4, !tbaa !28
  %add = add nsw i32 %5, %call244
  store i32 %add, i32* %ex_pos, align 4, !tbaa !28
  %call = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #7
  %6 = load i8*, i8** %ex_buf, align 8, !tbaa !27
  %7 = load i32, i32* %ex_pos, align 4, !tbaa !28
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %8 = load i32, i32* %ex_len, align 8, !tbaa !26
  %call2 = tail call i32 @BIO_write(%struct.bio_st* noundef %call, i8* noundef %add.ptr, i32 noundef %8) #7
  %cmp3 = icmp slt i32 %call2, 1
  br i1 %cmp3, label %cleanup18, label %if.end5

if.else:                                          ; preds = %if.end5
  %tobool.not = icmp eq i32 (%struct.bio_st*, i8**, i32*, i8*)* %cleanup, null
  br i1 %tobool.not, label %if.end15, label %if.then11

if.then11:                                        ; preds = %if.else
  %ex_arg = getelementptr inbounds %struct.BIO_ASN1_BUF_CTX_t, %struct.BIO_ASN1_BUF_CTX_t* %ctx, i64 0, i32 15
  %9 = bitcast i8** %ex_arg to i8*
  %call14 = tail call i32 %cleanup(%struct.bio_st* noundef %b, i8** noundef nonnull %ex_buf, i32* noundef nonnull %ex_len, i8* noundef nonnull %9) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.else
  %state = getelementptr inbounds %struct.BIO_ASN1_BUF_CTX_t, %struct.BIO_ASN1_BUF_CTX_t* %ctx, i64 0, i32 0
  store i32 %next, i32* %state, align 8, !tbaa !11
  store i32 0, i32* %ex_pos, align 4, !tbaa !28
  br label %cleanup18

cleanup18:                                        ; preds = %if.then9, %for.cond.preheader, %if.end15, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %call244, %if.end15 ], [ %call242, %for.cond.preheader ], [ %call2, %if.then9 ]
  ret i32 %retval.0
}

declare i32 @ASN1_object_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ASN1_put_object(i8** noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @BIO_copy_next_retry(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

declare i32 @BIO_gets(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_bio_init(%struct.BIO_ASN1_BUF_CTX_t* nocapture noundef writeonly %ctx) unnamed_addr #1 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 20, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 119) #7
  %buf = getelementptr inbounds %struct.BIO_ASN1_BUF_CTX_t, %struct.BIO_ASN1_BUF_CTX_t* %ctx, i64 0, i32 1
  store i8* %call, i8** %buf, align 8, !tbaa !19
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.asn1_bio_init, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #7
  br label %return

if.end:                                           ; preds = %entry
  %bufsize = getelementptr inbounds %struct.BIO_ASN1_BUF_CTX_t, %struct.BIO_ASN1_BUF_CTX_t* %ctx, i64 0, i32 2
  store i32 20, i32* %bufsize, align 8, !tbaa !18
  %asn1_class = getelementptr inbounds %struct.BIO_ASN1_BUF_CTX_t, %struct.BIO_ASN1_BUF_CTX_t* %ctx, i64 0, i32 6
  store i32 0, i32* %asn1_class, align 8, !tbaa !20
  %asn1_tag = getelementptr inbounds %struct.BIO_ASN1_BUF_CTX_t, %struct.BIO_ASN1_BUF_CTX_t* %ctx, i64 0, i32 7
  store i32 4, i32* %asn1_tag, align 4, !tbaa !16
  %state = getelementptr inbounds %struct.BIO_ASN1_BUF_CTX_t, %struct.BIO_ASN1_BUF_CTX_t* %ctx, i64 0, i32 0
  store i32 0, i32* %state, align 8, !tbaa !11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @BIO_set_data(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @BIO_set_init(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i64 @BIO_callback_ctrl(%struct.bio_st* noundef, i32 noundef, i32 (%struct.bio_st*, i32, i32)* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"BIO_ASN1_EX_FUNCS_st", !6, i64 0, !6, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 8}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !7, i64 0}
!12 = !{!"BIO_ASN1_BUF_CTX_t", !7, i64 0, !6, i64 8, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !13, i64 80, !13, i64 84, !6, i64 88}
!13 = !{!"int", !7, i64 0}
!14 = !{!12, !6, i64 40}
!15 = !{!12, !6, i64 48}
!16 = !{!12, !13, i64 36}
!17 = !{!12, !13, i64 24}
!18 = !{!12, !13, i64 16}
!19 = !{!12, !6, i64 8}
!20 = !{!12, !13, i64 32}
!21 = !{!12, !13, i64 28}
!22 = !{!12, !13, i64 20}
!23 = !{!12, !6, i64 88}
!24 = !{!12, !6, i64 56}
!25 = !{!12, !6, i64 64}
!26 = !{!12, !13, i64 80}
!27 = !{!12, !6, i64 72}
!28 = !{!12, !13, i64 84}
