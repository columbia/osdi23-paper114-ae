; ModuleID = 'crypto/bio/bio_print.c'
source_filename = "crypto/bio/bio_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [23 x i8] c"crypto/bio/bio_print.c\00", align 1
@__func__.doapr_outch = private unnamed_addr constant [12 x i8] c"doapr_outch\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef %format, ...) local_unnamed_addr #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %0 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #9
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %0)
  %call = call i32 @BIO_vprintf(%struct.bio_st* noundef %bio, i8* noundef %format, %struct.__va_list_tag* noundef nonnull %arraydecay) #10
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_vprintf(%struct.bio_st* noundef %bio, i8* noundef %format, %struct.__va_list_tag* noundef %args) local_unnamed_addr #0 {
entry:
  %retlen = alloca i64, align 8
  %hugebuf = alloca [2048 x i8], align 16
  %hugebufp = alloca i8*, align 8
  %hugebufsize = alloca i64, align 8
  %dynbuf = alloca i8*, align 8
  %ignored = alloca i32, align 4
  %0 = bitcast i64* %retlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = getelementptr inbounds [2048 x i8], [2048 x i8]* %hugebuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %1) #9
  %2 = bitcast i8** %hugebufp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  store i8* %1, i8** %hugebufp, align 8, !tbaa !4
  %3 = bitcast i64* %hugebufsize to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
  store i64 2048, i64* %hugebufsize, align 8, !tbaa !8
  %4 = bitcast i8** %dynbuf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  %5 = bitcast i32* %ignored to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  store i8* null, i8** %dynbuf, align 8, !tbaa !4
  %call = call fastcc i32 @_dopr(i8** noundef nonnull %hugebufp, i8** noundef nonnull %dynbuf, i64* noundef nonnull %hugebufsize, i64* noundef nonnull %retlen, i32* noundef nonnull %ignored, i8* noundef %format, %struct.__va_list_tag* noundef %args) #10
  %tobool.not = icmp eq i32 %call, 0
  %6 = load i8*, i8** %dynbuf, align 8, !tbaa !4
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 892) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq i8* %6, null
  %7 = load i64, i64* %retlen, align 8, !tbaa !8
  %conv5 = trunc i64 %7 to i32
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @BIO_write(%struct.bio_st* noundef %bio, i8* noundef nonnull %6, i32 noundef %conv5) #11
  %8 = load i8*, i8** %dynbuf, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 897) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call6 = call i32 @BIO_write(%struct.bio_st* noundef %bio, i8* noundef nonnull %1, i32 noundef %conv5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.else, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %call3, %if.then2 ], [ %call6, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @_dopr(i8** nocapture noundef %sbuffer, i8** noundef %buffer, i64* nocapture noundef %maxlen, i64* nocapture noundef writeonly %retlen, i32* nocapture noundef writeonly %truncated, i8* noundef readonly %format, %struct.__va_list_tag* noundef %args) unnamed_addr #0 {
entry:
  %currlen = alloca i64, align 8
  %0 = bitcast i64* %currlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i64 0, i64* %currlen, align 8, !tbaa !8
  %incdec.ptr = getelementptr inbounds i8, i8* %format, i64 1
  %1 = load i8, i8* %format, align 1, !tbaa !10
  %cmp3 = icmp eq i8** %buffer, null
  %gp_offset_p417 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %args, i64 0, i32 0
  %overflow_arg_area_p423 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %args, i64 0, i32 2
  %2 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %args, i64 0, i32 3
  %tobool389.not = icmp ne i8** %buffer, null
  %fp_offset_p342 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %args, i64 0, i32 1
  br label %while.body

while.body:                                       ; preds = %entry, %sw.epilog441
  %cflags.0621 = phi i32 [ 0, %entry ], [ %cflags.3, %sw.epilog441 ]
  %flags.0619 = phi i32 [ 0, %entry ], [ %flags.4, %sw.epilog441 ]
  %state.0618 = phi i32 [ 0, %entry ], [ %state.3, %sw.epilog441 ]
  %max.0616 = phi i32 [ -1, %entry ], [ %max.2, %sw.epilog441 ]
  %min.0614 = phi i32 [ 0, %entry ], [ %min.1, %sw.epilog441 ]
  %format.addr.0613 = phi i8* [ %incdec.ptr, %entry ], [ %format.addr.4, %sw.epilog441 ]
  %ch.0611 = phi i8 [ %1, %entry ], [ %ch.2, %sw.epilog441 ]
  %conv = sext i8 %ch.0611 to i32
  %cmp1 = icmp eq i8 %ch.0611, 0
  br i1 %cmp1, label %while.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load i64, i64* %currlen, align 8, !tbaa !8
  %4 = load i64, i64* %maxlen, align 8, !tbaa !8
  %cmp5.not = icmp ult i64 %3, %4
  br i1 %cmp5.not, label %if.end, label %if.then444

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  switch i32 %state.0618, label %sw.epilog441 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb16
    i32 2, label %sw.bb32
    i32 3, label %sw.bb48
    i32 4, label %sw.bb56
    i32 5, label %sw.bb90
    i32 6, label %sw.bb111
  ]

sw.bb:                                            ; preds = %if.end
  %cmp8 = icmp eq i8 %ch.0611, 37
  br i1 %cmp8, label %sw.epilog441.sink.split, label %if.else

if.else:                                          ; preds = %sw.bb
  %call = call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef nonnull %currlen, i64* noundef %maxlen, i32 noundef %conv) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %sw.epilog441.sink.split

sw.bb16:                                          ; preds = %if.end
  switch i32 %conv, label %sw.epilog441 [
    i32 45, label %sw.bb18
    i32 43, label %sw.bb20
    i32 32, label %sw.bb23
    i32 35, label %sw.bb26
    i32 48, label %sw.bb29
  ]

sw.bb18:                                          ; preds = %sw.bb16
  %or = or i32 %flags.0619, 1
  br label %sw.epilog441.sink.split

sw.bb20:                                          ; preds = %sw.bb16
  %or21 = or i32 %flags.0619, 2
  br label %sw.epilog441.sink.split

sw.bb23:                                          ; preds = %sw.bb16
  %or24 = or i32 %flags.0619, 4
  br label %sw.epilog441.sink.split

sw.bb26:                                          ; preds = %sw.bb16
  %or27 = or i32 %flags.0619, 8
  br label %sw.epilog441.sink.split

sw.bb29:                                          ; preds = %sw.bb16
  %or30 = or i32 %flags.0619, 16
  br label %sw.epilog441.sink.split

sw.bb32:                                          ; preds = %if.end
  %call34 = tail call i32 @ossl_ctype_check(i32 noundef %conv, i32 noundef 4) #11
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.else39, label %if.then36

if.then36:                                        ; preds = %sw.bb32
  %mul = mul nsw i32 %min.0614, 10
  %sub = add nsw i32 %conv, -48
  %add = add nsw i32 %sub, %mul
  br label %sw.epilog441.sink.split

if.else39:                                        ; preds = %sw.bb32
  %cmp41 = icmp eq i8 %ch.0611, 42
  br i1 %cmp41, label %if.then43, label %sw.epilog441

if.then43:                                        ; preds = %if.else39
  %gp_offset = load i32, i32* %gp_offset_p417, align 8
  %fits_in_gp = icmp ult i32 %gp_offset, 41
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %if.then43
  %reg_save_area = load i8*, i8** %2, align 8
  %5 = zext i32 %gp_offset to i64
  %6 = getelementptr i8, i8* %reg_save_area, i64 %5
  %7 = add nuw nsw i32 %gp_offset, 8
  store i32 %7, i32* %gp_offset_p417, align 8
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %if.then43
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p423, align 8
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i64 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p423, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %6, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*
  %8 = load i32, i32* %vaarg.addr, align 4
  br label %sw.epilog441.sink.split

sw.bb48:                                          ; preds = %if.end
  %cmp50 = icmp eq i8 %ch.0611, 46
  br i1 %cmp50, label %sw.epilog441.sink.split, label %sw.epilog441

sw.bb56:                                          ; preds = %if.end
  %call58 = tail call i32 @ossl_ctype_check(i32 noundef %conv, i32 noundef 4) #11
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.else70, label %if.then60

if.then60:                                        ; preds = %sw.bb56
  %9 = icmp sgt i32 %max.0616, 0
  %spec.store.select = select i1 %9, i32 %max.0616, i32 0
  %mul65 = mul nsw i32 %spec.store.select, 10
  %sub67 = add nsw i32 %conv, -48
  %add68 = add nsw i32 %sub67, %mul65
  br label %sw.epilog441.sink.split

if.else70:                                        ; preds = %sw.bb56
  %cmp72 = icmp eq i8 %ch.0611, 42
  br i1 %cmp72, label %if.then74, label %sw.epilog441

if.then74:                                        ; preds = %if.else70
  %gp_offset76 = load i32, i32* %gp_offset_p417, align 8
  %fits_in_gp77 = icmp ult i32 %gp_offset76, 41
  br i1 %fits_in_gp77, label %vaarg.in_reg78, label %vaarg.in_mem80

vaarg.in_reg78:                                   ; preds = %if.then74
  %reg_save_area79 = load i8*, i8** %2, align 8
  %10 = zext i32 %gp_offset76 to i64
  %11 = getelementptr i8, i8* %reg_save_area79, i64 %10
  %12 = add nuw nsw i32 %gp_offset76, 8
  store i32 %12, i32* %gp_offset_p417, align 8
  br label %vaarg.end84

vaarg.in_mem80:                                   ; preds = %if.then74
  %overflow_arg_area82 = load i8*, i8** %overflow_arg_area_p423, align 8
  %overflow_arg_area.next83 = getelementptr i8, i8* %overflow_arg_area82, i64 8
  store i8* %overflow_arg_area.next83, i8** %overflow_arg_area_p423, align 8
  br label %vaarg.end84

vaarg.end84:                                      ; preds = %vaarg.in_mem80, %vaarg.in_reg78
  %vaarg.addr85.in = phi i8* [ %11, %vaarg.in_reg78 ], [ %overflow_arg_area82, %vaarg.in_mem80 ]
  %vaarg.addr85 = bitcast i8* %vaarg.addr85.in to i32*
  %13 = load i32, i32* %vaarg.addr85, align 4
  br label %sw.epilog441.sink.split

sw.bb90:                                          ; preds = %if.end
  switch i32 %conv, label %sw.epilog441 [
    i32 104, label %sw.epilog441.sink.split
    i32 108, label %sw.bb94
    i32 113, label %sw.bb103
    i32 106, label %sw.bb103
    i32 76, label %sw.bb105
    i32 122, label %sw.bb107
  ]

sw.bb94:                                          ; preds = %sw.bb90
  %14 = load i8, i8* %format.addr.0613, align 1, !tbaa !10
  %cmp96 = icmp eq i8 %14, 108
  %format.addr.1.idx = zext i1 %cmp96 to i64
  %format.addr.1 = getelementptr i8, i8* %format.addr.0613, i64 %format.addr.1.idx
  %cflags.1 = select i1 %cmp96, i32 4, i32 2
  br label %sw.epilog441.sink.split

sw.bb103:                                         ; preds = %sw.bb90, %sw.bb90
  br label %sw.epilog441.sink.split

sw.bb105:                                         ; preds = %sw.bb90
  br label %sw.epilog441.sink.split

sw.bb107:                                         ; preds = %sw.bb90
  br label %sw.epilog441.sink.split

sw.bb111:                                         ; preds = %if.end
  switch i32 %conv, label %sw.epilog441.sink.split [
    i32 100, label %sw.bb113
    i32 105, label %sw.bb113
    i32 88, label %sw.bb182
    i32 120, label %sw.bb184
    i32 111, label %sw.bb184
    i32 117, label %sw.bb184
    i32 102, label %sw.bb261
    i32 69, label %sw.bb290
    i32 101, label %sw.bb292
    i32 71, label %sw.bb324
    i32 103, label %sw.bb326
    i32 99, label %sw.bb358
    i32 115, label %sw.bb374
    i32 112, label %sw.bb399
    i32 110, label %sw.bb416
    i32 37, label %sw.bb429
    i32 119, label %sw.bb435
  ]

sw.bb113:                                         ; preds = %sw.bb111, %sw.bb111
  switch i32 %cflags.0621, label %sw.default164 [
    i32 1, label %sw.bb114
    i32 2, label %sw.bb128
    i32 4, label %sw.bb140
    i32 5, label %sw.bb152
  ]

sw.bb114:                                         ; preds = %sw.bb113
  %gp_offset116 = load i32, i32* %gp_offset_p417, align 8
  %fits_in_gp117 = icmp ult i32 %gp_offset116, 41
  br i1 %fits_in_gp117, label %vaarg.in_reg118, label %vaarg.in_mem120

vaarg.in_reg118:                                  ; preds = %sw.bb114
  %reg_save_area119 = load i8*, i8** %2, align 8
  %15 = zext i32 %gp_offset116 to i64
  %16 = getelementptr i8, i8* %reg_save_area119, i64 %15
  %17 = add nuw nsw i32 %gp_offset116, 8
  store i32 %17, i32* %gp_offset_p417, align 8
  br label %vaarg.end124

vaarg.in_mem120:                                  ; preds = %sw.bb114
  %overflow_arg_area122 = load i8*, i8** %overflow_arg_area_p423, align 8
  %overflow_arg_area.next123 = getelementptr i8, i8* %overflow_arg_area122, i64 8
  store i8* %overflow_arg_area.next123, i8** %overflow_arg_area_p423, align 8
  br label %vaarg.end124

vaarg.end124:                                     ; preds = %vaarg.in_mem120, %vaarg.in_reg118
  %vaarg.addr125.in = phi i8* [ %16, %vaarg.in_reg118 ], [ %overflow_arg_area122, %vaarg.in_mem120 ]
  %vaarg.addr125 = bitcast i8* %vaarg.addr125.in to i32*
  %18 = load i32, i32* %vaarg.addr125, align 4
  %conv126 = zext i32 %18 to i64
  %sext = shl i64 %conv126, 48
  %conv127 = ashr exact i64 %sext, 48
  br label %sw.epilog177

sw.bb128:                                         ; preds = %sw.bb113
  %gp_offset130 = load i32, i32* %gp_offset_p417, align 8
  %fits_in_gp131 = icmp ult i32 %gp_offset130, 41
  br i1 %fits_in_gp131, label %vaarg.in_reg132, label %vaarg.in_mem134

vaarg.in_reg132:                                  ; preds = %sw.bb128
  %reg_save_area133 = load i8*, i8** %2, align 8
  %19 = zext i32 %gp_offset130 to i64
  %20 = getelementptr i8, i8* %reg_save_area133, i64 %19
  %21 = add nuw nsw i32 %gp_offset130, 8
  store i32 %21, i32* %gp_offset_p417, align 8
  br label %vaarg.end138

