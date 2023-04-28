; ModuleID = 'crypto/err/err_prn.c'
source_filename = "crypto/err/err_prn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"<null>\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c":%s:%d:%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"crypto/err/err_prn.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @ERR_print_errors_cb(i32 (i8*, i64, i8*)* nocapture noundef readonly %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %tid = alloca i64, align 8
  %file = alloca i8*, align 8
  %data = alloca i8*, align 8
  %func = alloca i8*, align 8
  %line = alloca i32, align 4
  %flags = alloca i32, align 4
  %buf = alloca [4096 x i8], align 16
  %0 = bitcast i64* %tid to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %call = tail call i64 @CRYPTO_THREAD_get_current_id() #7
  store i64 %call, i64* %tid, align 8, !tbaa !4
  %1 = bitcast i8** %file to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %2 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  %3 = bitcast i8** %func to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  %4 = bitcast i32* %line to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #6
  %5 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #6
  %6 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i64 0, i64 0
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call1 = call i64 @ERR_get_error_all(i8** noundef nonnull %file, i32* noundef nonnull %line, i8** noundef nonnull %func, i8** noundef nonnull %data, i32* noundef nonnull %flags) #7
  %cmp.not = icmp eq i64 %call1, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %6) #6
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(4096) %6, i8 0, i64 4096, i1 false)
  %7 = load i32, i32* %flags, align 4, !tbaa !8
  %and = and i32 %7, 2
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %data, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %call3 = call i8* @ossl_buf2hexstr_sep(i8* noundef nonnull %0, i64 noundef 8, i8 noundef signext 0) #7
  %cmp4 = icmp eq i8* %call3, null
  %cond = select i1 %cmp4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %call3
  %call5 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %6, i64 noundef 4096, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* noundef %cond) #7
  %call7 = call i64 @strlen(i8* noundef nonnull %6) #8
  %8 = load i8*, i8** %func, align 8, !tbaa !10
  %sext = shl i64 %call7, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i64 0, i64 %idx.ext
  %sub = sub nsw i64 4096, %idx.ext
  call void @ossl_err_string_int(i64 noundef %call1, i8* noundef %8, i8* noundef nonnull %add.ptr, i64 noundef %sub) #7
  %call13 = call i64 @strlen(i8* noundef nonnull %add.ptr) #8
  %add = add i64 %call13, %call7
  %sext42 = shl i64 %add, 32
  %idx.ext17 = ashr exact i64 %sext42, 32
  %add.ptr18 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i64 0, i64 %idx.ext17
  %sub20 = sub nsw i64 4096, %idx.ext17
  %9 = load i8*, i8** %file, align 8, !tbaa !10
  %10 = load i32, i32* %line, align 4, !tbaa !8
  %11 = load i8*, i8** %data, align 8, !tbaa !10
  %call21 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %add.ptr18, i64 noundef %sub20, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* noundef %9, i32 noundef %10, i8* noundef %11) #7
  call void @CRYPTO_free(i8* noundef %call3, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 noundef 43) #7
  %call24 = call i64 @strlen(i8* noundef nonnull %6) #8
  %call25 = call i32 %cb(i8* noundef nonnull %6, i64 noundef %call24, i8* noundef %u) #7
  %cmp26 = icmp slt i32 %call25, 1
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %6) #6
  br i1 %cmp26, label %while.end, label %while.cond

while.end:                                        ; preds = %if.end, %while.cond
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i64 @CRYPTO_THREAD_get_current_id() local_unnamed_addr #2

