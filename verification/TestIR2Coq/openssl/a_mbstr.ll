; ModuleID = 'crypto/asn1/a_mbstr.c'
source_filename = "crypto/asn1/a_mbstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_string_st = type { i32, i32, i8*, i64 }

@.str = private unnamed_addr constant [22 x i8] c"crypto/asn1/a_mbstr.c\00", align 1
@__func__.ASN1_mbstring_ncopy = private unnamed_addr constant [20 x i8] c"ASN1_mbstring_ncopy\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"minsize=%ld\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"maxsize=%ld\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_mbstring_copy(%struct.asn1_string_st** noundef %out, i8* noundef %in, i32 noundef %len, i32 noundef %inform, i64 noundef %mask) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ASN1_mbstring_ncopy(%struct.asn1_string_st** noundef %out, i8* noundef %in, i32 noundef %len, i32 noundef %inform, i64 noundef %mask, i64 noundef 0, i64 noundef 0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_mbstring_ncopy(%struct.asn1_string_st** noundef %out, i8* noundef %in, i32 noundef %len, i32 noundef %inform, i64 noundef %mask, i64 noundef %minsize, i64 noundef %maxsize) local_unnamed_addr #0 {
entry:
  %mask.addr = alloca i64, align 8
  %outlen = alloca i32, align 4
  %p = alloca i8*, align 8
  %nchar = alloca i32, align 4
  store i64 %mask, i64* %mask.addr, align 8, !tbaa !4
  %0 = bitcast i32* %outlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  store i32 0, i32* %outlen, align 4, !tbaa !8
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %2 = bitcast i32* %nchar to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  %cmp = icmp eq i32 %len, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef %in) #8
  %conv = trunc i64 %call to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %len.addr.0 = phi i32 [ %conv, %if.then ], [ %len, %entry ]
  %tobool.not = icmp eq i64 %mask, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i64 10246, i64* %mask.addr, align 8, !tbaa !4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %cmp3 = icmp slt i32 %len.addr.0, 0
  br i1 %cmp3, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end2
  switch i32 %inform, label %sw.default [
    i32 4098, label %sw.bb
    i32 4100, label %sw.bb10
    i32 4096, label %sw.bb16
    i32 4097, label %sw.bb22
  ]

sw.bb:                                            ; preds = %if.end6
  %and = and i32 %len.addr.0, 1
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %sw.bb
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ASN1_mbstring_ncopy, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 129, i8* noundef null) #9
  br label %cleanup

if.end9:                                          ; preds = %sw.bb
  %shr168 = lshr i32 %len.addr.0, 1
  store i32 %shr168, i32* %nchar, align 4, !tbaa !8
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end6
  %and11 = and i32 %len.addr.0, 3
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %sw.bb10
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ASN1_mbstring_ncopy, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 133, i8* noundef null) #9
  br label %cleanup

if.end14:                                         ; preds = %sw.bb10
  %shr15169 = lshr i32 %len.addr.0, 2
  store i32 %shr15169, i32* %nchar, align 4, !tbaa !8
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end6
  store i32 0, i32* %nchar, align 4, !tbaa !8
  %call17 = call fastcc i32 @traverse_string(i8* noundef %in, i32 noundef %len.addr.0, i32 noundef 4096, i32 (i64, i8*)* noundef nonnull @in_utf8, i8* noundef nonnull %2) #6
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %sw.bb16.sw.epilog_crit_edge

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  %.pre = load i32, i32* %nchar, align 4
  br label %sw.epilog

if.then20:                                        ; preds = %sw.bb16
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ASN1_mbstring_ncopy, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 134, i8* noundef null) #9
  br label %cleanup