vaarg.in_mem134:                                  ; preds = %sw.bb128
  %overflow_arg_area136 = load i8*, i8** %overflow_arg_area_p423, align 8
  %overflow_arg_area.next137 = getelementptr i8, i8* %overflow_arg_area136, i64 8
  store i8* %overflow_arg_area.next137, i8** %overflow_arg_area_p423, align 8
  br label %vaarg.end138

vaarg.end138:                                     ; preds = %vaarg.in_mem134, %vaarg.in_reg132
  %vaarg.addr139.in = phi i8* [ %20, %vaarg.in_reg132 ], [ %overflow_arg_area136, %vaarg.in_mem134 ]
  %vaarg.addr139 = bitcast i8* %vaarg.addr139.in to i64*
  %22 = load i64, i64* %vaarg.addr139, align 8
  br label %sw.epilog177

sw.bb140:                                         ; preds = %sw.bb113
  %gp_offset142 = load i32, i32* %gp_offset_p417, align 8
  %fits_in_gp143 = icmp ult i32 %gp_offset142, 41
  br i1 %fits_in_gp143, label %vaarg.in_reg144, label %vaarg.in_mem146

vaarg.in_reg144:                                  ; preds = %sw.bb140
  %reg_save_area145 = load i8*, i8** %2, align 8
  %23 = zext i32 %gp_offset142 to i64
  %24 = getelementptr i8, i8* %reg_save_area145, i64 %23
  %25 = add nuw nsw i32 %gp_offset142, 8
  store i32 %25, i32* %gp_offset_p417, align 8
  br label %vaarg.end150

vaarg.in_mem146:                                  ; preds = %sw.bb140
  %overflow_arg_area148 = load i8*, i8** %overflow_arg_area_p423, align 8
  %overflow_arg_area.next149 = getelementptr i8, i8* %overflow_arg_area148, i64 8
  store i8* %overflow_arg_area.next149, i8** %overflow_arg_area_p423, align 8
  br label %vaarg.end150

vaarg.end150:                                     ; preds = %vaarg.in_mem146, %vaarg.in_reg144
  %vaarg.addr151.in = phi i8* [ %24, %vaarg.in_reg144 ], [ %overflow_arg_area148, %vaarg.in_mem146 ]
  %vaarg.addr151 = bitcast i8* %vaarg.addr151.in to i64*
  %26 = load i64, i64* %vaarg.addr151, align 8
  br label %sw.epilog177

sw.bb152:                                         ; preds = %sw.bb113
  %gp_offset154 = load i32, i32* %gp_offset_p417, align 8
  %fits_in_gp155 = icmp ult i32 %gp_offset154, 41
  br i1 %fits_in_gp155, label %vaarg.in_reg156, label %vaarg.in_mem158

vaarg.in_reg156:                                  ; preds = %sw.bb152
  %reg_save_area157 = load i8*, i8** %2, align 8
  %27 = zext i32 %gp_offset154 to i64
  %28 = getelementptr i8, i8* %reg_save_area157, i64 %27
  %29 = add nuw nsw i32 %gp_offset154, 8
  store i32 %29, i32* %gp_offset_p417, align 8
  br label %vaarg.end162

vaarg.in_mem158:                                  ; preds = %sw.bb152
  %overflow_arg_area160 = load i8*, i8** %overflow_arg_area_p423, align 8
  %overflow_arg_area.next161 = getelementptr i8, i8* %overflow_arg_area160, i64 8
  store i8* %overflow_arg_area.next161, i8** %overflow_arg_area_p423, align 8
  br label %vaarg.end162

vaarg.end162:                                     ; preds = %vaarg.in_mem158, %vaarg.in_reg156
  %vaarg.addr163.in = phi i8* [ %28, %vaarg.in_reg156 ], [ %overflow_arg_area160, %vaarg.in_mem158 ]
  %vaarg.addr163 = bitcast i8* %vaarg.addr163.in to i64*
  %30 = load i64, i64* %vaarg.addr163, align 8
  br label %sw.epilog177

sw.default164:                                    ; preds = %sw.bb113
  %gp_offset166 = load i32, i32* %gp_offset_p417, align 8
  %fits_in_gp167 = icmp ult i32 %gp_offset166, 41
  br i1 %fits_in_gp167, label %vaarg.in_reg168, label %vaarg.in_mem170

vaarg.in_reg168:                                  ; preds = %sw.default164
  %reg_save_area169 = load i8*, i8** %2, align 8
  %31 = zext i32 %gp_offset166 to i64
  %32 = getelementptr i8, i8* %reg_save_area169, i64 %31
  %33 = add nuw nsw i32 %gp_offset166, 8
  store i32 %33, i32* %gp_offset_p417, align 8
  br label %vaarg.end174

vaarg.in_mem170:                                  ; preds = %sw.default164
  %overflow_arg_area172 = load i8*, i8** %overflow_arg_area_p423, align 8
  %overflow_arg_area.next173 = getelementptr i8, i8* %overflow_arg_area172, i64 8
  store i8* %overflow_arg_area.next173, i8** %overflow_arg_area_p423, align 8
  br label %vaarg.end174

vaarg.end174:                                     ; preds = %vaarg.in_mem170, %vaarg.in_reg168
  %vaarg.addr175.in = phi i8* [ %32, %vaarg.in_reg168 ], [ %overflow_arg_area172, %vaarg.in_mem170 ]
  %vaarg.addr175 = bitcast i8* %vaarg.addr175.in to i32*
  %34 = load i32, i32* %vaarg.addr175, align 4
  %conv176 = sext i32 %34 to i64
  br label %sw.epilog177

sw.epilog177:                                     ; preds = %vaarg.end174, %vaarg.end162, %vaarg.end150, %vaarg.end138, %vaarg.end124
  %value.0 = phi i64 [ %conv176, %vaarg.end174 ], [ %30, %vaarg.end162 ], [ %26, %vaarg.end150 ], [ %22, %vaarg.end138 ], [ %conv127, %vaarg.end124 ]
  %call178 = call fastcc i32 @fmtint(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef nonnull %currlen, i64* noundef %maxlen, i64 noundef %value.0, i32 noundef 10, i32 noundef %min.0614, i32 noundef %max.0616, i32 noundef %flags.0619) #10
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %cleanup, label %sw.epilog441.sink.split

sw.bb182:                                         ; preds = %sw.bb111
  %or183 = or i32 %flags.0619, 32
  br label %sw.bb184

sw.bb184:                                         ; preds = %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb182
  %flags.1 = phi i32 [ %flags.0619, %sw.bb111 ], [ %flags.0619, %sw.bb111 ], [ %flags.0619, %sw.bb111 ], [ %or183, %sw.bb182 ]
  %or185 = or i32 %flags.1, 64
  switch i32 %cflags.0621, label %sw.default236 [
    i32 1, label %sw.bb186
    i32 2, label %sw.bb200
    i32 4, label %sw.bb212
    i32 5, label %sw.bb224
  ]

sw.bb186:                                         ; preds = %sw.bb184
  %gp_offset188 = load i32, i32* %gp_offset_p417, align 8
  %fits_in_gp189 = icmp ult i32 %gp_offset188, 41
  br i1 %fits_in_gp189, label %vaarg.in_reg190, label %vaarg.in_mem192

vaarg.in_reg190:                                  ; preds = %sw.bb186
  %reg_save_area191 = load i8*, i8** %2, align 8
  %35 = zext i32 %gp_offset188 to i64
  %36 = getelementptr i8, i8* %reg_save_area191, i64 %35
  %37 = add nuw nsw i32 %gp_offset188, 8
  store i32 %37, i32* %gp_offset_p417, align 8
  br label %vaarg.end196

vaarg.in_mem192:                                  ; preds = %sw.bb186
  %overflow_arg_area194 = load i8*, i8** %overflow_arg_area_p423, align 8
  %overflow_arg_area.next195 = getelementptr i8, i8* %overflow_arg_area194, i64 8
  store i8* %overflow_arg_area.next195, i8** %overflow_arg_area_p423, align 8
  br label %vaarg.end196

vaarg.end196:                                     ; preds = %vaarg.in_mem192, %vaarg.in_reg190
  %vaarg.addr197.in = phi i8* [ %36, %vaarg.in_reg190 ], [ %overflow_arg_area194, %vaarg.in_mem192 ]
  %vaarg.addr197 = bitcast i8* %vaarg.addr197.in to i32*
  %38 = load i32, i32* %vaarg.addr197, align 4
  %39 = and i32 %38, 65535
  %conv199 = zext i32 %39 to i64
  br label %sw.epilog249

sw.bb200:                                         ; preds = %sw.bb184
  %gp_offset202 = load i32, i32* %gp_offset_p417, align 8
  %fits_in_gp203 = icmp ult i32 %gp_offset202, 41
  br i1 %fits_in_gp203, label %vaarg.in_reg204, label %vaarg.in_mem206

vaarg.in_reg204:                                  ; preds = %sw.bb200
  %reg_save_area205 = load i8*, i8** %2, align 8
  %40 = zext i32 %gp_offset202 to i64
  %41 = getelementptr i8, i8* %reg_save_area205, i64 %40
  %42 = add nuw nsw i32 %gp_offset202, 8
  store i32 %42, i32* %gp_offset_p417, align 8
  br label %vaarg.end210

vaarg.in_mem206:                                  ; preds = %sw.bb200
  %overflow_arg_area208 = load i8*, i8** %overflow_arg_area_p423, align 8
  %overflow_arg_area.next209 = getelementptr i8, i8* %overflow_arg_area208, i64 8
  store i8* %overflow_arg_area.next209, i8** %overflow_arg_area_p423, align 8
  br label %vaarg.end210

vaarg.end210:                                     ; preds = %vaarg.in_mem206, %vaarg.in_reg204
  %vaarg.addr211.in = phi i8* [ %41, %vaarg.in_reg204 ], [ %overflow_arg_area208, %vaarg.in_mem206 ]
  %vaarg.addr211 = bitcast i8* %vaarg.addr211.in to i64*
  %43 = load i64, i64* %vaarg.addr211, align 8
  br label %sw.epilog249

sw.bb212:                                         ; preds = %sw.bb184
  %gp_offset214 = load i32, i32* %gp_offset_p417, align 8
  %fits_in_gp215 = icmp ult i32 %gp_offset214, 41
  br i1 %fits_in_gp215, label %vaarg.in_reg216, label %vaarg.in_mem218

vaarg.in_reg216:                                  ; preds = %sw.bb212
  %reg_save_area217 = load i8*, i8** %2, align 8
  %44 = zext i32 %gp_offset214 to i64
  %45 = getelementptr i8, i8* %reg_save_area217, i64 %44
  %46 = add nuw nsw i32 %gp_offset214, 8
  store i32 %46, i32* %gp_offset_p417, align 8
  br label %vaarg.end222

vaarg.in_mem218:                                  ; preds = %sw.bb212
  %overflow_arg_area220 = load i8*, i8** %overflow_arg_area_p423, align 8
  %overflow_arg_area.next221 = getelementptr i8, i8* %overflow_arg_area220, i64 8
  store i8* %overflow_arg_area.next221, i8** %overflow_arg_area_p423, align 8
  br label %vaarg.end222

vaarg.end222:                                     ; preds = %vaarg.in_mem218, %vaarg.in_reg216
  %vaarg.addr223.in = phi i8* [ %45, %vaarg.in_reg216 ], [ %overflow_arg_area220, %vaarg.in_mem218 ]
  %vaarg.addr223 = bitcast i8* %vaarg.addr223.in to i64*
  %47 = load i64, i64* %vaarg.addr223, align 8
  br label %sw.epilog249

sw.bb224:                                         ; preds = %sw.bb184
  %gp_offset226 = load i32, i32* %gp_offset_p417, align 8
  %fits_in_gp227 = icmp ult i32 %gp_offset226, 41
  br i1 %fits_in_gp227, label %vaarg.in_reg228, label %vaarg.in_mem230

vaarg.in_reg228:                                  ; preds = %sw.bb224
  %reg_save_area229 = load i8*, i8** %2, align 8
  %48 = zext i32 %gp_offset226 to i64
  %49 = getelementptr i8, i8* %reg_save_area229, i64 %48
  %50 = add nuw nsw i32 %gp_offset226, 8
  store i32 %50, i32* %gp_offset_p417, align 8
  br label %vaarg.end234

vaarg.in_mem230:                                  ; preds = %sw.bb224
  %overflow_arg_area232 = load i8*, i8** %overflow_arg_area_p423, align 8
  %overflow_arg_area.next233 = getelementptr i8, i8* %overflow_arg_area232, i64 8
  store i8* %overflow_arg_area.next233, i8** %overflow_arg_area_p423, align 8
  br label %vaarg.end234

vaarg.end234:                                     ; preds = %vaarg.in_mem230, %vaarg.in_reg228
  %vaarg.addr235.in = phi i8* [ %49, %vaarg.in_reg228 ], [ %overflow_arg_area232, %vaarg.in_mem230 ]
  %vaarg.addr235 = bitcast i8* %vaarg.addr235.in to i64*
  %51 = load i64, i64* %vaarg.addr235, align 8
  br label %sw.epilog249

sw.default236:                                    ; preds = %sw.bb184
  %gp_offset238 = load i32, i32* %gp_offset_p417, align 8
  %fits_in_gp239 = icmp ult i32 %gp_offset238, 41
  br i1 %fits_in_gp239, label %vaarg.in_reg240, label %vaarg.in_mem242

vaarg.in_reg240:                                  ; preds = %sw.default236
  %reg_save_area241 = load i8*, i8** %2, align 8
  %52 = zext i32 %gp_offset238 to i64
  %53 = getelementptr i8, i8* %reg_save_area241, i64 %52
  %54 = add nuw nsw i32 %gp_offset238, 8
  store i32 %54, i32* %gp_offset_p417, align 8
  br label %vaarg.end246

vaarg.in_mem242:                                  ; preds = %sw.default236
  %overflow_arg_area244 = load i8*, i8** %overflow_arg_area_p423, align 8
  %overflow_arg_area.next245 = getelementptr i8, i8* %overflow_arg_area244, i64 8
  store i8* %overflow_arg_area.next245, i8** %overflow_arg_area_p423, align 8
  br label %vaarg.end246

vaarg.end246:                                     ; preds = %vaarg.in_mem242, %vaarg.in_reg240
  %vaarg.addr247.in = phi i8* [ %53, %vaarg.in_reg240 ], [ %overflow_arg_area244, %vaarg.in_mem242 ]
  %vaarg.addr247 = bitcast i8* %vaarg.addr247.in to i32*
  %55 = load i32, i32* %vaarg.addr247, align 4
  %conv248 = zext i32 %55 to i64
  br label %sw.epilog249