declare i64 @ERR_get_error_all(i8** noundef, i32* noundef, i8** noundef, i8** noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare i8* @ossl_buf2hexstr_sep(i8* noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

declare void @ossl_err_string_int(i64 noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @ERR_add_error_txt(i8* noundef %separator, i8* noundef %txt) local_unnamed_addr #0 {
entry:
  %file = alloca i8*, align 8
  %line = alloca i32, align 4
  %func = alloca i8*, align 8
  %data = alloca i8*, align 8
  %flags = alloca i32, align 4
  %0 = bitcast i8** %file to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store i8* null, i8** %file, align 8, !tbaa !10
  %1 = bitcast i32* %line to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #6
  %2 = bitcast i8** %func to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  store i8* null, i8** %func, align 8, !tbaa !10
  %3 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  store i8* null, i8** %data, align 8, !tbaa !10
  %4 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #6
  %call = tail call i64 @ERR_peek_last_error() #7
  %cmp = icmp eq i8* %separator, null
  %spec.store.select = select i1 %cmp, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %separator
  %cmp1 = icmp eq i64 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %entry
  tail call fastcc void @put_error(i32 noundef 1, i8* noundef null, i32 noundef 0, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 noundef 0) #9
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %entry
  %conv71 = trunc i64 %call to i32
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end3
  %txt.addr.0 = phi i8* [ %txt, %if.end3 ], [ %txt.addr.2.ph, %do.cond ]
  %call4 = call i64 @ERR_peek_last_error_all(i8** noundef nonnull %file, i32* noundef nonnull %line, i8** noundef nonnull %func, i8** noundef nonnull %data, i32* noundef nonnull %flags) #7
  %5 = load i32, i32* %flags, align 4, !tbaa !8
  %and = and i32 %5, 2
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %if.then6, label %do.body.if.end7_crit_edge

do.body.if.end7_crit_edge:                        ; preds = %do.body
  %.pre = load i8*, i8** %data, align 8, !tbaa !10
  br label %if.end7

if.then6:                                         ; preds = %do.body
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %data, align 8, !tbaa !10
  br label %if.end7

if.end7:                                          ; preds = %do.body.if.end7_crit_edge, %if.then6
  %6 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %if.then6 ], [ %.pre, %do.body.if.end7_crit_edge ]
  %leading_separator.0 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %if.then6 ], [ %spec.store.select, %do.body.if.end7_crit_edge ]
  %call8 = call i64 @strlen(i8* noundef %6) #8
  %cmp9 = icmp ugt i64 %call8, 3995
  br i1 %cmp9, label %if.end17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end7
  %call10 = call i64 @strlen(i8* noundef %spec.store.select) #8
  %sub = sub nuw nsw i64 3996, %call8
  %cmp11.not = icmp ugt i64 %sub, %call10
  br i1 %cmp11.not, label %if.else, label %if.end17

if.else:                                          ; preds = %lor.lhs.false
  %7 = xor i64 %call10, -1
  %sub16 = add i64 %sub, %7
  br label %if.end17

if.end17:                                         ; preds = %if.end7, %lor.lhs.false, %if.else
  %available_len.0 = phi i64 [ %sub16, %if.else ], [ 0, %lor.lhs.false ], [ 0, %if.end7 ]
  %8 = load i8, i8* %spec.store.select, align 1, !tbaa !12
  %cmp18 = icmp eq i8 %8, 0
  br i1 %cmp18, label %if.then20, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end17
  %sub.ptr.rhs.cast = ptrtoint i8* %txt.addr.0 to i64
  %9 = load i8, i8* %txt.addr.0, align 1, !tbaa !12
  %cmp30.not178 = icmp eq i8 %9, 0
  br i1 %cmp30.not178, label %if.else84, label %while.body

if.then20:                                        ; preds = %if.end17
  %call21 = call i64 @strlen(i8* noundef %txt.addr.0) #8
  %cmp22.not = icmp ugt i64 %call21, %available_len.0
  %add.ptr = getelementptr inbounds i8, i8* %txt.addr.0, i64 %call21
  br i1 %cmp22.not, label %if.end54, label %if.else84

while.body:                                       ; preds = %while.cond.preheader, %if.end46
  %trailing_separator.0182 = phi i32 [ %trailing_separator.1, %if.end46 ], [ 0, %while.cond.preheader ]
  %next.1181 = phi i8* [ %next.2, %if.end46 ], [ %txt.addr.0, %while.cond.preheader ]
  %call34 = call i8* @strstr(i8* noundef nonnull %next.1181, i8* noundef nonnull %spec.store.select) #8
  %cmp35.not = icmp eq i8* %call34, null
  br i1 %cmp35.not, label %if.else43, label %if.then37

if.then37:                                        ; preds = %while.body
  %call38 = call i64 @strlen(i8* noundef nonnull %spec.store.select) #8
  %add.ptr39 = getelementptr inbounds i8, i8* %call34, i64 %call38
  %10 = load i8, i8* %add.ptr39, align 1, !tbaa !12
  %cmp41 = icmp eq i8 %10, 0
  %conv42 = zext i1 %cmp41 to i32
  br label %if.end46

if.else43:                                        ; preds = %while.body
  %call44 = call i64 @strlen(i8* noundef nonnull %next.1181) #8
  %add.ptr45 = getelementptr inbounds i8, i8* %next.1181, i64 %call44
  %.pre187 = load i8, i8* %add.ptr45, align 1, !tbaa !12
  br label %if.end46

if.end46:                                         ; preds = %if.else43, %if.then37
  %11 = phi i8 [ %10, %if.then37 ], [ %.pre187, %if.else43 ]
  %next.2 = phi i8* [ %add.ptr39, %if.then37 ], [ %add.ptr45, %if.else43 ]
  %trailing_separator.1 = phi i32 [ %conv42, %if.then37 ], [ %trailing_separator.0182, %if.else43 ]
  %cmp30.not = icmp eq i8 %11, 0
  %sub.ptr.lhs.cast = ptrtoint i8* %next.2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp32.not = icmp ugt i64 %sub.ptr.sub, %available_len.0
  %or.cond = select i1 %cmp30.not, i1 true, i1 %cmp32.not
  br i1 %or.cond, label %while.end, label %while.body, !llvm.loop !13

while.end:                                        ; preds = %if.end46
  br i1 %cmp32.not, label %if.then57, label %if.else72

if.end54:                                         ; preds = %if.then20
  %add.ptr26 = getelementptr inbounds i8, i8* %txt.addr.0, i64 %available_len.0
  %cmp55.not = icmp eq i8* %txt.addr.0, null
  br i1 %cmp55.not, label %if.else84, label %if.then57

if.then57:                                        ; preds = %while.end, %if.end54
  %curr.2196 = phi i8* [ %add.ptr26, %if.end54 ], [ %next.1181, %while.end ]
  %cmp58.not = icmp eq i8* %curr.2196, %txt.addr.0
  br i1 %cmp58.not, label %if.end69, label %if.then60

if.then60:                                        ; preds = %if.then57
  %sub.ptr.lhs.cast61 = ptrtoint i8* %curr.2196 to i64
  %sub.ptr.rhs.cast62 = ptrtoint i8* %txt.addr.0 to i64
  %sub.ptr.sub63 = sub i64 %sub.ptr.lhs.cast61, %sub.ptr.rhs.cast62
  %call64 = call i8* @CRYPTO_strndup(i8* noundef %txt.addr.0, i64 noundef %sub.ptr.sub63, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 noundef 123) #7
  %cmp65 = icmp eq i8* %call64, null
  br i1 %cmp65, label %cleanup96, label %if.end68

if.end68:                                         ; preds = %if.then60
  call void (i32, ...) @ERR_add_error_data(i32 noundef 2, i8* noundef nonnull %spec.store.select, i8* noundef nonnull %call64) #7
  call void @CRYPTO_free(i8* noundef nonnull %call64, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 noundef 127) #7
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then57
  %call70 = call fastcc i32 @ERR_GET_LIB(i64 noundef %call) #9, !range !15
  %12 = load i8*, i8** %func, align 8, !tbaa !10
  %13 = load i8*, i8** %file, align 8, !tbaa !10
  %14 = load i32, i32* %line, align 4, !tbaa !8
  call fastcc void @put_error(i32 noundef %call70, i8* noundef %12, i32 noundef %conv71, i8* noundef %13, i32 noundef %14) #9
  br label %do.cond

if.else72:                                        ; preds = %while.end
  %tobool.not = icmp eq i32 %trailing_separator.1, 0
  br i1 %tobool.not, label %if.else84, label %if.then73

if.then73:                                        ; preds = %if.else72
  %call74 = call i64 @strlen(i8* noundef nonnull %spec.store.select) #8
  %idx.neg = sub i64 0, %call74
  %add.ptr75 = getelementptr inbounds i8, i8* %next.2, i64 %idx.neg
  %sub.ptr.lhs.cast76 = ptrtoint i8* %add.ptr75 to i64
  %sub.ptr.rhs.cast77 = ptrtoint i8* %txt.addr.0 to i64
  %sub.ptr.sub78 = sub i64 %sub.ptr.lhs.cast76, %sub.ptr.rhs.cast77
  %call79 = call i8* @CRYPTO_strndup(i8* noundef nonnull %txt.addr.0, i64 noundef %sub.ptr.sub78, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 noundef 133) #7
  %cmp80 = icmp eq i8* %call79, null
  br i1 %cmp80, label %cleanup96, label %if.end83

if.end83:                                         ; preds = %if.then73
  call void (i32, ...) @ERR_add_error_data(i32 noundef 2, i8* noundef %leading_separator.0, i8* noundef nonnull %call79) #7
  call void @CRYPTO_free(i8* noundef nonnull %call79, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 noundef 138) #7
  br label %do.cond

if.else84:                                        ; preds = %while.cond.preheader, %if.end54, %if.then20, %if.else72
  %next.3169177 = phi i8* [ %next.2, %if.else72 ], [ %add.ptr, %if.then20 ], [ null, %if.end54 ], [ %txt.addr.0, %while.cond.preheader ]
  call void (i32, ...) @ERR_add_error_data(i32 noundef 2, i8* noundef %leading_separator.0, i8* noundef %txt.addr.0) #7
  br label %do.cond

do.cond:                                          ; preds = %if.end83, %if.else84, %if.end69
  %txt.addr.2.ph = phi i8* [ %next.2, %if.end83 ], [ %next.3169177, %if.else84 ], [ %curr.2196, %if.end69 ]
  %15 = load i8, i8* %txt.addr.2.ph, align 1, !tbaa !12
  %cmp94.not = icmp eq i8 %15, 0
  br i1 %cmp94.not, label %cleanup96, label %do.body, !llvm.loop !16

cleanup96:                                        ; preds = %if.then60, %if.then73, %do.cond
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret void
}