sw.bb22:                                          ; preds = %if.end6
  store i32 %len.addr.0, i32* %nchar, align 4, !tbaa !8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end6
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ASN1_mbstring_ncopy, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 160, i8* noundef null) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb16.sw.epilog_crit_edge, %sw.bb22, %if.end14, %if.end9
  %3 = phi i32 [ %.pre, %sw.bb16.sw.epilog_crit_edge ], [ %len.addr.0, %sw.bb22 ], [ %shr15169, %if.end14 ], [ %shr168, %if.end9 ]
  %cmp23 = icmp sgt i64 %minsize, 0
  %conv25 = sext i32 %3 to i64
  %cmp26 = icmp slt i64 %conv25, %minsize
  %or.cond = select i1 %cmp23, i1 %cmp26, i1 false
  br i1 %or.cond, label %if.then28, label %if.end29

if.then28:                                        ; preds = %sw.epilog
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 100, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ASN1_mbstring_ncopy, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 152, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 noundef %minsize) #9
  br label %cleanup

if.end29:                                         ; preds = %sw.epilog
  %cmp30 = icmp sgt i64 %maxsize, 0
  %cmp34 = icmp sgt i64 %conv25, %maxsize
  %or.cond166 = select i1 %cmp30, i1 %cmp34, i1 false
  br i1 %or.cond166, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end29
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ASN1_mbstring_ncopy, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 151, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 noundef %maxsize) #9
  br label %cleanup

if.end37:                                         ; preds = %if.end29
  %4 = bitcast i64* %mask.addr to i8*
  %call38 = call fastcc i32 @traverse_string(i8* noundef %in, i32 noundef %len.addr.0, i32 noundef %inform, i32 (i64, i8*)* noundef nonnull @type_str, i8* noundef nonnull %4) #6
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ASN1_mbstring_ncopy, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 124, i8* noundef null) #9
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  %5 = load i64, i64* %mask.addr, align 8, !tbaa !4
  %and43 = and i64 %5, 1
  %tobool44.not = icmp eq i64 %and43, 0
  br i1 %tobool44.not, label %if.else, label %if.end71

if.else:                                          ; preds = %if.end42
  %and46 = and i64 %5, 2
  %tobool47.not = icmp eq i64 %and46, 0
  br i1 %tobool47.not, label %if.else49, label %if.end71

if.else49:                                        ; preds = %if.else
  %and50 = and i64 %5, 16
  %tobool51.not = icmp eq i64 %and50, 0
  br i1 %tobool51.not, label %if.else53, label %if.end71

if.else53:                                        ; preds = %if.else49
  %and54 = and i64 %5, 4
  %tobool55.not = icmp eq i64 %and54, 0
  br i1 %tobool55.not, label %if.else57, label %if.end71

if.else57:                                        ; preds = %if.else53
  %and58 = and i64 %5, 2048
  %tobool59.not = icmp eq i64 %and58, 0
  br i1 %tobool59.not, label %if.else61, label %if.end71

if.else61:                                        ; preds = %if.else57
  %and62 = and i64 %5, 256
  %tobool63.not = icmp eq i64 %and62, 0
  %. = select i1 %tobool63.not, i32 12, i32 28
  %.167 = select i1 %tobool63.not, i32 4096, i32 4100
  br label %if.end71

if.end71:                                         ; preds = %if.else61, %if.else57, %if.else53, %if.else49, %if.else, %if.end42
  %str_type.0 = phi i32 [ 18, %if.end42 ], [ 19, %if.else ], [ 22, %if.else49 ], [ 20, %if.else53 ], [ 30, %if.else57 ], [ %., %if.else61 ]
  %outform.0 = phi i32 [ 4097, %if.end42 ], [ 4097, %if.else ], [ 4097, %if.else49 ], [ 4097, %if.else53 ], [ 4098, %if.else57 ], [ %.167, %if.else61 ]
  %tobool72.not = icmp eq %struct.asn1_string_st** %out, null
  br i1 %tobool72.not, label %cleanup, label %if.end74