sw.epilog249:                                     ; preds = %vaarg.end246, %vaarg.end234, %vaarg.end222, %vaarg.end210, %vaarg.end196
  %value.1 = phi i64 [ %conv248, %vaarg.end246 ], [ %51, %vaarg.end234 ], [ %47, %vaarg.end222 ], [ %43, %vaarg.end210 ], [ %conv199, %vaarg.end196 ]
  %cmp251 = icmp eq i8 %ch.0611, 111
  %cmp254 = icmp eq i8 %ch.0611, 117
  %cond = select i1 %cmp254, i32 10, i32 16
  %cond256 = select i1 %cmp251, i32 8, i32 %cond
  %call257 = call fastcc i32 @fmtint(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef nonnull %currlen, i64* noundef %maxlen, i64 noundef %value.1, i32 noundef %cond256, i32 noundef %min.0614, i32 noundef %max.0616, i32 noundef %or185) #10
  %tobool258.not = icmp eq i32 %call257, 0
  br i1 %tobool258.not, label %cleanup, label %sw.epilog441.sink.split

sw.bb261:                                         ; preds = %sw.bb111
  %cmp262 = icmp eq i32 %cflags.0621, 3
  %fp_offset = load i32, i32* %fp_offset_p342, align 4
  %fits_in_fp = icmp ult i32 %fp_offset, 161
  br i1 %cmp262, label %if.then264, label %if.else273

if.then264:                                       ; preds = %sw.bb261
  br i1 %fits_in_fp, label %vaarg.in_reg265, label %vaarg.in_mem267

vaarg.in_reg265:                                  ; preds = %if.then264
  %reg_save_area266 = load i8*, i8** %2, align 8
  %56 = zext i32 %fp_offset to i64
  %57 = getelementptr i8, i8* %reg_save_area266, i64 %56
  %58 = add nuw nsw i32 %fp_offset, 16
  store i32 %58, i32* %fp_offset_p342, align 4
  br label %if.end285

vaarg.in_mem267:                                  ; preds = %if.then264
  %overflow_arg_area269 = load i8*, i8** %overflow_arg_area_p423, align 8
  %overflow_arg_area.next270 = getelementptr i8, i8* %overflow_arg_area269, i64 8
  store i8* %overflow_arg_area.next270, i8** %overflow_arg_area_p423, align 8
  br label %if.end285

if.else273:                                       ; preds = %sw.bb261
  br i1 %fits_in_fp, label %vaarg.in_reg277, label %vaarg.in_mem279

vaarg.in_reg277:                                  ; preds = %if.else273
  %reg_save_area278 = load i8*, i8** %2, align 8
  %59 = zext i32 %fp_offset to i64
  %60 = getelementptr i8, i8* %reg_save_area278, i64 %59
  %61 = add nuw nsw i32 %fp_offset, 16
  store i32 %61, i32* %fp_offset_p342, align 4
  br label %if.end285

vaarg.in_mem279:                                  ; preds = %if.else273
  %overflow_arg_area281 = load i8*, i8** %overflow_arg_area_p423, align 8
  %overflow_arg_area.next282 = getelementptr i8, i8* %overflow_arg_area281, i64 8
  store i8* %overflow_arg_area.next282, i8** %overflow_arg_area_p423, align 8
  br label %if.end285

if.end285:                                        ; preds = %vaarg.in_reg277, %vaarg.in_mem279, %vaarg.in_reg265, %vaarg.in_mem267
  %fvalue.0.in.in = phi i8* [ %57, %vaarg.in_reg265 ], [ %overflow_arg_area269, %vaarg.in_mem267 ], [ %60, %vaarg.in_reg277 ], [ %overflow_arg_area281, %vaarg.in_mem279 ]
  %fvalue.0.in = bitcast i8* %fvalue.0.in.in to double*
  %fvalue.0 = load double, double* %fvalue.0.in, align 8
  %call286 = call fastcc i32 @fmtfp(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef nonnull %currlen, i64* noundef %maxlen, double noundef %fvalue.0, i32 noundef %min.0614, i32 noundef %max.0616, i32 noundef %flags.0619, i32 noundef 0) #10
  %tobool287.not = icmp eq i32 %call286, 0
  br i1 %tobool287.not, label %cleanup, label %sw.epilog441.sink.split

sw.bb290:                                         ; preds = %sw.bb111
  %or291 = or i32 %flags.0619, 32
  br label %sw.bb292

sw.bb292:                                         ; preds = %sw.bb111, %sw.bb290
  %flags.2 = phi i32 [ %flags.0619, %sw.bb111 ], [ %or291, %sw.bb290 ]
  %cmp293 = icmp eq i32 %cflags.0621, 3
  %fp_offset297 = load i32, i32* %fp_offset_p342, align 4
  %fits_in_fp298 = icmp ult i32 %fp_offset297, 161
  br i1 %cmp293, label %if.then295, label %if.else307

if.then295:                                       ; preds = %sw.bb292
  br i1 %fits_in_fp298, label %vaarg.in_reg299, label %vaarg.in_mem301

vaarg.in_reg299:                                  ; preds = %if.then295
  %reg_save_area300 = load i8*, i8** %2, align 8
  %62 = zext i32 %fp_offset297 to i64
  %63 = getelementptr i8, i8* %reg_save_area300, i64 %62
  %64 = add nuw nsw i32 %fp_offset297, 16
  store i32 %64, i32* %fp_offset_p342, align 4
  br label %if.end319

vaarg.in_mem301:                                  ; preds = %if.then295
  %overflow_arg_area303 = load i8*, i8** %overflow_arg_area_p423, align 8
  %overflow_arg_area.next304 = getelementptr i8, i8* %overflow_arg_area303, i64 8
  store i8* %overflow_arg_area.next304, i8** %overflow_arg_area_p423, align 8
  br label %if.end319

if.else307:                                       ; preds = %sw.bb292
  br i1 %fits_in_fp298, label %vaarg.in_reg311, label %vaarg.in_mem313

vaarg.in_reg311:                                  ; preds = %if.else307
  %reg_save_area312 = load i8*, i8** %2, align 8
  %65 = zext i32 %fp_offset297 to i64
  %66 = getelementptr i8, i8* %reg_save_area312, i64 %65
  %67 = add nuw nsw i32 %fp_offset297, 16
  store i32 %67, i32* %fp_offset_p342, align 4
  br label %if.end319

vaarg.in_mem313:                                  ; preds = %if.else307
  %overflow_arg_area315 = load i8*, i8** %overflow_arg_area_p423, align 8
  %overflow_arg_area.next316 = getelementptr i8, i8* %overflow_arg_area315, i64 8
  store i8* %overflow_arg_area.next316, i8** %overflow_arg_area_p423, align 8
  br label %if.end319

if.end319:                                        ; preds = %vaarg.in_reg311, %vaarg.in_mem313, %vaarg.in_reg299, %vaarg.in_mem301
  %fvalue.1.in.in = phi i8* [ %63, %vaarg.in_reg299 ], [ %overflow_arg_area303, %vaarg.in_mem301 ], [ %66, %vaarg.in_reg311 ], [ %overflow_arg_area315, %vaarg.in_mem313 ]
  %fvalue.1.in = bitcast i8* %fvalue.1.in.in to double*
  %fvalue.1 = load double, double* %fvalue.1.in, align 8
  %call320 = call fastcc i32 @fmtfp(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef nonnull %currlen, i64* noundef %maxlen, double noundef %fvalue.1, i32 noundef %min.0614, i32 noundef %max.0616, i32 noundef %flags.2, i32 noundef 1) #10
  %tobool321.not = icmp eq i32 %call320, 0
  br i1 %tobool321.not, label %cleanup, label %sw.epilog441.sink.split

sw.bb324:                                         ; preds = %sw.bb111
  %or325 = or i32 %flags.0619, 32
  br label %sw.bb326

sw.bb326:                                         ; preds = %sw.bb111, %sw.bb324
  %flags.3 = phi i32 [ %flags.0619, %sw.bb111 ], [ %or325, %sw.bb324 ]
  %cmp327 = icmp eq i32 %cflags.0621, 3
  %fp_offset331 = load i32, i32* %fp_offset_p342, align 4
  %fits_in_fp332 = icmp ult i32 %fp_offset331, 161
  br i1 %cmp327, label %if.then329, label %if.else341

if.then329:                                       ; preds = %sw.bb326
  br i1 %fits_in_fp332, label %vaarg.in_reg333, label %vaarg.in_mem335

vaarg.in_reg333:                                  ; preds = %if.then329
  %reg_save_area334 = load i8*, i8** %2, align 8
  %68 = zext i32 %fp_offset331 to i64
  %69 = getelementptr i8, i8* %reg_save_area334, i64 %68
  %70 = add nuw nsw i32 %fp_offset331, 16
  store i32 %70, i32* %fp_offset_p342, align 4
  br label %if.end353

vaarg.in_mem335:                                  ; preds = %if.then329
  %overflow_arg_area337 = load i8*, i8** %overflow_arg_area_p423, align 8
  %overflow_arg_area.next338 = getelementptr i8, i8* %overflow_arg_area337, i64 8
  store i8* %overflow_arg_area.next338, i8** %overflow_arg_area_p423, align 8
  br label %if.end353

if.else341:                                       ; preds = %sw.bb326
  br i1 %fits_in_fp332, label %vaarg.in_reg345, label %vaarg.in_mem347

vaarg.in_reg345:                                  ; preds = %if.else341
  %reg_save_area346 = load i8*, i8** %2, align 8
  %71 = zext i32 %fp_offset331 to i64
  %72 = getelementptr i8, i8* %reg_save_area346, i64 %71
  %73 = add nuw nsw i32 %fp_offset331, 16
  store i32 %73, i32* %fp_offset_p342, align 4
  br label %if.end353

vaarg.in_mem347:                                  ; preds = %if.else341
  %overflow_arg_area349 = load i8*, i8** %overflow_arg_area_p423, align 8
  %overflow_arg_area.next350 = getelementptr i8, i8* %overflow_arg_area349, i64 8
  store i8* %overflow_arg_area.next350, i8** %overflow_arg_area_p423, align 8
  br label %if.end353

if.end353:                                        ; preds = %vaarg.in_reg345, %vaarg.in_mem347, %vaarg.in_reg333, %vaarg.in_mem335
  %fvalue.2.in.in = phi i8* [ %69, %vaarg.in_reg333 ], [ %overflow_arg_area337, %vaarg.in_mem335 ], [ %72, %vaarg.in_reg345 ], [ %overflow_arg_area349, %vaarg.in_mem347 ]
  %fvalue.2.in = bitcast i8* %fvalue.2.in.in to double*
  %fvalue.2 = load double, double* %fvalue.2.in, align 8
  %call354 = call fastcc i32 @fmtfp(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef nonnull %currlen, i64* noundef %maxlen, double noundef %fvalue.2, i32 noundef %min.0614, i32 noundef %max.0616, i32 noundef %flags.3, i32 noundef 2) #10
  %tobool355.not = icmp eq i32 %call354, 0
  br i1 %tobool355.not, label %cleanup, label %sw.epilog441.sink.split

sw.bb358:                                         ; preds = %sw.bb111
  %gp_offset360 = load i32, i32* %gp_offset_p417, align 8
  %fits_in_gp361 = icmp ult i32 %gp_offset360, 41
  br i1 %fits_in_gp361, label %vaarg.in_reg362, label %vaarg.in_mem364

vaarg.in_reg362:                                  ; preds = %sw.bb358
  %reg_save_area363 = load i8*, i8** %2, align 8
  %74 = zext i32 %gp_offset360 to i64
  %75 = getelementptr i8, i8* %reg_save_area363, i64 %74
  %76 = add nuw nsw i32 %gp_offset360, 8
  store i32 %76, i32* %gp_offset_p417, align 8
  br label %vaarg.end368

vaarg.in_mem364:                                  ; preds = %sw.bb358
  %overflow_arg_area366 = load i8*, i8** %overflow_arg_area_p423, align 8
  %overflow_arg_area.next367 = getelementptr i8, i8* %overflow_arg_area366, i64 8
  store i8* %overflow_arg_area.next367, i8** %overflow_arg_area_p423, align 8
  br label %vaarg.end368

vaarg.end368:                                     ; preds = %vaarg.in_mem364, %vaarg.in_reg362
  %vaarg.addr369.in = phi i8* [ %75, %vaarg.in_reg362 ], [ %overflow_arg_area366, %vaarg.in_mem364 ]
  %vaarg.addr369 = bitcast i8* %vaarg.addr369.in to i32*
  %77 = load i32, i32* %vaarg.addr369, align 4
  %call370 = call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef nonnull %currlen, i64* noundef %maxlen, i32 noundef %77) #10
  %tobool371.not = icmp eq i32 %call370, 0
  br i1 %tobool371.not, label %cleanup, label %sw.epilog441.sink.split

sw.bb374:                                         ; preds = %sw.bb111
  %gp_offset376 = load i32, i32* %gp_offset_p417, align 8
  %fits_in_gp377 = icmp ult i32 %gp_offset376, 41
  br i1 %fits_in_gp377, label %vaarg.in_reg378, label %vaarg.in_mem380

vaarg.in_reg378:                                  ; preds = %sw.bb374
  %reg_save_area379 = load i8*, i8** %2, align 8
  %78 = zext i32 %gp_offset376 to i64
  %79 = getelementptr i8, i8* %reg_save_area379, i64 %78
  %80 = add nuw nsw i32 %gp_offset376, 8
  store i32 %80, i32* %gp_offset_p417, align 8
  br label %vaarg.end384

vaarg.in_mem380:                                  ; preds = %sw.bb374
  %overflow_arg_area382 = load i8*, i8** %overflow_arg_area_p423, align 8
  %overflow_arg_area.next383 = getelementptr i8, i8* %overflow_arg_area382, i64 8
  store i8* %overflow_arg_area.next383, i8** %overflow_arg_area_p423, align 8
  br label %vaarg.end384

vaarg.end384:                                     ; preds = %vaarg.in_mem380, %vaarg.in_reg378
  %vaarg.addr385.in = phi i8* [ %79, %vaarg.in_reg378 ], [ %overflow_arg_area382, %vaarg.in_mem380 ]
  %vaarg.addr385 = bitcast i8* %vaarg.addr385.in to i8**
  %81 = load i8*, i8** %vaarg.addr385, align 8
  %cmp386 = icmp sgt i32 %max.0616, -1
  %brmerge = or i1 %cmp386, %tobool389.not
  %max.0617.mux = select i1 %cmp386, i32 %max.0616, i32 2147483647
  br i1 %brmerge, label %if.end394, label %if.else391

if.else391:                                       ; preds = %vaarg.end384
  %82 = load i64, i64* %maxlen, align 8, !tbaa !8
  %conv392 = trunc i64 %82 to i32
  br label %if.end394