declare i64 @ERR_peek_last_error() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @put_error(i32 noundef %lib, i8* noundef %func, i32 noundef %reason, i8* noundef %file, i32 noundef %line) unnamed_addr #0 {
entry:
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef %file, i32 noundef %line, i8* noundef %func) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef %lib, i32 noundef %reason, i8* noundef null) #7
  ret void
}

declare i64 @ERR_peek_last_error_all(i8** noundef, i32* noundef, i8** noundef, i8** noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strstr(i8* noundef, i8* noundef) local_unnamed_addr #4

declare i8* @CRYPTO_strndup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_add_error_data(i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_LIB(i64 noundef %errcode) unnamed_addr #5 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %1 = lshr i32 %0, 23
  %conv = and i32 %1, 255
  %retval.0 = select i1 %cmp.not, i32 %conv, i32 2
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @ERR_add_error_mem_bio(i8* noundef %separator, %struct.bio_st* noundef %bio) local_unnamed_addr #0 {
entry:
  %str = alloca i8*, align 8
  %cmp.not = icmp eq %struct.bio_st* %bio, null
  br i1 %cmp.not, label %if.end18, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %call = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %bio, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %0) #7
  %cmp1 = icmp sgt i64 %call, 0
  br i1 %cmp1, label %if.then2, label %cleanup

if.then2:                                         ; preds = %if.then
  %1 = load i8*, i8** %str, align 8, !tbaa !10
  %sub = add nsw i64 %call, -1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %sub
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %cmp3.not = icmp eq i8 %2, 0
  br i1 %cmp3.not, label %if.end11, label %if.then5

if.then5:                                         ; preds = %if.then2
  %call6 = call i32 @BIO_write(%struct.bio_st* noundef nonnull %bio, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 noundef 1) #7
  %cmp7 = icmp slt i32 %call6, 1
  br i1 %cmp7, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then5
  %call10 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %bio, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %0) #7
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then2
  %len.0 = phi i64 [ %call10, %if.end ], [ %call, %if.then2 ]
  %cmp12 = icmp sgt i64 %len.0, 1
  br i1 %cmp12, label %if.then14, label %cleanup