if.end74:                                         ; preds = %if.end71
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %out, align 8, !tbaa !10
  %tobool75.not = icmp eq %struct.asn1_string_st* %6, null
  br i1 %tobool75.not, label %if.else78, label %if.then76

if.then76:                                        ; preds = %if.end74
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %6, i64 0, i32 2
  %7 = load i8*, i8** %data, align 8, !tbaa !12
  call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 142) #9
  store i8* null, i8** %data, align 8, !tbaa !12
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %6, i64 0, i32 0
  store i32 0, i32* %length, align 8, !tbaa !14
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %6, i64 0, i32 1
  store i32 %str_type.0, i32* %type, align 4, !tbaa !15
  br label %if.end84

if.else78:                                        ; preds = %if.end74
  %call79 = call %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef %str_type.0) #9
  %cmp80 = icmp eq %struct.asn1_string_st* %call79, null
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.else78
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 150, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ASN1_mbstring_ncopy, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #9
  br label %cleanup

if.end83:                                         ; preds = %if.else78
  store %struct.asn1_string_st* %call79, %struct.asn1_string_st** %out, align 8, !tbaa !10
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then76
  %dest.0 = phi %struct.asn1_string_st* [ %6, %if.then76 ], [ %call79, %if.end83 ]
  %cmp85 = icmp eq i32 %outform.0, %inform
  br i1 %cmp85, label %if.then87, label %if.end92

if.then87:                                        ; preds = %if.end84
  %call88 = call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %dest.0, i8* noundef %in, i32 noundef %len.addr.0) #9
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.then90, label %cleanup

if.then90:                                        ; preds = %if.then87
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 158, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ASN1_mbstring_ncopy, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #9
  br label %cleanup

if.end92:                                         ; preds = %if.end84
  switch i32 %outform.0, label %sw.epilog99 [
    i32 4097, label %sw.bb93
    i32 4098, label %sw.bb94
    i32 4100, label %sw.bb95
    i32 4096, label %sw.bb97
  ]

sw.bb93:                                          ; preds = %if.end92
  %8 = load i32, i32* %nchar, align 4, !tbaa !8
  store i32 %8, i32* %outlen, align 4, !tbaa !8
  br label %sw.epilog99

sw.bb94:                                          ; preds = %if.end92
  %9 = load i32, i32* %nchar, align 4, !tbaa !8
  %shl = shl i32 %9, 1
  store i32 %shl, i32* %outlen, align 4, !tbaa !8
  br label %sw.epilog99

sw.bb95:                                          ; preds = %if.end92
  %10 = load i32, i32* %nchar, align 4, !tbaa !8
  %shl96 = shl i32 %10, 2
  store i32 %shl96, i32* %outlen, align 4, !tbaa !8
  br label %sw.epilog99

sw.bb97:                                          ; preds = %if.end92
  store i32 0, i32* %outlen, align 4, !tbaa !8
  %call98 = call fastcc i32 @traverse_string(i8* noundef %in, i32 noundef %len.addr.0, i32 noundef %inform, i32 (i64, i8*)* noundef nonnull @out_utf8, i8* noundef nonnull %0) #6
  br label %sw.epilog99

sw.epilog99:                                      ; preds = %if.end92, %sw.bb97, %sw.bb95, %sw.bb94, %sw.bb93
  %cpyfunc.0 = phi i32 (i64, i8*)* [ null, %if.end92 ], [ @cpy_utf8, %sw.bb97 ], [ @cpy_univ, %sw.bb95 ], [ @cpy_bmp, %sw.bb94 ], [ @cpy_asc, %sw.bb93 ]
  %11 = load i32, i32* %outlen, align 4, !tbaa !8
  %add = add nsw i32 %11, 1
  %conv100 = sext i32 %add to i64
  %call101 = call i8* @CRYPTO_malloc(i64 noundef %conv100, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 187) #9
  store i8* %call101, i8** %p, align 8, !tbaa !10
  %cmp102 = icmp eq i8* %call101, null
  br i1 %cmp102, label %if.then104, label %if.end108