if.end394:                                        ; preds = %vaarg.end384, %if.else391
  %max.1 = phi i32 [ %conv392, %if.else391 ], [ %max.0617.mux, %vaarg.end384 ]
  %call395 = call fastcc i32 @fmtstr(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef nonnull %currlen, i64* noundef %maxlen, i8* noundef %81, i32 noundef %flags.0619, i32 noundef %min.0614, i32 noundef %max.1) #10
  %tobool396.not = icmp eq i32 %call395, 0
  br i1 %tobool396.not, label %cleanup, label %sw.epilog441.sink.split

sw.bb399:                                         ; preds = %sw.bb111
  %gp_offset401 = load i32, i32* %gp_offset_p417, align 8
  %fits_in_gp402 = icmp ult i32 %gp_offset401, 41
  br i1 %fits_in_gp402, label %vaarg.in_reg403, label %vaarg.in_mem405

vaarg.in_reg403:                                  ; preds = %sw.bb399
  %reg_save_area404 = load i8*, i8** %2, align 8
  %83 = zext i32 %gp_offset401 to i64
  %84 = getelementptr i8, i8* %reg_save_area404, i64 %83
  %85 = add nuw nsw i32 %gp_offset401, 8
  store i32 %85, i32* %gp_offset_p417, align 8
  br label %vaarg.end409

vaarg.in_mem405:                                  ; preds = %sw.bb399
  %overflow_arg_area407 = load i8*, i8** %overflow_arg_area_p423, align 8
  %overflow_arg_area.next408 = getelementptr i8, i8* %overflow_arg_area407, i64 8
  store i8* %overflow_arg_area.next408, i8** %overflow_arg_area_p423, align 8
  br label %vaarg.end409

vaarg.end409:                                     ; preds = %vaarg.in_mem405, %vaarg.in_reg403
  %vaarg.addr410.in = phi i8* [ %84, %vaarg.in_reg403 ], [ %overflow_arg_area407, %vaarg.in_mem405 ]
  %vaarg.addr410 = bitcast i8* %vaarg.addr410.in to i8**
  %86 = load i8*, i8** %vaarg.addr410, align 8
  %87 = ptrtoint i8* %86 to i64
  %or411 = or i32 %flags.0619, 8
  %call412 = call fastcc i32 @fmtint(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef nonnull %currlen, i64* noundef %maxlen, i64 noundef %87, i32 noundef 16, i32 noundef %min.0614, i32 noundef %max.0616, i32 noundef %or411) #10
  %tobool413.not = icmp eq i32 %call412, 0
  br i1 %tobool413.not, label %cleanup, label %sw.epilog441.sink.split

sw.bb416:                                         ; preds = %sw.bb111
  %gp_offset418 = load i32, i32* %gp_offset_p417, align 8
  %fits_in_gp419 = icmp ult i32 %gp_offset418, 41
  br i1 %fits_in_gp419, label %vaarg.in_reg420, label %vaarg.in_mem422

vaarg.in_reg420:                                  ; preds = %sw.bb416
  %reg_save_area421 = load i8*, i8** %2, align 8
  %88 = zext i32 %gp_offset418 to i64
  %89 = getelementptr i8, i8* %reg_save_area421, i64 %88
  %90 = add nuw nsw i32 %gp_offset418, 8
  store i32 %90, i32* %gp_offset_p417, align 8
  br label %vaarg.end426

vaarg.in_mem422:                                  ; preds = %sw.bb416
  %overflow_arg_area424 = load i8*, i8** %overflow_arg_area_p423, align 8
  %overflow_arg_area.next425 = getelementptr i8, i8* %overflow_arg_area424, i64 8
  store i8* %overflow_arg_area.next425, i8** %overflow_arg_area_p423, align 8
  br label %vaarg.end426

vaarg.end426:                                     ; preds = %vaarg.in_mem422, %vaarg.in_reg420
  %vaarg.addr427.in = phi i8* [ %89, %vaarg.in_reg420 ], [ %overflow_arg_area424, %vaarg.in_mem422 ]
  %vaarg.addr427 = bitcast i8* %vaarg.addr427.in to i32**
  %91 = load i32*, i32** %vaarg.addr427, align 8
  %92 = load i64, i64* %currlen, align 8, !tbaa !8
  %conv428 = trunc i64 %92 to i32
  store i32 %conv428, i32* %91, align 4, !tbaa !11
  br label %sw.epilog441.sink.split

sw.bb429:                                         ; preds = %sw.bb111
  %call431 = call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef nonnull %currlen, i64* noundef %maxlen, i32 noundef 37) #10
  %tobool432.not = icmp eq i32 %call431, 0
  br i1 %tobool432.not, label %cleanup, label %sw.epilog441.sink.split

sw.bb435:                                         ; preds = %sw.bb111
  %incdec.ptr436 = getelementptr inbounds i8, i8* %format.addr.0613, i64 1
  br label %sw.epilog441.sink.split

sw.epilog441.sink.split:                          ; preds = %vaarg.end426, %sw.bb435, %sw.epilog177, %sw.epilog249, %if.end285, %if.end319, %if.end353, %vaarg.end368, %if.end394, %vaarg.end409, %sw.bb429, %sw.bb111, %sw.bb90, %sw.bb48, %if.else, %sw.bb, %sw.bb29, %sw.bb26, %sw.bb23, %sw.bb20, %sw.bb18, %vaarg.end, %if.then36, %vaarg.end84, %if.then60, %sw.bb107, %sw.bb105, %sw.bb103, %sw.bb94
  %format.addr.0613.sink631 = phi i8* [ %format.addr.1, %sw.bb94 ], [ %format.addr.0613, %sw.bb103 ], [ %format.addr.0613, %sw.bb105 ], [ %format.addr.0613, %sw.bb107 ], [ %format.addr.0613, %if.then60 ], [ %format.addr.0613, %vaarg.end84 ], [ %format.addr.0613, %if.then36 ], [ %format.addr.0613, %vaarg.end ], [ %format.addr.0613, %sw.bb18 ], [ %format.addr.0613, %sw.bb20 ], [ %format.addr.0613, %sw.bb23 ], [ %format.addr.0613, %sw.bb26 ], [ %format.addr.0613, %sw.bb29 ], [ %format.addr.0613, %sw.bb ], [ %format.addr.0613, %if.else ], [ %format.addr.0613, %sw.bb48 ], [ %format.addr.0613, %sw.bb90 ], [ %format.addr.0613, %sw.bb111 ], [ %incdec.ptr436, %sw.bb435 ], [ %format.addr.0613, %sw.bb429 ], [ %format.addr.0613, %vaarg.end426 ], [ %format.addr.0613, %vaarg.end409 ], [ %format.addr.0613, %if.end394 ], [ %format.addr.0613, %vaarg.end368 ], [ %format.addr.0613, %if.end353 ], [ %format.addr.0613, %if.end319 ], [ %format.addr.0613, %if.end285 ], [ %format.addr.0613, %sw.epilog249 ], [ %format.addr.0613, %sw.epilog177 ]
  %min.1.ph = phi i32 [ %min.0614, %sw.bb94 ], [ %min.0614, %sw.bb103 ], [ %min.0614, %sw.bb105 ], [ %min.0614, %sw.bb107 ], [ %min.0614, %if.then60 ], [ %min.0614, %vaarg.end84 ], [ %add, %if.then36 ], [ %8, %vaarg.end ], [ %min.0614, %sw.bb18 ], [ %min.0614, %sw.bb20 ], [ %min.0614, %sw.bb23 ], [ %min.0614, %sw.bb26 ], [ %min.0614, %sw.bb29 ], [ %min.0614, %sw.bb ], [ %min.0614, %if.else ], [ %min.0614, %sw.bb48 ], [ %min.0614, %sw.bb90 ], [ 0, %sw.bb111 ], [ 0, %sw.bb435 ], [ 0, %sw.bb429 ], [ 0, %vaarg.end426 ], [ 0, %vaarg.end409 ], [ 0, %if.end394 ], [ 0, %vaarg.end368 ], [ 0, %if.end353 ], [ 0, %if.end319 ], [ 0, %if.end285 ], [ 0, %sw.epilog249 ], [ 0, %sw.epilog177 ]
  %max.2.ph = phi i32 [ %max.0616, %sw.bb94 ], [ %max.0616, %sw.bb103 ], [ %max.0616, %sw.bb105 ], [ %max.0616, %sw.bb107 ], [ %add68, %if.then60 ], [ %13, %vaarg.end84 ], [ %max.0616, %if.then36 ], [ %max.0616, %vaarg.end ], [ %max.0616, %sw.bb18 ], [ %max.0616, %sw.bb20 ], [ %max.0616, %sw.bb23 ], [ %max.0616, %sw.bb26 ], [ %max.0616, %sw.bb29 ], [ %max.0616, %sw.bb ], [ %max.0616, %if.else ], [ %max.0616, %sw.bb48 ], [ %max.0616, %sw.bb90 ], [ -1, %sw.bb111 ], [ -1, %sw.bb435 ], [ -1, %sw.bb429 ], [ -1, %vaarg.end426 ], [ -1, %vaarg.end409 ], [ -1, %if.end394 ], [ -1, %vaarg.end368 ], [ -1, %if.end353 ], [ -1, %if.end319 ], [ -1, %if.end285 ], [ -1, %sw.epilog249 ], [ -1, %sw.epilog177 ]
  %state.3.ph = phi i32 [ 6, %sw.bb94 ], [ 6, %sw.bb103 ], [ 6, %sw.bb105 ], [ 6, %sw.bb107 ], [ 4, %if.then60 ], [ 5, %vaarg.end84 ], [ 2, %if.then36 ], [ 3, %vaarg.end ], [ 1, %sw.bb18 ], [ 1, %sw.bb20 ], [ 1, %sw.bb23 ], [ 1, %sw.bb26 ], [ 1, %sw.bb29 ], [ 1, %sw.bb ], [ 0, %if.else ], [ 4, %sw.bb48 ], [ 6, %sw.bb90 ], [ 0, %sw.bb111 ], [ 0, %sw.bb435 ], [ 0, %sw.bb429 ], [ 0, %vaarg.end426 ], [ 0, %vaarg.end409 ], [ 0, %if.end394 ], [ 0, %vaarg.end368 ], [ 0, %if.end353 ], [ 0, %if.end319 ], [ 0, %if.end285 ], [ 0, %sw.epilog249 ], [ 0, %sw.epilog177 ]
  %flags.4.ph = phi i32 [ %flags.0619, %sw.bb94 ], [ %flags.0619, %sw.bb103 ], [ %flags.0619, %sw.bb105 ], [ %flags.0619, %sw.bb107 ], [ %flags.0619, %if.then60 ], [ %flags.0619, %vaarg.end84 ], [ %flags.0619, %if.then36 ], [ %flags.0619, %vaarg.end ], [ %or, %sw.bb18 ], [ %or21, %sw.bb20 ], [ %or24, %sw.bb23 ], [ %or27, %sw.bb26 ], [ %or30, %sw.bb29 ], [ %flags.0619, %sw.bb ], [ %flags.0619, %if.else ], [ %flags.0619, %sw.bb48 ], [ %flags.0619, %sw.bb90 ], [ 0, %sw.bb111 ], [ 0, %sw.bb435 ], [ 0, %sw.bb429 ], [ 0, %vaarg.end426 ], [ 0, %vaarg.end409 ], [ 0, %if.end394 ], [ 0, %vaarg.end368 ], [ 0, %if.end353 ], [ 0, %if.end319 ], [ 0, %if.end285 ], [ 0, %sw.epilog249 ], [ 0, %sw.epilog177 ]
  %cflags.3.ph = phi i32 [ %cflags.1, %sw.bb94 ], [ 4, %sw.bb103 ], [ 3, %sw.bb105 ], [ 5, %sw.bb107 ], [ %cflags.0621, %if.then60 ], [ %cflags.0621, %vaarg.end84 ], [ %cflags.0621, %if.then36 ], [ %cflags.0621, %vaarg.end ], [ %cflags.0621, %sw.bb18 ], [ %cflags.0621, %sw.bb20 ], [ %cflags.0621, %sw.bb23 ], [ %cflags.0621, %sw.bb26 ], [ %cflags.0621, %sw.bb29 ], [ %cflags.0621, %sw.bb ], [ %cflags.0621, %if.else ], [ %cflags.0621, %sw.bb48 ], [ 1, %sw.bb90 ], [ 0, %sw.bb111 ], [ 0, %sw.bb435 ], [ 0, %sw.bb429 ], [ 0, %vaarg.end426 ], [ 0, %vaarg.end409 ], [ 0, %if.end394 ], [ 0, %vaarg.end368 ], [ 0, %if.end353 ], [ 0, %if.end319 ], [ 0, %if.end285 ], [ 0, %sw.epilog249 ], [ 0, %sw.epilog177 ]
  %incdec.ptr93 = getelementptr inbounds i8, i8* %format.addr.0613.sink631, i64 1
  %93 = load i8, i8* %format.addr.0613.sink631, align 1, !tbaa !10
  br label %sw.epilog441

sw.epilog441:                                     ; preds = %sw.epilog441.sink.split, %sw.bb90, %if.else70, %sw.bb48, %if.else39, %sw.bb16, %if.end
  %ch.2 = phi i8 [ %ch.0611, %if.end ], [ %ch.0611, %sw.bb16 ], [ %ch.0611, %if.else39 ], [ %ch.0611, %sw.bb48 ], [ %ch.0611, %if.else70 ], [ %ch.0611, %sw.bb90 ], [ %93, %sw.epilog441.sink.split ]
  %format.addr.4 = phi i8* [ %format.addr.0613, %if.end ], [ %format.addr.0613, %sw.bb16 ], [ %format.addr.0613, %if.else39 ], [ %format.addr.0613, %sw.bb48 ], [ %format.addr.0613, %if.else70 ], [ %format.addr.0613, %sw.bb90 ], [ %incdec.ptr93, %sw.epilog441.sink.split ]
  %min.1 = phi i32 [ %min.0614, %if.end ], [ %min.0614, %sw.bb16 ], [ %min.0614, %if.else39 ], [ %min.0614, %sw.bb48 ], [ %min.0614, %if.else70 ], [ %min.0614, %sw.bb90 ], [ %min.1.ph, %sw.epilog441.sink.split ]
  %max.2 = phi i32 [ %max.0616, %if.end ], [ %max.0616, %sw.bb16 ], [ %max.0616, %if.else39 ], [ %max.0616, %sw.bb48 ], [ %max.0616, %if.else70 ], [ %max.0616, %sw.bb90 ], [ %max.2.ph, %sw.epilog441.sink.split ]
  %state.3 = phi i32 [ %state.0618, %if.end ], [ 2, %sw.bb16 ], [ 3, %if.else39 ], [ 5, %sw.bb48 ], [ 5, %if.else70 ], [ 6, %sw.bb90 ], [ %state.3.ph, %sw.epilog441.sink.split ]
  %flags.4 = phi i32 [ %flags.0619, %if.end ], [ %flags.0619, %sw.bb16 ], [ %flags.0619, %if.else39 ], [ %flags.0619, %sw.bb48 ], [ %flags.0619, %if.else70 ], [ %flags.0619, %sw.bb90 ], [ %flags.4.ph, %sw.epilog441.sink.split ]
  %cflags.3 = phi i32 [ %cflags.0621, %if.end ], [ %cflags.0621, %sw.bb16 ], [ %cflags.0621, %if.else39 ], [ %cflags.0621, %sw.bb48 ], [ %cflags.0621, %if.else70 ], [ %cflags.0621, %sw.bb90 ], [ %cflags.3.ph, %sw.epilog441.sink.split ]
  %cmp.not = icmp eq i32 %state.3, 7
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !13