if.then14:                                        ; preds = %if.end11
  %3 = load i8*, i8** %str, align 8, !tbaa !10
  call void @ERR_add_error_txt(i8* noundef %separator, i8* noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.then14, %if.end11, %if.then5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  br label %if.end18

if.end18:                                         ; preds = %cleanup, %entry
  ret void
}

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @ERR_print_errors(%struct.bio_st* noundef %bp) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.bio_st* %bp to i8*
  tail call void @ERR_print_errors_cb(i32 (i8*, i64, i8*)* noundef nonnull @print_bio, i8* noundef %0) #9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @print_bio(i8* noundef %str, i64 noundef %len, i8* noundef %bp) #0 {
entry:
  %0 = bitcast i8* %bp to %struct.bio_st*
  %conv = trunc i64 %len to i32
  %call = tail call i32 @BIO_write(%struct.bio_st* noundef %0, i8* noundef %str, i32 noundef %conv) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define void @ERR_print_errors_fp(%struct._IO_FILE* noundef %fp) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef %fp, i32 noundef 0) #7
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.bio_st* %call to i8*
  tail call void @ERR_print_errors_cb(i32 (i8*, i64, i8*)* noundef nonnull @print_bio, i8* noundef nonnull %0) #9
  %call1 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

declare %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!6, !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{i32 0, i32 256}
!16 = distinct !{!16, !14}