if.then104:                                       ; preds = %sw.epilog99
  br i1 %tobool75.not, label %if.then106, label %if.end107

if.then106:                                       ; preds = %if.then104
  call void @ASN1_STRING_free(%struct.asn1_string_st* noundef nonnull %dest.0) #9
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %if.then104
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 190, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ASN1_mbstring_ncopy, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #9
  br label %cleanup

if.end108:                                        ; preds = %sw.epilog99
  %12 = load i32, i32* %outlen, align 4, !tbaa !8
  %length109 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %dest.0, i64 0, i32 0
  store i32 %12, i32* %length109, align 8, !tbaa !14
  %data110 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %dest.0, i64 0, i32 2
  store i8* %call101, i8** %data110, align 8, !tbaa !12
  %13 = load i32, i32* %outlen, align 4, !tbaa !8
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i8, i8* %call101, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !16
  %call111 = call fastcc i32 @traverse_string(i8* noundef %in, i32 noundef %len.addr.0, i32 noundef %inform, i32 (i64, i8*)* noundef %cpyfunc.0, i8* noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then87, %if.end71, %if.end2, %if.end108, %if.end107, %if.then90, %if.then82, %if.then41, %if.then36, %if.then28, %sw.default, %if.then20, %if.then13, %if.then8
  %retval.0 = phi i32 [ -1, %sw.default ], [ -1, %if.then28 ], [ -1, %if.then36 ], [ -1, %if.then41 ], [ -1, %if.then90 ], [ -1, %if.end107 ], [ %str_type.0, %if.end108 ], [ -1, %if.then82 ], [ -1, %if.then20 ], [ -1, %if.then13 ], [ -1, %if.then8 ], [ -1, %if.end2 ], [ %str_type.0, %if.end71 ], [ %str_type.0, %if.then87 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @traverse_string(i8* noundef %p, i32 noundef %len, i32 noundef %inform, i32 (i64, i8*)* noundef readonly %rfunc, i8* noundef %arg) unnamed_addr #0 {
entry:
  %value = alloca i64, align 8
  %0 = bitcast i64* %value to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %tobool.not68 = icmp eq i32 %len, 0
  br i1 %tobool.not68, label %cleanup, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %tobool37.not = icmp eq i32 (i64, i8*)* %rfunc, null
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end44
  %p.addr.070 = phi i8* [ %p, %while.body.lr.ph ], [ %p.addr.1, %if.end44 ]
  %len.addr.069 = phi i32 [ %len, %while.body.lr.ph ], [ %len.addr.1, %if.end44 ]
  switch i32 %inform, label %if.else29 [
    i32 4097, label %if.then
    i32 4098, label %if.then3
    i32 4100, label %if.then12
  ]

if.then:                                          ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8, i8* %p.addr.070, i64 1
  %1 = load i8, i8* %p.addr.070, align 1, !tbaa !16
  %conv = zext i8 %1 to i64
  store i64 %conv, i64* %value, align 8, !tbaa !4
  %dec = add nsw i32 %len.addr.069, -1
  br label %if.end36

if.then3:                                         ; preds = %while.body
  %incdec.ptr4 = getelementptr inbounds i8, i8* %p.addr.070, i64 1
  %2 = load i8, i8* %p.addr.070, align 1, !tbaa !16
  %conv5 = zext i8 %2 to i64
  %shl = shl nuw nsw i64 %conv5, 8
  store i64 %shl, i64* %value, align 8, !tbaa !4
  %incdec.ptr7 = getelementptr inbounds i8, i8* %p.addr.070, i64 2
  %3 = load i8, i8* %incdec.ptr4, align 1, !tbaa !16
  %conv8 = zext i8 %3 to i64
  %or = or i64 %shl, %conv8
  store i64 %or, i64* %value, align 8, !tbaa !4
  %sub = add nsw i32 %len.addr.069, -2
  br label %if.end36

if.then12:                                        ; preds = %while.body
  %incdec.ptr13 = getelementptr inbounds i8, i8* %p.addr.070, i64 1
  %4 = load i8, i8* %p.addr.070, align 1, !tbaa !16
  %conv14 = zext i8 %4 to i64
  %shl15 = shl nuw nsw i64 %conv14, 24
  store i64 %shl15, i64* %value, align 8, !tbaa !4
  %incdec.ptr16 = getelementptr inbounds i8, i8* %p.addr.070, i64 2
  %5 = load i8, i8* %incdec.ptr13, align 1, !tbaa !16
  %conv17 = zext i8 %5 to i64
  %shl18 = shl nuw nsw i64 %conv17, 16
  %or19 = or i64 %shl18, %shl15
  store i64 %or19, i64* %value, align 8, !tbaa !4
  %incdec.ptr20 = getelementptr inbounds i8, i8* %p.addr.070, i64 3
  %6 = load i8, i8* %incdec.ptr16, align 1, !tbaa !16
  %conv21 = zext i8 %6 to i64
  %shl22 = shl nuw nsw i64 %conv21, 8
  %or24 = or i64 %shl22, %or19
  store i64 %or24, i64* %value, align 8, !tbaa !4
  %incdec.ptr25 = getelementptr inbounds i8, i8* %p.addr.070, i64 4
  %7 = load i8, i8* %incdec.ptr20, align 1, !tbaa !16
  %conv26 = zext i8 %7 to i64
  %or27 = or i64 %or24, %conv26
  store i64 %or27, i64* %value, align 8, !tbaa !4
  %sub28 = add nsw i32 %len.addr.069, -4
  br label %if.end36

if.else29:                                        ; preds = %while.body
  %call = call i32 @UTF8_getc(i8* noundef %p.addr.070, i32 noundef %len.addr.069, i64* noundef nonnull %value) #9
  %cmp30 = icmp slt i32 %call, 0
  br i1 %cmp30, label %cleanup, label %if.end

if.end:                                           ; preds = %if.else29
  %sub33 = sub nsw i32 %len.addr.069, %call
  %idx.ext67 = zext i32 %call to i64
  %add.ptr = getelementptr inbounds i8, i8* %p.addr.070, i64 %idx.ext67
  br label %if.end36

if.end36:                                         ; preds = %if.then3, %if.end, %if.then12, %if.then
  %len.addr.1 = phi i32 [ %dec, %if.then ], [ %sub, %if.then3 ], [ %sub28, %if.then12 ], [ %sub33, %if.end ]
  %p.addr.1 = phi i8* [ %incdec.ptr, %if.then ], [ %incdec.ptr7, %if.then3 ], [ %incdec.ptr25, %if.then12 ], [ %add.ptr, %if.end ]
  br i1 %tobool37.not, label %if.end44, label %if.then38

if.then38:                                        ; preds = %if.end36
  %8 = load i64, i64* %value, align 8, !tbaa !4
  %call39 = call i32 %rfunc(i64 noundef %8, i8* noundef %arg) #9
  %cmp40 = icmp slt i32 %call39, 1
  br i1 %cmp40, label %cleanup, label %if.end44

if.end44:                                         ; preds = %if.then38, %if.end36
  %tobool.not = icmp eq i32 %len.addr.1, 0
  br i1 %tobool.not, label %cleanup, label %while.body, !llvm.loop !17

cleanup:                                          ; preds = %if.else29, %if.then38, %if.end44, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %if.end44 ], [ %call39, %if.then38 ], [ -1, %if.else29 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @in_utf8(i64 noundef %value, i8* nocapture noundef %arg) #4 {
entry:
  %call = tail call fastcc i32 @is_unicode_valid(i64 noundef %value) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %arg to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !8
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %0, align 4, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -2, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @type_str(i64 noundef %value, i8* nocapture noundef %arg) #0 {
entry:
  %0 = bitcast i8* %arg to i64*
  %1 = load i64, i64* %0, align 8, !tbaa !4
  %2 = icmp ult i64 %value, 2147483647
  %cond = select i1 %2, i64 %value, i64 2147483647
  %conv = trunc i64 %cond to i32
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @ossl_ctype_check(i32 noundef %conv, i32 noundef 4) #9
  %tobool1 = icmp ne i32 %call, 0
  %cmp2 = icmp eq i32 %conv, 32
  %or.cond = or i1 %cmp2, %tobool1
  %and4 = and i64 %1, -2
  %spec.select = select i1 %or.cond, i64 %1, i64 %and4
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %types.0 = phi i64 [ %1, %entry ], [ %spec.select, %land.lhs.true ]
  %and5 = and i64 %types.0, 2
  %tobool6.not = icmp eq i64 %and5, 0
  br i1 %tobool6.not, label %if.end12, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %if.end
  %call8 = tail call i32 @ossl_ctype_check(i32 noundef %conv, i32 noundef 2048) #9
  %tobool9.not = icmp eq i32 %call8, 0
  %and11 = and i64 %types.0, -3
  %spec.select75 = select i1 %tobool9.not, i64 %and11, i64 %types.0
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true7, %if.end
  %types.1 = phi i64 [ %types.0, %if.end ], [ %spec.select75, %land.lhs.true7 ]
  %and13 = and i64 %types.1, 16
  %tobool14.not = icmp eq i64 %and13, 0
  %and16 = and i32 %conv, 2147483520
  %cmp17 = icmp eq i32 %and16, 0
  %or.cond76 = or i1 %cmp17, %tobool14.not
  %and20 = and i64 %types.1, -17
  %types.2 = select i1 %or.cond76, i64 %types.1, i64 %and20
  %and22 = and i64 %types.2, 4
  %tobool23 = icmp ne i64 %and22, 0
  %cmp25 = icmp ugt i64 %value, 255
  %or.cond50 = and i1 %cmp25, %tobool23
  %and28 = and i64 %types.2, -5
  %types.3 = select i1 %or.cond50, i64 %and28, i64 %types.2
  %and30 = and i64 %types.3, 2048
  %tobool31 = icmp ne i64 %and30, 0
  %cmp33 = icmp ugt i64 %value, 65535
  %or.cond51 = and i1 %cmp33, %tobool31
  %and36 = and i64 %types.3, -2049
  %types.4 = select i1 %or.cond51, i64 %and36, i64 %types.3
  %and38 = and i64 %types.4, 8192
  %tobool39.not = icmp eq i64 %and38, 0
  br i1 %tobool39.not, label %if.end45, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %if.end12
  %call41 = tail call fastcc i32 @is_unicode_valid(i64 noundef %value) #6
  %tobool42.not = icmp eq i32 %call41, 0
  %and44 = and i64 %types.4, -8193
  br i1 %tobool42.not, label %if.end45, label %if.end48

if.end45:                                         ; preds = %land.lhs.true40, %if.end12
  %types.5 = phi i64 [ %types.4, %if.end12 ], [ %and44, %land.lhs.true40 ]
  %tobool46.not = icmp eq i64 %types.5, 0
  br i1 %tobool46.not, label %cleanup, label %if.end48

if.end48:                                         ; preds = %land.lhs.true40, %if.end45
  %types.580 = phi i64 [ %types.5, %if.end45 ], [ %types.4, %land.lhs.true40 ]
  store i64 %types.580, i64* %0, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end48
  %retval.0 = phi i32 [ 1, %if.end48 ], [ -1, %if.end45 ]
  ret i32 %retval.0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef) local_unnamed_addr #3

declare i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @cpy_asc(i64 noundef %value, i8* nocapture noundef %arg) #4 {
entry:
  %0 = bitcast i8* %arg to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !10
  %conv = trunc i64 %value to i8
  store i8 %conv, i8* %1, align 1, !tbaa !16
  %2 = load i8*, i8** %0, align 8, !tbaa !10
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i64 1
  store i8* %incdec.ptr, i8** %0, align 8, !tbaa !10
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @cpy_bmp(i64 noundef %value, i8* nocapture noundef %arg) #4 {
entry:
  %0 = bitcast i8* %arg to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !10
  %shr = lshr i64 %value, 8
  %conv = trunc i64 %shr to i8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1
  store i8 %conv, i8* %1, align 1, !tbaa !16
  %conv2 = trunc i64 %value to i8
  store i8 %conv2, i8* %incdec.ptr, align 1, !tbaa !16
  %2 = load i8*, i8** %0, align 8, !tbaa !10
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 2
  store i8* %add.ptr, i8** %0, align 8, !tbaa !10
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @cpy_univ(i64 noundef %value, i8* nocapture noundef %arg) #4 {
entry:
  %0 = bitcast i8* %arg to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !10
  %shr = lshr i64 %value, 24
  %conv = trunc i64 %shr to i8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1
  store i8 %conv, i8* %1, align 1, !tbaa !16
  %shr1 = lshr i64 %value, 16
  %conv3 = trunc i64 %shr1 to i8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %1, i64 2
  store i8 %conv3, i8* %incdec.ptr, align 1, !tbaa !16
  %shr5 = lshr i64 %value, 8
  %conv7 = trunc i64 %shr5 to i8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %1, i64 3
  store i8 %conv7, i8* %incdec.ptr4, align 1, !tbaa !16
  %conv10 = trunc i64 %value to i8
  store i8 %conv10, i8* %incdec.ptr8, align 1, !tbaa !16
  %2 = load i8*, i8** %0, align 8, !tbaa !10
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 4
  store i8* %add.ptr, i8** %0, align 8, !tbaa !10
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @out_utf8(i64 noundef %value, i8* nocapture noundef %arg) #0 {
entry:
  %call = tail call i32 @UTF8_putc(i8* noundef null, i32 noundef -1, i64 noundef %value) #9
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %arg to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !8
  %add = add nsw i32 %1, %call
  store i32 %add, i32* %0, align 4, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cpy_utf8(i64 noundef %value, i8* nocapture noundef %arg) #0 {
entry:
  %0 = bitcast i8* %arg to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !10
  %call = tail call i32 @UTF8_putc(i8* noundef %1, i32 noundef 255, i64 noundef %value) #9
  %2 = load i8*, i8** %0, align 8, !tbaa !10
  %idx.ext = sext i32 %call to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  store i8* %add.ptr, i8** %0, align 8, !tbaa !10
  ret i32 1
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @ASN1_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @UTF8_getc(i8* noundef, i32 noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @is_unicode_valid(i64 noundef %value) unnamed_addr #5 {
entry:
  %cmp = icmp ult i64 %value, 1114112
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call = tail call fastcc i32 @is_unicode_surrogate(i64 noundef %value) #6
  %tobool.not = icmp eq i32 %call, 0
  %phi.cast = zext i1 %tobool.not to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @is_unicode_surrogate(i64 noundef %value) unnamed_addr #5 {
entry:
  %0 = and i64 %value, -2048
  %1 = icmp eq i64 %0, 55296
  %land.ext = zext i1 %1 to i32
  ret i32 %land.ext
}

declare i32 @UTF8_putc(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ossl_ctype_check(i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }

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
!12 = !{!13, !11, i64 8}
!13 = !{!"asn1_string_st", !9, i64 0, !9, i64 4, !11, i64 8, !5, i64 16}
!14 = !{!13, !9, i64 0}
!15 = !{!13, !9, i64 4}
!16 = !{!6, !6, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