while.end:                                        ; preds = %while.body, %sw.epilog441
  br i1 %cmp3, label %if.then444, label %if.end452

if.then444:                                       ; preds = %land.lhs.true, %while.end
  %94 = load i64, i64* %currlen, align 8, !tbaa !8
  %95 = load i64, i64* %maxlen, align 8, !tbaa !8
  %sub445 = add i64 %95, -1
  %cmp446 = icmp ugt i64 %94, %sub445
  %conv447 = zext i1 %cmp446 to i32
  store i32 %conv447, i32* %truncated, align 4, !tbaa !11
  br i1 %cmp446, label %if.then449, label %if.end452

if.then449:                                       ; preds = %if.then444
  store i64 %sub445, i64* %currlen, align 8, !tbaa !8
  br label %if.end452

if.end452:                                        ; preds = %if.then444, %if.then449, %while.end
  %call453 = call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef nonnull %currlen, i64* noundef %maxlen, i32 noundef 0) #10
  %tobool454.not = icmp eq i32 %call453, 0
  br i1 %tobool454.not, label %cleanup, label %if.end456

if.end456:                                        ; preds = %if.end452
  %96 = load i64, i64* %currlen, align 8, !tbaa !8
  %sub457 = add i64 %96, -1
  store i64 %sub457, i64* %retlen, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb429, %vaarg.end409, %if.end394, %vaarg.end368, %if.end353, %if.end319, %if.end285, %sw.epilog249, %sw.epilog177, %if.else, %if.end452, %if.end456
  %retval.0 = phi i32 [ 1, %if.end456 ], [ 0, %if.end452 ], [ 0, %if.else ], [ 0, %sw.epilog177 ], [ 0, %sw.epilog249 ], [ 0, %if.end285 ], [ 0, %if.end319 ], [ 0, %if.end353 ], [ 0, %vaarg.end368 ], [ 0, %if.end394 ], [ 0, %vaarg.end409 ], [ 0, %sw.bb429 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_snprintf(i8* noundef %buf, i64 noundef %n, i8* noundef %format, ...) local_unnamed_addr #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %0 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #9
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %0)
  %call = call i32 @BIO_vsnprintf(i8* noundef %buf, i64 noundef %n, i8* noundef %format, %struct.__va_list_tag* noundef nonnull %arraydecay) #10
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_vsnprintf(i8* noundef %buf, i64 noundef %n, i8* noundef %format, %struct.__va_list_tag* noundef %args) local_unnamed_addr #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %retlen = alloca i64, align 8
  %truncated = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !4
  store i64 %n, i64* %n.addr, align 8, !tbaa !8
  %0 = bitcast i64* %retlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = bitcast i32* %truncated to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  %call = call fastcc i32 @_dopr(i8** noundef nonnull %buf.addr, i8** noundef null, i64* noundef nonnull %n.addr, i64* noundef nonnull %retlen, i32* noundef nonnull %truncated, i8* noundef %format, %struct.__va_list_tag* noundef %args) #10
  %tobool.not = icmp ne i32 %call, 0
  %2 = load i32, i32* %truncated, align 4
  %tobool1.not = icmp eq i32 %2, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  %3 = load i64, i64* %retlen, align 8
  %cmp = icmp ult i64 %3, 2147483648
  %conv = trunc i64 %3 to i32
  %4 = select i1 %or.cond, i1 %cmp, i1 false
  %retval.0 = select i1 %4, i32 %conv, i32 -1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @doapr_outch(i8** nocapture noundef %sbuffer, i8** noundef %buffer, i64* nocapture noundef %currlen, i64* nocapture noundef %maxlen, i32 noundef %c) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %sbuffer, align 8, !tbaa !4
  %cmp = icmp ne i8* %0, null
  %cmp1 = icmp ne i8** %buffer, null
  %1 = or i1 %cmp1, %cmp
  br i1 %1, label %if.end, label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %currlen, align 8, !tbaa !8
  %3 = load i64, i64* %maxlen, align 8, !tbaa !8
  %cmp3.not = icmp ugt i64 %2, %3
  br i1 %cmp3.not, label %return, label %if.end7

if.end7:                                          ; preds = %if.end
  %cmp8 = icmp eq i64 %2, %3
  %or.cond = select i1 %cmp1, i1 %cmp8, i1 false
  br i1 %or.cond, label %if.then10, label %if.end39

if.then10:                                        ; preds = %if.end7
  %cmp11 = icmp ugt i64 %2, 2147482623
  br i1 %cmp11, label %return, label %if.end14

if.end14:                                         ; preds = %if.then10
  %add = add nuw nsw i64 %2, 1024
  store i64 %add, i64* %maxlen, align 8, !tbaa !8
  %4 = load i8*, i8** %buffer, align 8, !tbaa !4
  %cmp15 = icmp eq i8* %4, null
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 830) #11
  store i8* %call, i8** %buffer, align 8, !tbaa !4
  %cmp18 = icmp eq i8* %call, null
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then17
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 831, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.doapr_outch, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, i8* noundef null) #11
  br label %return

if.end21:                                         ; preds = %if.then17
  %5 = load i64, i64* %currlen, align 8, !tbaa !8
  %cmp22.not = icmp eq i64 %5, 0
  br i1 %cmp22.not, label %if.end32, label %if.then24

if.then24:                                        ; preds = %if.end21
  %6 = load i8*, i8** %sbuffer, align 8, !tbaa !4
  %cmp25.not = icmp eq i8* %6, null
  br i1 %cmp25.not, label %return, label %if.end30

if.end30:                                         ; preds = %if.then24
  %call31 = tail call i8* @memcpy(i8* noundef nonnull %call, i8* noundef nonnull %6, i64 noundef %5) #11
  br label %if.end32

if.end32:                                         ; preds = %if.end30, %if.end21
  store i8* null, i8** %sbuffer, align 8, !tbaa !4
  br label %if.end39

if.else:                                          ; preds = %if.end14
  %call33 = tail call i8* @CRYPTO_realloc(i8* noundef nonnull %4, i64 noundef %add, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 843) #11
  %cmp34 = icmp eq i8* %call33, null
  br i1 %cmp34, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else
  store i8* %call33, i8** %buffer, align 8, !tbaa !4
  br label %if.end39

cleanup:                                          ; preds = %if.else
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 845, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.doapr_outch, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, i8* noundef null) #11
  br label %return

if.end39:                                         ; preds = %cleanup.thread, %if.end32, %if.end7
  %7 = load i64, i64* %currlen, align 8, !tbaa !8
  %8 = load i64, i64* %maxlen, align 8, !tbaa !8
  %cmp40 = icmp ult i64 %7, %8
  br i1 %cmp40, label %if.then42, label %return

if.then42:                                        ; preds = %if.end39
  %9 = load i8*, i8** %sbuffer, align 8, !tbaa !4
  %tobool43.not = icmp eq i8* %9, null
  %conv47 = trunc i32 %c to i8
  br i1 %tobool43.not, label %if.else46, label %if.then44

if.then44:                                        ; preds = %if.then42
  %inc = add nuw i64 %7, 1
  store i64 %inc, i64* %currlen, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %7
  store i8 %conv47, i8* %arrayidx, align 1, !tbaa !10
  br label %return

if.else46:                                        ; preds = %if.then42
  %10 = load i8*, i8** %buffer, align 8, !tbaa !4
  %inc48 = add nuw i64 %7, 1
  store i64 %inc48, i64* %currlen, align 8, !tbaa !8
  %arrayidx49 = getelementptr inbounds i8, i8* %10, i64 %7
  store i8 %conv47, i8* %arrayidx49, align 1, !tbaa !10
  br label %return

return:                                           ; preds = %cleanup, %if.end39, %if.else46, %if.then44, %if.then24, %if.then10, %if.end, %entry, %if.then20
  %retval.1 = phi i32 [ 0, %if.then20 ], [ 0, %cleanup ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.then10 ], [ 0, %if.then24 ], [ 1, %if.then44 ], [ 1, %if.else46 ], [ 1, %if.end39 ]
  ret i32 %retval.1
}

declare i32 @ossl_ctype_check(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @fmtint(i8** nocapture noundef %sbuffer, i8** noundef %buffer, i64* nocapture noundef %currlen, i64* nocapture noundef %maxlen, i64 noundef %value, i32 noundef %base, i32 noundef %min, i32 noundef %max, i32 noundef %flags) unnamed_addr #0 {
entry:
  %convert = alloca [26 x i8], align 16
  %0 = getelementptr inbounds [26 x i8], [26 x i8]* %convert, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %0) #9
  %1 = icmp sgt i32 %max, 0
  %spec.store.select = select i1 %1, i32 %max, i32 0
  %and = and i32 %flags, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then1, label %if.end14

if.then1:                                         ; preds = %entry
  %cmp2 = icmp slt i64 %value, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then1
  %sub = sub i64 0, %value
  br label %if.end14

if.else:                                          ; preds = %if.then1
  %and4 = and i32 %flags, 2
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else7, label %if.end14

if.else7:                                         ; preds = %if.else
  %and8 = and i32 %flags, 4
  %tobool9.not = icmp eq i32 %and8, 0
  %2 = shl nuw nsw i32 %and8, 3
  br label %if.end14

if.end14:                                         ; preds = %if.else7, %if.else, %if.then3, %entry
  %tobool47.not = phi i1 [ false, %if.then3 ], [ true, %entry ], [ false, %if.else ], [ %tobool9.not, %if.else7 ]
  %signvalue.0 = phi i32 [ 45, %if.then3 ], [ 0, %entry ], [ 43, %if.else ], [ %2, %if.else7 ]
  %uvalue.0 = phi i64 [ %sub, %if.then3 ], [ %value, %entry ], [ %value, %if.else ], [ %value, %if.else7 ]
  %and15 = and i32 %flags, 8
  %cmp18 = icmp eq i32 %base, 8
  %spec.select217 = select i1 %cmp18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %cmp21 = icmp eq i32 %base, 16
  %spec.select219 = select i1 %cmp21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %spec.select217
  %and25 = and i32 %flags, 32
  %tobool26.not = icmp eq i32 %and25, 0
  %cond = select i1 %tobool26.not, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0)
  %conv = zext i32 %base to i64
  br label %do.body

do.body:                                          ; preds = %do.body, %if.end14
  %indvars.iv = phi i64 [ %indvars.iv.next, %do.body ], [ 0, %if.end14 ]
  %uvalue.1 = phi i64 [ %div, %do.body ], [ %uvalue.0, %if.end14 ]
  %rem = urem i64 %uvalue.1, %conv
  %arrayidx = getelementptr inbounds i8, i8* %cond, i64 %rem
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx30 = getelementptr inbounds [26 x i8], [26 x i8]* %convert, i64 0, i64 %indvars.iv
  store i8 %3, i8* %arrayidx30, align 1, !tbaa !10
  %div = udiv i64 %uvalue.1, %conv
  %tobool32 = icmp uge i64 %uvalue.1, %conv
  %cmp33 = icmp ult i64 %indvars.iv, 25
  %4 = select i1 %tobool32, i1 %cmp33, i1 false
  br i1 %4, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.body
  %tobool16.not = icmp eq i32 %and15, 0
  %prefix.1 = select i1 %tobool16.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %spec.select219
  %5 = trunc i64 %indvars.iv to i32
  %6 = trunc i64 %indvars.iv.next to i32
  %cmp36 = icmp eq i32 %6, 26
  %spec.select218 = select i1 %cmp36, i32 %5, i32 %6
  %idxprom40 = zext i32 %spec.select218 to i64
  %arrayidx41 = getelementptr inbounds [26 x i8], [26 x i8]* %convert, i64 0, i64 %idxprom40
  store i8 0, i8* %arrayidx41, align 1, !tbaa !10
  %sub42 = sub nsw i32 %spec.store.select, %spec.select218
  %cmp43.not = icmp slt i32 %spec.store.select, %spec.select218
  %cond45 = select i1 %cmp43.not, i32 %spec.select218, i32 %spec.store.select
  %not.tobool47.not = xor i1 %tobool47.not, true
  %cond48.neg = sext i1 %not.tobool47.not to i32
  %call = tail call i64 @strlen(i8* noundef %prefix.1) #12
  %7 = trunc i64 %call to i32
  %.neg220 = add i32 %cond48.neg, %min
  %8 = add i32 %cond45, %7
  %conv52 = sub i32 %.neg220, %8
  %9 = icmp sgt i32 %sub42, 0
  %spec.store.select144 = select i1 %9, i32 %sub42, i32 0
  %10 = icmp sgt i32 %conv52, 0
  %spec.store.select143 = select i1 %10, i32 %conv52, i32 0
  %and61 = and i32 %flags, 16
  %tobool62.not = icmp eq i32 %and61, 0
  %cmp64.not = icmp ult i32 %spec.store.select144, %spec.store.select143
  %cond69 = select i1 %cmp64.not, i32 %spec.store.select143, i32 %spec.store.select144
  %spadlen.0 = select i1 %tobool62.not, i32 %spec.store.select143, i32 0
  %zpadlen.0 = select i1 %tobool62.not, i32 %spec.store.select144, i32 %cond69
  %and71 = and i32 %flags, 1
  %tobool72.not = icmp eq i32 %and71, 0
  %sub74 = sub nsw i32 0, %spadlen.0
  %spec.select = select i1 %tobool72.not, i32 %spadlen.0, i32 %sub74
  %cmp76226 = icmp sgt i32 %spec.select, 0
  br i1 %cmp76226, label %while.body, label %while.end

while.body:                                       ; preds = %do.end, %if.end81
  %spadlen.2227 = phi i32 [ %dec82, %if.end81 ], [ %spec.select, %do.end ]
  %call78 = tail call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef %currlen, i64* noundef %maxlen, i32 noundef 32) #10
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %cleanup, label %if.end81

if.end81:                                         ; preds = %while.body
  %dec82 = add nsw i32 %spadlen.2227, -1
  %cmp76 = icmp sgt i32 %spadlen.2227, 1
  br i1 %cmp76, label %while.body, label %while.end, !llvm.loop !16

while.end:                                        ; preds = %if.end81, %do.end
  %spadlen.2.lcssa = phi i32 [ %spec.select, %do.end ], [ 0, %if.end81 ]
  br i1 %tobool47.not, label %if.end89, label %if.then84

if.then84:                                        ; preds = %while.end
  %call85 = tail call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef %currlen, i64* noundef %maxlen, i32 noundef %signvalue.0) #10
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %cleanup, label %if.end89

if.end89:                                         ; preds = %if.then84, %while.end
  %11 = load i8, i8* %prefix.1, align 1, !tbaa !10
  %tobool91.not228 = icmp eq i8 %11, 0
  br i1 %tobool91.not228, label %while.end98, label %while.body92

while.cond90:                                     ; preds = %while.body92
  %12 = load i8, i8* %incdec.ptr, align 1, !tbaa !10
  %tobool91.not = icmp eq i8 %12, 0
  br i1 %tobool91.not, label %while.end98, label %while.body92, !llvm.loop !17

while.body92:                                     ; preds = %if.end89, %while.cond90
  %13 = phi i8 [ %12, %while.cond90 ], [ %11, %if.end89 ]
  %prefix.2229 = phi i8* [ %incdec.ptr, %while.cond90 ], [ %prefix.1, %if.end89 ]
  %conv93 = sext i8 %13 to i32
  %call94 = tail call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef %currlen, i64* noundef %maxlen, i32 noundef %conv93) #10
  %tobool95.not = icmp eq i32 %call94, 0
  %incdec.ptr = getelementptr inbounds i8, i8* %prefix.2229, i64 1
  br i1 %tobool95.not, label %cleanup, label %while.cond90

while.end98:                                      ; preds = %while.cond90, %if.end89
  %cmp99 = icmp sgt i32 %zpadlen.0, 0
  br i1 %cmp99, label %while.body105, label %while.cond113.preheader

while.body105:                                    ; preds = %while.end98, %if.end109
  %zpadlen.1 = phi i32 [ %dec110, %if.end109 ], [ %zpadlen.0, %while.end98 ]
  %call106 = tail call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef %currlen, i64* noundef %maxlen, i32 noundef 48) #10
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %cleanup, label %if.end109

if.end109:                                        ; preds = %while.body105
  %dec110 = add nsw i32 %zpadlen.1, -1
  %cmp103.old = icmp sgt i32 %zpadlen.1, 1
  br i1 %cmp103.old, label %while.body105, label %while.cond113.preheader

while.cond113.preheader:                          ; preds = %if.end109, %while.end98
  br label %while.cond113

while.cond113:                                    ; preds = %while.cond113.preheader, %while.body116
  %indvars.iv239 = phi i64 [ %15, %while.body116 ], [ %idxprom40, %while.cond113.preheader ]
  %14 = trunc i64 %indvars.iv239 to i32
  %cmp114 = icmp sgt i32 %14, 0
  br i1 %cmp114, label %while.body116, label %while.cond126.preheader

while.cond126.preheader:                          ; preds = %while.cond113
  %cmp127230 = icmp slt i32 %spadlen.2.lcssa, 0
  br i1 %cmp127230, label %while.body129, label %cleanup

while.body116:                                    ; preds = %while.cond113
  %15 = add nsw i64 %indvars.iv239, -1
  %arrayidx119 = getelementptr inbounds [26 x i8], [26 x i8]* %convert, i64 0, i64 %15
  %16 = load i8, i8* %arrayidx119, align 1, !tbaa !10
  %conv120 = sext i8 %16 to i32
  %call121 = tail call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef %currlen, i64* noundef %maxlen, i32 noundef %conv120) #10
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %cleanup, label %while.cond113, !llvm.loop !18

while.cond126:                                    ; preds = %while.body129
  %inc134 = add i32 %spadlen.3231, 1
  %exitcond.not = icmp eq i32 %inc134, 0
  br i1 %exitcond.not, label %cleanup, label %while.body129, !llvm.loop !19

while.body129:                                    ; preds = %while.cond126.preheader, %while.cond126
  %spadlen.3231 = phi i32 [ %inc134, %while.cond126 ], [ %spadlen.2.lcssa, %while.cond126.preheader ]
  %call130 = tail call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef %currlen, i64* noundef %maxlen, i32 noundef 32) #10
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %cleanup, label %while.cond126

cleanup:                                          ; preds = %while.body, %while.body92, %while.body105, %while.body116, %while.body129, %while.cond126, %while.cond126.preheader, %if.then84
  %retval.0 = phi i32 [ 0, %if.then84 ], [ 1, %while.cond126.preheader ], [ 0, %while.body129 ], [ 1, %while.cond126 ], [ 0, %while.body116 ], [ 0, %while.body105 ], [ 0, %while.body92 ], [ 0, %while.body ]
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @fmtfp(i8** nocapture noundef %sbuffer, i8** noundef %buffer, i64* nocapture noundef %currlen, i64* nocapture noundef %maxlen, double noundef %fvalue, i32 noundef %min, i32 noundef %max, i32 noundef %flags, i32 noundef %style) unnamed_addr #0 {
entry:
  %iconvert = alloca [20 x i8], align 16
  %fconvert = alloca [20 x i8], align 16
  %econvert = alloca [20 x i8], align 16
  %0 = getelementptr inbounds [20 x i8], [20 x i8]* %iconvert, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #9
  %1 = getelementptr inbounds [20 x i8], [20 x i8]* %fconvert, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %1) #9
  %2 = getelementptr inbounds [20 x i8], [20 x i8]* %econvert, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %2) #9
  %cmp = icmp slt i32 %max, 0
  %spec.select = select i1 %cmp, i32 6, i32 %max
  %cmp1 = fcmp olt double %fvalue, 0.000000e+00
  br i1 %cmp1, label %if.end10, label %if.else

if.else:                                          ; preds = %entry
  %and = and i32 %flags, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else4, label %if.end10

if.else4:                                         ; preds = %if.else
  %and5 = and i32 %flags, 4
  %tobool6.not = icmp eq i32 %and5, 0
  %3 = shl nuw nsw i32 %and5, 3
  br label %if.end10

if.end10:                                         ; preds = %if.else4, %if.else, %entry
  %tobool182.not = phi i1 [ false, %entry ], [ false, %if.else ], [ %tobool6.not, %if.else4 ]
  %signvalue.0 = phi i32 [ 45, %entry ], [ 43, %if.else ], [ %3, %if.else4 ]
  %cmp11 = icmp eq i32 %style, 2
  br i1 %cmp11, label %if.then12, label %if.end30

if.then12:                                        ; preds = %if.end10
  %cmp13 = fcmp oeq double %fvalue, 0.000000e+00
  br i1 %cmp13, label %if.then32, label %if.else15

if.else15:                                        ; preds = %if.then12
  %cmp16 = fcmp olt double %fvalue, 1.000000e-04
  br i1 %cmp16, label %if.then32, label %if.else18

if.else18:                                        ; preds = %if.else15
  %cmp19 = icmp eq i32 %spec.select, 0
  %cmp20 = fcmp oge double %fvalue, 1.000000e+01
  %or.cond = and i1 %cmp20, %cmp19
  br i1 %or.cond, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else18
  br i1 %cmp19, label %if.else25, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %lor.lhs.false
  %call = tail call fastcc double @pow_10(i32 noundef %spec.select) #10
  %cmp23 = fcmp ugt double %call, %fvalue
  br i1 %cmp23, label %if.else25, label %if.then32

if.else25:                                        ; preds = %land.lhs.true22, %lor.lhs.false
  br label %if.then32

if.end30:                                         ; preds = %if.end10
  %cmp31.not = icmp eq i32 %style, 0
  br i1 %cmp31.not, label %if.end62, label %if.then32

if.then32:                                        ; preds = %if.else25, %if.then12, %if.else15, %if.else18, %land.lhs.true22, %if.end30
  %realstyle.0557 = phi i32 [ %style, %if.end30 ], [ 1, %land.lhs.true22 ], [ 1, %if.else18 ], [ 1, %if.else15 ], [ 0, %if.then12 ], [ 0, %if.else25 ]
  %cmp33 = fcmp une double %fvalue, 0.000000e+00
  br i1 %cmp33, label %while.cond.preheader, label %if.end40

while.cond.preheader:                             ; preds = %if.then32
  %cmp35574 = fcmp olt double %fvalue, 1.000000e+00
  br i1 %cmp35574, label %while.body, label %while.cond36.preheader

while.cond36.preheader:                           ; preds = %while.body, %while.cond.preheader
  %tmpvalue.0.lcssa = phi double [ %fvalue, %while.cond.preheader ], [ %mul, %while.body ]
  %exp.0.lcssa = phi i64 [ 0, %while.cond.preheader ], [ %dec, %while.body ]
  %cmp37578 = fcmp ogt double %tmpvalue.0.lcssa, 1.000000e+01
  br i1 %cmp37578, label %while.body38, label %if.end40

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %exp.0576 = phi i64 [ %dec, %while.body ], [ 0, %while.cond.preheader ]
  %tmpvalue.0575 = phi double [ %mul, %while.body ], [ %fvalue, %while.cond.preheader ]
  %mul = fmul double %tmpvalue.0575, 1.000000e+01
  %dec = add nsw i64 %exp.0576, -1
  %cmp35 = fcmp olt double %mul, 1.000000e+00
  br i1 %cmp35, label %while.body, label %while.cond36.preheader, !llvm.loop !20

while.body38:                                     ; preds = %while.cond36.preheader, %while.body38
  %exp.1580 = phi i64 [ %inc, %while.body38 ], [ %exp.0.lcssa, %while.cond36.preheader ]
  %tmpvalue.1579 = phi double [ %div, %while.body38 ], [ %tmpvalue.0.lcssa, %while.cond36.preheader ]
  %div = fdiv double %tmpvalue.1579, 1.000000e+01
  %inc = add nsw i64 %exp.1580, 1
  %cmp37 = fcmp ogt double %div, 1.000000e+01
  br i1 %cmp37, label %while.body38, label %if.end40, !llvm.loop !21

if.end40:                                         ; preds = %while.body38, %while.cond36.preheader, %if.then32
  %tmpvalue.2 = phi double [ %fvalue, %if.then32 ], [ %tmpvalue.0.lcssa, %while.cond36.preheader ], [ %div, %while.body38 ]
  %exp.2 = phi i64 [ 0, %if.then32 ], [ %exp.0.lcssa, %while.cond36.preheader ], [ %inc, %while.body38 ]
  br i1 %cmp11, label %if.then42, label %if.end57

if.then42:                                        ; preds = %if.end40
  %cmp43 = icmp eq i32 %spec.select, 0
  %spec.select545 = select i1 %cmp43, i32 1, i32 %spec.select
  %cmp46 = icmp eq i32 %realstyle.0557, 0
  br i1 %cmp46, label %if.then47, label %if.else54

if.then47:                                        ; preds = %if.then42
  %4 = trunc i64 %exp.2 to i32
  %5 = xor i32 %4, -1
  %conv48 = add i32 %spec.select545, %5
  %cmp49 = icmp slt i32 %conv48, 0
  br i1 %cmp49, label %cleanup347.sink.split, label %if.end62

if.else54:                                        ; preds = %if.then42
  %dec55 = add nsw i32 %spec.select545, -1
  br label %if.end57

if.end57:                                         ; preds = %if.else54, %if.end40
  %max.addr.2 = phi i32 [ %dec55, %if.else54 ], [ %spec.select, %if.end40 ]
  %cmp58 = icmp eq i32 %realstyle.0557, 1
  %spec.select663 = select i1 %cmp58, double %tmpvalue.2, double %fvalue
  br label %if.end62

if.end62:                                         ; preds = %if.end57, %if.then47, %if.end30
  %realstyle.0559 = phi i32 [ 0, %if.end30 ], [ 0, %if.then47 ], [ %realstyle.0557, %if.end57 ]
  %max.addr.3 = phi i32 [ %spec.select, %if.end30 ], [ %conv48, %if.then47 ], [ %max.addr.2, %if.end57 ]
  %fvalue.addr.0 = phi double [ %fvalue, %if.end30 ], [ %fvalue, %if.then47 ], [ %spec.select663, %if.end57 ]
  %exp.3 = phi i64 [ 0, %if.end30 ], [ %exp.2, %if.then47 ], [ %exp.2, %if.end57 ]
  %call63 = tail call fastcc double @abs_val(double noundef %fvalue.addr.0) #10
  %cmp64 = fcmp ult double %call63, 0x43F0000000000000
  br i1 %cmp64, label %if.end68, label %cleanup347.sink.split

if.end68:                                         ; preds = %if.end62
  %conv69 = fptoui double %call63 to i64
  %6 = icmp slt i32 %max.addr.3, 9
  %spec.select547 = select i1 %6, i32 %max.addr.3, i32 9
  %call74 = tail call fastcc double @pow_10(i32 noundef %spec.select547) #10
  %call75 = tail call fastcc i64 @roundv(double noundef %call74) #10
  %conv77 = uitofp i64 %conv69 to double
  %sub78 = fsub double %call63, %conv77
  %mul79 = fmul double %sub78, %call74
  %call80 = tail call fastcc i64 @roundv(double noundef %mul79) #10
  %cmp81.not = icmp ult i64 %call80, %call75
  %not.cmp81.not = xor i1 %cmp81.not, true
  %inc84 = zext i1 %not.cmp81.not to i64
  %intpart.0 = add i64 %inc84, %conv69
  %sub85 = select i1 %cmp81.not, i64 0, i64 %call75
  br label %do.body

do.body:                                          ; preds = %do.body, %if.end68
  %indvars.iv = phi i64 [ %indvars.iv.next, %do.body ], [ 0, %if.end68 ]
  %intpart.1 = phi i64 [ %div89, %do.body ], [ %intpart.0, %if.end68 ]
  %rem = urem i64 %intpart.1, 10
  %arrayidx = getelementptr inbounds [11 x i8], [11 x i8]* @.str.6, i64 0, i64 %rem
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx88 = getelementptr inbounds [20 x i8], [20 x i8]* %iconvert, i64 0, i64 %indvars.iv
  store i8 %7, i8* %arrayidx88, align 1, !tbaa !10
  %div89 = udiv i64 %intpart.1, 10
  %8 = icmp ugt i64 %intpart.1, 9
  %cmp91 = icmp ult i64 %indvars.iv, 19
  %9 = select i1 %8, i1 %cmp91, i1 false
  br i1 %9, label %do.body, label %do.end, !llvm.loop !22

do.end:                                           ; preds = %do.body
  %fracpart.0 = sub i64 %call80, %sub85
  %10 = trunc i64 %indvars.iv to i32
  %11 = trunc i64 %indvars.iv.next to i32
  %cmp94 = icmp eq i32 %11, 20
  %spec.select548 = select i1 %cmp94, i32 %10, i32 %11
  %idxprom99561 = zext i32 %spec.select548 to i64
  %arrayidx100 = getelementptr inbounds [20 x i8], [20 x i8]* %iconvert, i64 0, i64 %idxprom99561
  store i8 0, i8* %arrayidx100, align 1, !tbaa !10
  %12 = zext i32 %spec.select547 to i64
  %smin = call i32 @llvm.smin.i32(i32 %max.addr.3, i32 1)
  %13 = add i32 %smin, -1
  %smin617 = call i32 @llvm.smin.i32(i32 %max.addr.3, i32 0)
  br label %while.cond101.outer

while.cond101.outer:                              ; preds = %if.then114, %do.end
  %indvars.iv615 = phi i64 [ %indvars.iv.next616, %if.then114 ], [ %12, %do.end ]
  %fracpart.1.ph = phi i64 [ %div116, %if.then114 ], [ %fracpart.0, %do.end ]
  %14 = trunc i64 %indvars.iv615 to i32
  %cmp102583 = icmp sgt i32 %14, 0
  br i1 %cmp102583, label %while.body104, label %while.end128.thread

while.body104:                                    ; preds = %while.cond101.outer, %if.end121
  %indvars.iv612 = phi i64 [ %indvars.iv.next613, %if.end121 ], [ 0, %while.cond101.outer ]
  %fracpart.1585 = phi i64 [ %div127, %if.end121 ], [ %fracpart.1.ph, %while.cond101.outer ]
  %cmp108 = icmp eq i64 %indvars.iv612, 0
  %or.cond365 = select i1 %cmp11, i1 %cmp108, i1 false
  %rem111 = urem i64 %fracpart.1585, 10
  %div127 = udiv i64 %fracpart.1585, 10
  %cmp112 = icmp eq i64 %rem111, 0
  %or.cond549 = select i1 %or.cond365, i1 %cmp112, i1 false
  br i1 %or.cond549, label %if.then114, label %if.end121

if.then114:                                       ; preds = %while.body104
  %indvars.iv.next616 = add nsw i64 %indvars.iv615, -1
  %div116 = udiv i64 %fracpart.1585, 10
  %cmp117 = icmp sgt i32 %14, 1
  br i1 %cmp117, label %while.cond101.outer, label %while.end128.thread, !llvm.loop !23

if.end121:                                        ; preds = %while.body104
  %arrayidx123 = getelementptr inbounds [11 x i8], [11 x i8]* @.str.6, i64 0, i64 %rem111
  %15 = load i8, i8* %arrayidx123, align 1, !tbaa !10
  %indvars.iv.next613 = add nuw nsw i64 %indvars.iv612, 1
  %arrayidx126 = getelementptr inbounds [20 x i8], [20 x i8]* %fconvert, i64 0, i64 %indvars.iv612
  store i8 %15, i8* %arrayidx126, align 1, !tbaa !10
  %exitcond.not = icmp eq i64 %indvars.iv.next613, %indvars.iv615
  br i1 %exitcond.not, label %while.end128, label %while.body104, !llvm.loop !23

while.end128:                                     ; preds = %if.end121
  %16 = trunc i64 %indvars.iv615 to i32
  %cmp130 = icmp eq i32 %16, 20
  %spec.select664 = select i1 %cmp130, i32 19, i32 %16
  br label %while.end128.thread

while.end128.thread:                              ; preds = %if.then114, %while.cond101.outer, %while.end128
  %max.addr.6642 = phi i32 [ %16, %while.end128 ], [ %13, %if.then114 ], [ %smin617, %while.cond101.outer ]
  %17 = phi i32 [ %spec.select664, %while.end128 ], [ 0, %while.cond101.outer ], [ 0, %if.then114 ]
  %idxprom135 = sext i32 %17 to i64
  %arrayidx136 = getelementptr inbounds [20 x i8], [20 x i8]* %fconvert, i64 0, i64 %idxprom135
  store i8 0, i8* %arrayidx136, align 1, !tbaa !10
  %cmp137 = icmp eq i32 %realstyle.0559, 1
  br i1 %cmp137, label %if.then139, label %if.end176

if.then139:                                       ; preds = %while.end128.thread
  %18 = tail call i64 @llvm.abs.i64(i64 %exp.3, i1 true)
  %tmpexp.0 = trunc i64 %18 to i32
  br label %do.body148

do.body148:                                       ; preds = %do.body148, %if.then139
  %indvars.iv619 = phi i64 [ %indvars.iv.next620, %do.body148 ], [ 0, %if.then139 ]
  %tmpexp.1 = phi i32 [ %div155, %do.body148 ], [ %tmpexp.0, %if.then139 ]
  %rem149 = srem i32 %tmpexp.1, 10
  %idxprom150 = sext i32 %rem149 to i64
  %arrayidx151 = getelementptr inbounds [11 x i8], [11 x i8]* @.str.6, i64 0, i64 %idxprom150
  %19 = load i8, i8* %arrayidx151, align 1, !tbaa !10
  %indvars.iv.next620 = add nuw nsw i64 %indvars.iv619, 1
  %arrayidx154 = getelementptr inbounds [20 x i8], [20 x i8]* %econvert, i64 0, i64 %indvars.iv619
  store i8 %19, i8* %arrayidx154, align 1, !tbaa !10
  %div155 = sdiv i32 %tmpexp.1, 10
  %cmp157 = icmp sgt i32 %tmpexp.1, 9
  %cmp160 = icmp ult i64 %indvars.iv619, 19
  %20 = select i1 %cmp157, i1 %cmp160, i1 false
  br i1 %20, label %do.body148, label %do.end163, !llvm.loop !24

do.end163:                                        ; preds = %do.body148
  br i1 %cmp157, label %cleanup347.sink.split, label %if.end168

if.end168:                                        ; preds = %do.end163
  %21 = trunc i64 %indvars.iv.next620 to i32
  %22 = trunc i64 %indvars.iv619 to i32
  %cmp169 = icmp eq i32 %22, 0
  br i1 %cmp169, label %if.then171, label %if.end176

if.then171:                                       ; preds = %if.end168
  %arrayidx174 = getelementptr inbounds [20 x i8], [20 x i8]* %econvert, i64 0, i64 1
  store i8 48, i8* %arrayidx174, align 1, !tbaa !10
  br label %if.end176

if.end176:                                        ; preds = %if.then171, %if.end168, %while.end128.thread
  %eplace.3 = phi i32 [ 0, %while.end128.thread ], [ %21, %if.end168 ], [ 2, %if.then171 ]
  %cmp179 = icmp sgt i32 %max.addr.6642, 0
  %cond.neg = sext i1 %cmp179 to i32
  %not.tobool182.not = xor i1 %tobool182.not, true
  %cond183.neg = sext i1 %not.tobool182.not to i32
  %add188.neg = sub i32 -2, %eplace.3
  %sub189.neg600 = select i1 %cmp137, i32 %add188.neg, i32 0
  %.neg = add i32 %cond183.neg, %min
  %23 = add i32 %spec.select548, %max.addr.6642
  %sub181 = sub i32 %.neg, %23
  %sub184 = add i32 %sub181, %cond.neg
  %padlen.0 = add i32 %sub184, %sub189.neg600
  %sub191 = sub nsw i32 %max.addr.6642, %17
  %24 = icmp sgt i32 %sub191, 0
  %25 = icmp sgt i32 %padlen.0, 0
  %padlen.1 = select i1 %25, i32 %padlen.0, i32 0
  %and200 = and i32 %flags, 1
  %tobool201.not = icmp eq i32 %and200, 0
  %sub203 = sub nsw i32 0, %padlen.1
  %padlen.2 = select i1 %tobool201.not, i32 %padlen.1, i32 %sub203
  %and205 = and i32 %flags, 16
  %tobool206 = icmp ne i32 %and205, 0
  %cmp208 = icmp sgt i32 %padlen.2, 0
  %or.cond366 = select i1 %tobool206, i1 %cmp208, i1 false
  br i1 %or.cond366, label %if.then210, label %if.end229

if.then210:                                       ; preds = %if.end176
  br i1 %tobool182.not, label %while.body222.preheader, label %if.then212

if.then212:                                       ; preds = %if.then210
  %call213 = tail call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef %currlen, i64* noundef %maxlen, i32 noundef %signvalue.0) #10
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %cleanup347, label %if.end218

if.end218:                                        ; preds = %if.then212
  %dec217 = add nsw i32 %padlen.2, -1
  %cmp220590.not = icmp eq i32 %dec217, 0
  br i1 %cmp220590.not, label %if.end245, label %while.body222.preheader

while.body222.preheader:                          ; preds = %if.then210, %if.end218
  %padlen.4591.ph = phi i32 [ %padlen.2, %if.then210 ], [ %dec217, %if.end218 ]
  br label %while.body222

while.cond219:                                    ; preds = %while.body222
  %dec227 = add nsw i32 %padlen.4591, -1
  %cmp220 = icmp sgt i32 %padlen.4591, 1
  br i1 %cmp220, label %while.body222, label %if.end245, !llvm.loop !25

while.body222:                                    ; preds = %while.body222.preheader, %while.cond219
  %padlen.4591 = phi i32 [ %dec227, %while.cond219 ], [ %padlen.4591.ph, %while.body222.preheader ]
  %call223 = tail call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef %currlen, i64* noundef %maxlen, i32 noundef 48) #10
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %cleanup347, label %while.cond219

if.end229:                                        ; preds = %if.end176
  %cmp231592 = icmp sgt i32 %padlen.2, 0
  br i1 %cmp231592, label %while.body233, label %while.end239

while.body233:                                    ; preds = %if.end229, %if.end237
  %padlen.6593 = phi i32 [ %dec238, %if.end237 ], [ %padlen.2, %if.end229 ]
  %call234 = tail call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef %currlen, i64* noundef %maxlen, i32 noundef 32) #10
  %tobool235.not = icmp eq i32 %call234, 0
  br i1 %tobool235.not, label %cleanup347, label %if.end237

if.end237:                                        ; preds = %while.body233
  %dec238 = add nsw i32 %padlen.6593, -1
  %cmp231 = icmp sgt i32 %padlen.6593, 1
  br i1 %cmp231, label %while.body233, label %while.end239, !llvm.loop !26

while.end239:                                     ; preds = %if.end237, %if.end229
  %padlen.6.lcssa = phi i32 [ %padlen.2, %if.end229 ], [ 0, %if.end237 ]
  %tobool240.not = icmp eq i32 %signvalue.0, 0
  br i1 %tobool240.not, label %if.end245, label %land.lhs.true241

land.lhs.true241:                                 ; preds = %while.end239
  %call242 = tail call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef %currlen, i64* noundef %maxlen, i32 noundef %signvalue.0) #10
  %tobool243.not = icmp eq i32 %call242, 0
  br i1 %tobool243.not, label %cleanup347, label %if.end245

if.end245:                                        ; preds = %while.cond219, %if.end218, %land.lhs.true241, %while.end239
  %padlen.6.lcssa653 = phi i32 [ %padlen.6.lcssa, %land.lhs.true241 ], [ %padlen.6.lcssa, %while.end239 ], [ 0, %if.end218 ], [ 0, %while.cond219 ]
  br label %while.cond246

while.cond246:                                    ; preds = %while.body249, %if.end245
  %indvars.iv622 = phi i64 [ %27, %while.body249 ], [ %idxprom99561, %if.end245 ]
  %26 = trunc i64 %indvars.iv622 to i32
  %cmp247 = icmp sgt i32 %26, 0
  br i1 %cmp247, label %while.body249, label %while.end258

while.body249:                                    ; preds = %while.cond246
  %27 = add nsw i64 %indvars.iv622, -1
  %arrayidx252 = getelementptr inbounds [20 x i8], [20 x i8]* %iconvert, i64 0, i64 %27
  %28 = load i8, i8* %arrayidx252, align 1, !tbaa !10
  %conv253 = sext i8 %28 to i32
  %call254 = tail call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef %currlen, i64* noundef %maxlen, i32 noundef %conv253) #10
  %tobool255.not = icmp eq i32 %call254, 0
  br i1 %tobool255.not, label %cleanup347, label %while.cond246, !llvm.loop !27

while.end258:                                     ; preds = %while.cond246
  %and262 = and i32 %flags, 8
  %tobool263.not = icmp ne i32 %and262, 0
  %29 = or i1 %tobool263.not, %cmp179
  br i1 %29, label %if.then264, label %if.end282

if.then264:                                       ; preds = %while.end258
  %call265 = tail call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef %currlen, i64* noundef %maxlen, i32 noundef 46) #10
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %cleanup347, label %while.cond269.preheader

while.cond269.preheader:                          ; preds = %if.then264
  %30 = zext i32 %17 to i64
  br label %while.cond269

while.cond269:                                    ; preds = %while.cond269.preheader, %while.body272
  %indvars.iv626 = phi i64 [ %30, %while.cond269.preheader ], [ %32, %while.body272 ]
  %31 = trunc i64 %indvars.iv626 to i32
  %cmp270 = icmp sgt i32 %31, 0
  br i1 %cmp270, label %while.body272, label %if.end282

while.body272:                                    ; preds = %while.cond269
  %32 = add nsw i64 %indvars.iv626, -1
  %arrayidx275 = getelementptr inbounds [20 x i8], [20 x i8]* %fconvert, i64 0, i64 %32
  %33 = load i8, i8* %arrayidx275, align 1, !tbaa !10
  %conv276 = sext i8 %33 to i32
  %call277 = tail call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef %currlen, i64* noundef %maxlen, i32 noundef %conv276) #10
  %tobool278.not = icmp eq i32 %call277, 0
  br i1 %tobool278.not, label %cleanup347, label %while.cond269, !llvm.loop !28

if.end282:                                        ; preds = %while.cond269, %while.end258
  br i1 %24, label %while.body286, label %while.end292

while.cond283:                                    ; preds = %while.body286
  %dec291 = add nsw i32 %zpadlen.0595, -1
  %cmp284 = icmp sgt i32 %zpadlen.0595, 1
  br i1 %cmp284, label %while.body286, label %while.end292, !llvm.loop !29

while.body286:                                    ; preds = %if.end282, %while.cond283
  %zpadlen.0595 = phi i32 [ %dec291, %while.cond283 ], [ %sub191, %if.end282 ]
  %call287 = tail call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef %currlen, i64* noundef %maxlen, i32 noundef 48) #10
  %tobool288.not = icmp eq i32 %call287, 0
  br i1 %tobool288.not, label %cleanup347, label %while.cond283

while.end292:                                     ; preds = %while.cond283, %if.end282
  br i1 %cmp137, label %if.then295, label %if.end336

if.then295:                                       ; preds = %while.end292
  %and296 = and i32 %flags, 32
  %34 = xor i32 %and296, 101
  %call303 = tail call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef %currlen, i64* noundef %maxlen, i32 noundef %34) #10
  %tobool304.not = icmp eq i32 %call303, 0
  br i1 %tobool304.not, label %cleanup347, label %if.end306

if.end306:                                        ; preds = %if.then295
  %cmp307 = icmp slt i64 %exp.3, 0
  br i1 %cmp307, label %if.then309, label %if.else314

if.then309:                                       ; preds = %if.end306
  %call310 = tail call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef %currlen, i64* noundef %maxlen, i32 noundef 45) #10
  %tobool311.not = icmp eq i32 %call310, 0
  br i1 %tobool311.not, label %cleanup347, label %if.end319

if.else314:                                       ; preds = %if.end306
  %call315 = tail call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef %currlen, i64* noundef %maxlen, i32 noundef 43) #10
  %tobool316.not = icmp eq i32 %call315, 0
  br i1 %tobool316.not, label %cleanup347, label %if.end319

if.end319:                                        ; preds = %if.else314, %if.then309
  %35 = zext i32 %eplace.3 to i64
  br label %while.cond320

while.cond320:                                    ; preds = %while.body323, %if.end319
  %indvars.iv630 = phi i64 [ %indvars.iv.next631, %while.body323 ], [ %35, %if.end319 ]
  %cmp321 = icmp sgt i64 %indvars.iv630, 0
  br i1 %cmp321, label %while.body323, label %if.end336

while.body323:                                    ; preds = %while.cond320
  %indvars.iv.next631 = add nsw i64 %indvars.iv630, -1
  %36 = and i64 %indvars.iv.next631, 4294967295
  %arrayidx326 = getelementptr inbounds [20 x i8], [20 x i8]* %econvert, i64 0, i64 %36
  %37 = load i8, i8* %arrayidx326, align 1, !tbaa !10
  %conv327 = sext i8 %37 to i32
  %call328 = tail call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef %currlen, i64* noundef %maxlen, i32 noundef %conv327) #10
  %tobool329.not = icmp eq i32 %call328, 0
  br i1 %tobool329.not, label %cleanup347, label %while.cond320, !llvm.loop !30

if.end336:                                        ; preds = %while.cond320, %while.end292
  %cmp338596 = icmp slt i32 %padlen.6.lcssa653, 0
  br i1 %cmp338596, label %while.body340, label %cleanup347

while.cond337:                                    ; preds = %while.body340
  %inc345 = add i32 %padlen.7597, 1
  %exitcond633.not = icmp eq i32 %inc345, 0
  br i1 %exitcond633.not, label %cleanup347, label %while.body340, !llvm.loop !31

while.body340:                                    ; preds = %if.end336, %while.cond337
  %padlen.7597 = phi i32 [ %inc345, %while.cond337 ], [ %padlen.6.lcssa653, %if.end336 ]
  %call341 = tail call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef %currlen, i64* noundef %maxlen, i32 noundef 32) #10
  %tobool342.not = icmp eq i32 %call341, 0
  br i1 %tobool342.not, label %cleanup347, label %while.cond337

cleanup347.sink.split:                            ; preds = %do.end163, %if.end62, %if.then47
  %call167 = tail call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef %currlen, i64* noundef %maxlen, i32 noundef 0) #10
  br label %cleanup347

cleanup347:                                       ; preds = %while.body233, %while.body222, %while.body249, %while.body272, %while.body286, %while.body323, %while.body340, %while.cond337, %cleanup347.sink.split, %if.end336, %if.else314, %if.then309, %if.then295, %if.then264, %land.lhs.true241, %if.then212
  %retval.3 = phi i32 [ 0, %if.then212 ], [ 0, %land.lhs.true241 ], [ 0, %if.then264 ], [ 0, %if.then295 ], [ 0, %if.then309 ], [ 0, %if.else314 ], [ 1, %if.end336 ], [ 0, %cleanup347.sink.split ], [ 0, %while.body340 ], [ 1, %while.cond337 ], [ 0, %while.body323 ], [ 0, %while.body286 ], [ 0, %while.body272 ], [ 0, %while.body249 ], [ 0, %while.body222 ], [ 0, %while.body233 ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #9
  ret i32 %retval.3
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @fmtstr(i8** nocapture noundef %sbuffer, i8** noundef %buffer, i64* nocapture noundef %currlen, i64* nocapture noundef %maxlen, i8* noundef %value, i32 noundef %flags, i32 noundef %min, i32 noundef %max) unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %value, null
  %spec.store.select = select i1 %cmp, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %value
  %conv = sext i32 %max to i64
  %cmp1 = icmp sgt i64 %conv, -1
  %cond = select i1 %cmp1, i64 %conv, i64 -1
  %call = tail call i64 @OPENSSL_strnlen(i8* noundef %spec.store.select, i64 noundef %cond) #11
  %0 = trunc i64 %call to i32
  %conv3 = sub i32 %min, %0
  %cmp4 = icmp slt i32 %min, 0
  %cmp6 = icmp slt i32 %conv3, 0
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp6
  %spec.store.select73 = select i1 %or.cond, i32 0, i32 %conv3
  %cmp10 = icmp sgt i32 %max, -1
  %sub13 = sub nuw nsw i32 2147483647, %spec.store.select73
  %cmp14 = icmp sgt i32 %sub13, %max
  %add = add nsw i32 %spec.store.select73, %max
  %spec.select113 = select i1 %cmp14, i32 %add, i32 2147483647
  %max.addr.0 = select i1 %cmp10, i32 %spec.select113, i32 %max
  %and = and i32 %flags, 1
  %tobool.not = icmp eq i32 %and, 0
  %sub20 = sub nsw i32 0, %spec.store.select73
  %spec.select = select i1 %tobool.not, i32 %spec.store.select73, i32 %sub20
  %cmp22119 = icmp sgt i32 %spec.select, 0
  br i1 %cmp22119, label %land.rhs.lr.ph, label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %cmp24 = icmp slt i32 %max.addr.0, 0
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %if.end31
  %cnt.0121 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %if.end31 ]
  %padlen.1120 = phi i32 [ %spec.select, %land.rhs.lr.ph ], [ %dec, %if.end31 ]
  %cmp26 = icmp slt i32 %cnt.0121, %max.addr.0
  %1 = select i1 %cmp24, i1 true, i1 %cmp26
  br i1 %1, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %call28 = tail call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef %currlen, i64* noundef %maxlen, i32 noundef 32) #10
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %while.body
  %dec = add nsw i32 %padlen.1120, -1
  %inc = add nuw nsw i32 %cnt.0121, 1
  %exitcond.not = icmp eq i32 %inc, %spec.select
  br i1 %exitcond.not, label %while.end, label %land.rhs, !llvm.loop !32

while.end:                                        ; preds = %land.rhs, %if.end31, %entry
  %padlen.1.lcssa = phi i32 [ %spec.select, %entry ], [ 0, %if.end31 ], [ %padlen.1120, %land.rhs ]
  %cnt.0.lcssa = phi i32 [ 0, %entry ], [ %spec.select, %if.end31 ], [ %cnt.0121, %land.rhs ]
  %cmp33.not125 = icmp eq i64 %call, 0
  br i1 %cmp33.not125, label %while.end51, label %land.rhs35.lr.ph

land.rhs35.lr.ph:                                 ; preds = %while.end
  %cmp36 = icmp slt i32 %max.addr.0, 0
  %2 = add i32 %cnt.0.lcssa, %0
  br label %land.rhs35

land.rhs35:                                       ; preds = %land.rhs35.lr.ph, %if.end48
  %cnt.1128 = phi i32 [ %cnt.0.lcssa, %land.rhs35.lr.ph ], [ %inc50, %if.end48 ]
  %strln.0127 = phi i64 [ %call, %land.rhs35.lr.ph ], [ %dec49, %if.end48 ]
  %value.addr.0126 = phi i8* [ %spec.store.select, %land.rhs35.lr.ph ], [ %incdec.ptr, %if.end48 ]
  %cmp39 = icmp slt i32 %cnt.1128, %max.addr.0
  %3 = select i1 %cmp36, i1 true, i1 %cmp39
  br i1 %3, label %while.body43, label %while.end51

while.body43:                                     ; preds = %land.rhs35
  %4 = load i8, i8* %value.addr.0126, align 1, !tbaa !10
  %conv44 = sext i8 %4 to i32
  %call45 = tail call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef %currlen, i64* noundef %maxlen, i32 noundef %conv44) #10
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %cleanup, label %if.end48

if.end48:                                         ; preds = %while.body43
  %incdec.ptr = getelementptr inbounds i8, i8* %value.addr.0126, i64 1
  %dec49 = add i64 %strln.0127, -1
  %inc50 = add nuw nsw i32 %cnt.1128, 1
  %cmp33.not = icmp eq i64 %dec49, 0
  br i1 %cmp33.not, label %while.end51, label %land.rhs35, !llvm.loop !33

while.end51:                                      ; preds = %land.rhs35, %if.end48, %while.end
  %cnt.1.lcssa = phi i32 [ %cnt.0.lcssa, %while.end ], [ %2, %if.end48 ], [ %cnt.1128, %land.rhs35 ]
  %cmp53131 = icmp slt i32 %padlen.1.lcssa, 0
  br i1 %cmp53131, label %land.rhs55.lr.ph, label %cleanup

land.rhs55.lr.ph:                                 ; preds = %while.end51
  %cmp56 = icmp slt i32 %max.addr.0, 0
  br label %land.rhs55

land.rhs55:                                       ; preds = %land.rhs55.lr.ph, %if.end67
  %cnt.2133 = phi i32 [ %cnt.1.lcssa, %land.rhs55.lr.ph ], [ %inc69, %if.end67 ]
  %padlen.2132 = phi i32 [ %padlen.1.lcssa, %land.rhs55.lr.ph ], [ %inc68, %if.end67 ]
  %cmp59 = icmp slt i32 %cnt.2133, %max.addr.0
  %5 = select i1 %cmp56, i1 true, i1 %cmp59
  br i1 %5, label %while.body63, label %cleanup

while.body63:                                     ; preds = %land.rhs55
  %call64 = tail call fastcc i32 @doapr_outch(i8** noundef %sbuffer, i8** noundef %buffer, i64* noundef %currlen, i64* noundef %maxlen, i32 noundef 32) #10
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %cleanup, label %if.end67

if.end67:                                         ; preds = %while.body63
  %inc68 = add i32 %padlen.2132, 1
  %inc69 = add nuw nsw i32 %cnt.2133, 1
  %exitcond139.not = icmp eq i32 %inc68, 0
  br i1 %exitcond139.not, label %cleanup, label %land.rhs55, !llvm.loop !34

cleanup:                                          ; preds = %while.body, %while.body43, %while.body63, %if.end67, %land.rhs55, %while.end51
  %retval.0 = phi i32 [ 1, %while.end51 ], [ 0, %while.body63 ], [ 1, %if.end67 ], [ 1, %land.rhs55 ], [ 0, %while.body43 ], [ 0, %while.body ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i8* @CRYPTO_realloc(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define internal fastcc double @pow_10(i32 noundef %in_exp) unnamed_addr #6 {
entry:
  %tobool.not4 = icmp eq i32 %in_exp, 0
  br i1 %tobool.not4, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %0 = add i32 %in_exp, -1
  %xtraiter = and i32 %in_exp, 7
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %while.body.prol.loopexit, label %while.body.prol

while.body.prol:                                  ; preds = %while.body.preheader, %while.body.prol
  %result.06.prol = phi double [ %mul.prol, %while.body.prol ], [ 1.000000e+00, %while.body.preheader ]
  %in_exp.addr.05.prol = phi i32 [ %dec.prol, %while.body.prol ], [ %in_exp, %while.body.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %while.body.prol ], [ 0, %while.body.preheader ]
  %mul.prol = fmul double %result.06.prol, 1.000000e+01
  %dec.prol = add nsw i32 %in_exp.addr.05.prol, -1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %while.body.prol.loopexit, label %while.body.prol, !llvm.loop !35

while.body.prol.loopexit:                         ; preds = %while.body.prol, %while.body.preheader
  %mul.lcssa.unr = phi double [ undef, %while.body.preheader ], [ %mul.prol, %while.body.prol ]
  %result.06.unr = phi double [ 1.000000e+00, %while.body.preheader ], [ %mul.prol, %while.body.prol ]
  %in_exp.addr.05.unr = phi i32 [ %in_exp, %while.body.preheader ], [ %dec.prol, %while.body.prol ]
  %1 = icmp ult i32 %0, 7
  br i1 %1, label %while.end, label %while.body

while.body:                                       ; preds = %while.body.prol.loopexit, %while.body
  %result.06 = phi double [ %mul.7, %while.body ], [ %result.06.unr, %while.body.prol.loopexit ]
  %in_exp.addr.05 = phi i32 [ %dec.7, %while.body ], [ %in_exp.addr.05.unr, %while.body.prol.loopexit ]
  %mul = fmul double %result.06, 1.000000e+01
  %mul.1 = fmul double %mul, 1.000000e+01
  %mul.2 = fmul double %mul.1, 1.000000e+01
  %mul.3 = fmul double %mul.2, 1.000000e+01
  %mul.4 = fmul double %mul.3, 1.000000e+01
  %mul.5 = fmul double %mul.4, 1.000000e+01
  %mul.6 = fmul double %mul.5, 1.000000e+01
  %mul.7 = fmul double %mul.6, 1.000000e+01
  %dec.7 = add nsw i32 %in_exp.addr.05, -8
  %tobool.not.7 = icmp eq i32 %dec.7, 0
  br i1 %tobool.not.7, label %while.end, label %while.body, !llvm.loop !37

while.end:                                        ; preds = %while.body.prol.loopexit, %while.body, %entry
  %result.0.lcssa = phi double [ 1.000000e+00, %entry ], [ %mul.lcssa.unr, %while.body.prol.loopexit ], [ %mul.7, %while.body ]
  ret double %result.0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc double @abs_val(double noundef %value) unnamed_addr #7 {
entry:
  %cmp = fcmp olt double %value, 0.000000e+00
  %fneg = fneg double %value
  %result.0 = select i1 %cmp, double %fneg, double %value
  ret double %result.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @roundv(double noundef %value) unnamed_addr #7 {
entry:
  %conv = fptosi double %value to i64
  %conv1 = sitofp i64 %conv to double
  %sub = fsub double %value, %conv1
  %cmp = fcmp oge double %sub, 5.000000e-01
  %inc = zext i1 %cmp to i64
  %intpart.0 = add nsw i64 %inc, %conv
  ret i64 %intpart.0
}

declare i64 @OPENSSL_strnlen(i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = distinct !{!37, !14}
