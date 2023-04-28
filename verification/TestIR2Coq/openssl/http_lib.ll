; ModuleID = 'crypto/http/http_lib.c'
source_filename = "crypto/http/http_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"crypto/http/http_lib.c\00", align 1
@__func__.OSSL_parse_url = private unnamed_addr constant [15 x i8] c"OSSL_parse_url\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"://\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@__func__.OSSL_HTTP_parse_url = private unnamed_addr constant [20 x i8] c"OSSL_HTTP_parse_url\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"443\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"https_proxy\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"http_proxy\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"HTTP_PROXY\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"HTTPS_PROXY\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"no_proxy\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"NO_PROXY\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_parse_url(i8* noundef %url, i8** noundef %pscheme, i8** noundef %puser, i8** noundef %phost, i8** noundef %pport, i32* noundef writeonly %pport_num, i8** noundef %ppath, i8** noundef %pquery, i8** noundef %pfrag) local_unnamed_addr #0 {
entry:
  %portnum = alloca i32, align 4
  %0 = bitcast i32* %portnum to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  tail call fastcc void @init_pstring(i8** noundef %pscheme) #7
  tail call fastcc void @init_pstring(i8** noundef %puser) #7
  tail call fastcc void @init_pstring(i8** noundef %phost) #7
  tail call fastcc void @init_pstring(i8** noundef %pport) #7
  tail call fastcc void @init_pstring(i8** noundef %ppath) #7
  tail call fastcc void @init_pstring(i8** noundef %pfrag) #7
  tail call fastcc void @init_pstring(i8** noundef %pquery) #7
  %cmp = icmp eq i8* %url, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.OSSL_parse_url, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786690, i8* noundef null) #8
  br label %cleanup155

if.end:                                           ; preds = %entry
  %call = tail call i8* @strstr(i8* noundef nonnull %url, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #9
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.end7, label %if.else

if.else:                                          ; preds = %if.end
  %cmp3 = icmp eq i8* %call, %url
  br i1 %cmp3, label %parse_err, label %if.end5

if.end5:                                          ; preds = %if.else
  %call6 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #9
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %call6
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.end5
  %scheme_end.0 = phi i8* [ %call, %if.end5 ], [ %url, %if.end ]
  %p.0 = phi i8* [ %add.ptr, %if.end5 ], [ %url, %if.end ]
  %call8 = tail call i8* @strchr(i8* noundef %p.0, i32 noundef 64) #9
  %cmp9.not = icmp eq i8* %call8, null
  %incdec.ptr = getelementptr inbounds i8, i8* %call8, i64 1
  %user_end.0 = select i1 %cmp9.not, i8* %p.0, i8* %call8
  %host.0 = select i1 %cmp9.not, i8* %p.0, i8* %incdec.ptr
  %1 = load i8, i8* %host.0, align 1, !tbaa !4
  %cmp13 = icmp eq i8 %1, 91
  br i1 %cmp13, label %if.then15, label %if.else23

if.then15:                                        ; preds = %if.end7
  %add.ptr16 = getelementptr inbounds i8, i8* %host.0, i64 1
  %call17 = tail call i8* @strchr(i8* noundef nonnull %add.ptr16, i32 noundef 93) #9
  %cmp18 = icmp eq i8* %call17, null
  br i1 %cmp18, label %parse_err, label %if.end21

if.end21:                                         ; preds = %if.then15
  %incdec.ptr22 = getelementptr inbounds i8, i8* %call17, i64 1
  br label %if.end46

if.else23:                                        ; preds = %if.end7
  %call24 = tail call i8* @strchr(i8* noundef nonnull %host.0, i32 noundef 58) #9
  %cmp25 = icmp eq i8* %call24, null
  br i1 %cmp25, label %if.end29, label %if.end46

if.end29:                                         ; preds = %if.else23
  %call28 = tail call i8* @strchr(i8* noundef nonnull %host.0, i32 noundef 47) #9
  %cmp30 = icmp eq i8* %call28, null
  br i1 %cmp30, label %if.end34, label %if.end46

if.end34:                                         ; preds = %if.end29
  %call33 = tail call i8* @strchr(i8* noundef nonnull %host.0, i32 noundef 63) #9
  %cmp35 = icmp eq i8* %call33, null
  br i1 %cmp35, label %if.end39, label %if.end46

if.end39:                                         ; preds = %if.end34
  %call38 = tail call i8* @strchr(i8* noundef nonnull %host.0, i32 noundef 35) #9
  %cmp40 = icmp eq i8* %call38, null
  br i1 %cmp40, label %if.then42, label %if.end46

if.then42:                                        ; preds = %if.end39
  %call43 = tail call i64 @strlen(i8* noundef nonnull %host.0) #9
  %add.ptr44 = getelementptr inbounds i8, i8* %host.0, i64 %call43
  br label %if.end46

if.end46:                                         ; preds = %if.else23, %if.end29, %if.end34, %if.end39, %if.then42, %if.end21
  %p.1 = phi i8* [ %incdec.ptr22, %if.end21 ], [ %add.ptr44, %if.then42 ], [ %call38, %if.end39 ], [ %call33, %if.end34 ], [ %call28, %if.end29 ], [ %call24, %if.else23 ]
  %2 = load i8, i8* %p.1, align 1, !tbaa !4
  %cmp48 = icmp eq i8 %2, 58
  %incdec.ptr51 = getelementptr inbounds i8, i8* %p.1, i64 1
  %port.0 = select i1 %cmp48, i8* %incdec.ptr51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %p.2 = select i1 %cmp48, i8* %incdec.ptr51, i8* %p.1
  %call53 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %port.0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* noundef nonnull %portnum) #8
  %tobool = icmp eq i32 %call53, 0
  %3 = load i32, i32* %portnum, align 4
  %cmp54 = icmp ugt i32 %3, 65535
  %or.cond = select i1 %tobool, i1 true, i1 %cmp54
  br i1 %or.cond, label %if.then56, label %for.cond

if.then56:                                        ; preds = %if.end46
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.OSSL_parse_url, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 123, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef %port.0) #8
  br label %err

for.cond:                                         ; preds = %if.end46, %for.cond
  %port_end.0 = phi i8* [ %incdec.ptr64, %for.cond ], [ %port.0, %if.end46 ]
  %4 = load i8, i8* %port_end.0, align 1, !tbaa !4
  %5 = add i8 %4, -48
  %6 = icmp ult i8 %5, 10
  %incdec.ptr64 = getelementptr inbounds i8, i8* %port_end.0, i64 1
  br i1 %6, label %for.cond, label %for.end, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %cmp65 = icmp eq i8* %port.0, %p.2
  %sub.ptr.lhs.cast = ptrtoint i8* %port_end.0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %port.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %p.3.idx = select i1 %cmp65, i64 %sub.ptr.sub, i64 0
  %p.3 = getelementptr i8, i8* %p.2, i64 %p.3.idx
  %7 = load i8, i8* %p.3, align 1, !tbaa !4
  switch i8 %7, label %if.then84 [
    i8 0, label %if.end85
    i8 47, label %if.end85
    i8 63, label %if.end85
    i8 35, label %if.end85
  ]

if.then84:                                        ; preds = %for.end
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.OSSL_parse_url, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 125, i8* noundef null) #8
  br label %parse_err

if.end85:                                         ; preds = %for.end, %for.end, %for.end, %for.end
  %call86 = call i64 @strlen(i8* noundef nonnull %p.3) #9
  %add.ptr87 = getelementptr inbounds i8, i8* %p.3, i64 %call86
  %call88 = call i8* @strchr(i8* noundef nonnull %p.3, i32 noundef 63) #9
  %cmp89.not = icmp eq i8* %call88, null
  %cmp92.not = icmp eq i8** %pquery, null
  %add.ptr95 = getelementptr inbounds i8, i8* %call88, i64 1
  %8 = or i1 %cmp92.not, %cmp89.not
  %path_end.0 = select i1 %8, i8* %add.ptr87, i8* %call88
  %query.0 = select i1 %8, i8* %add.ptr87, i8* %add.ptr95
  %p.4 = select i1 %cmp89.not, i8* %p.3, i8* %call88
  %call98 = call i8* @strchr(i8* noundef nonnull %p.4, i32 noundef 35) #9
  %cmp99.not = icmp eq i8* %call98, null
  %cmp102 = icmp eq i8* %query.0, %path_end.0
  %spec.select273 = select i1 %cmp102, i8* %call98, i8* %path_end.0
  %add.ptr106 = getelementptr inbounds i8, i8* %call98, i64 1
  %path_end.2 = select i1 %cmp99.not, i8* %path_end.0, i8* %spec.select273
  %query_end.0 = select i1 %cmp99.not, i8* %add.ptr87, i8* %call98
  %frag.0 = select i1 %cmp99.not, i8* %add.ptr87, i8* %add.ptr106
  %call108 = call fastcc i32 @copy_substring(i8** noundef %pscheme, i8* noundef nonnull %url, i8* noundef nonnull %scheme_end.0) #7
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %err, label %lor.lhs.false110

lor.lhs.false110:                                 ; preds = %if.end85
  %call111 = call fastcc i32 @copy_substring(i8** noundef %phost, i8* noundef nonnull %host.0, i8* noundef nonnull %p.1) #7
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %err, label %lor.lhs.false113

lor.lhs.false113:                                 ; preds = %lor.lhs.false110
  %call114 = call fastcc i32 @copy_substring(i8** noundef %pport, i8* noundef %port.0, i8* noundef nonnull %port_end.0) #7
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %err, label %lor.lhs.false116

lor.lhs.false116:                                 ; preds = %lor.lhs.false113
  %call117 = call fastcc i32 @copy_substring(i8** noundef %puser, i8* noundef %p.0, i8* noundef %user_end.0) #7
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %err, label %lor.lhs.false119

lor.lhs.false119:                                 ; preds = %lor.lhs.false116
  %call120 = call fastcc i32 @copy_substring(i8** noundef %pquery, i8* noundef nonnull %query.0, i8* noundef %query_end.0) #7
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %err, label %lor.lhs.false122

lor.lhs.false122:                                 ; preds = %lor.lhs.false119
  %call123 = call fastcc i32 @copy_substring(i8** noundef %pfrag, i8* noundef nonnull %frag.0, i8* noundef nonnull %add.ptr87) #7
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %err, label %if.end126

if.end126:                                        ; preds = %lor.lhs.false122
  %cmp127.not = icmp eq i32* %pport_num, null
  br i1 %cmp127.not, label %if.end130, label %if.then129

if.then129:                                       ; preds = %if.end126
  %9 = load i32, i32* %portnum, align 4, !tbaa !9
  store i32 %9, i32* %pport_num, align 4, !tbaa !9
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %if.end126
  %10 = load i8, i8* %p.3, align 1, !tbaa !4
  %cmp132 = icmp eq i8 %10, 47
  br i1 %cmp132, label %if.then134, label %if.else139

if.then134:                                       ; preds = %if.end130
  %call135 = call fastcc i32 @copy_substring(i8** noundef %ppath, i8* noundef nonnull %p.3, i8* noundef %path_end.2) #7
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %err, label %cleanup155

if.else139:                                       ; preds = %if.end130
  %cmp140.not = icmp eq i8** %ppath, null
  br i1 %cmp140.not, label %cleanup155, label %if.then142

if.then142:                                       ; preds = %if.else139
  %add.ptr143 = getelementptr inbounds i8, i8* %path_end.2, i64 1
  %sub.ptr.lhs.cast144 = ptrtoint i8* %add.ptr143 to i64
  %sub.ptr.rhs.cast145 = ptrtoint i8* %p.3 to i64
  %sub.ptr.sub146 = sub i64 %sub.ptr.lhs.cast144, %sub.ptr.rhs.cast145
  %add = add nsw i64 %sub.ptr.sub146, 1
  %call147 = call i8* @CRYPTO_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 164) #8
  store i8* %call147, i8** %ppath, align 8, !tbaa !11
  %cmp148 = icmp eq i8* %call147, null
  br i1 %cmp148, label %err, label %cleanup

cleanup:                                          ; preds = %if.then142
  %call152 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %call147, i64 noundef %add, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull %p.3) #8
  br label %cleanup155

parse_err:                                        ; preds = %if.then15, %if.else, %if.then84
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 171, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.OSSL_parse_url, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 101, i8* noundef null) #8
  br label %err

err:                                              ; preds = %if.then142, %if.then134, %if.end85, %lor.lhs.false110, %lor.lhs.false113, %lor.lhs.false116, %lor.lhs.false119, %lor.lhs.false122, %parse_err, %if.then56
  call fastcc void @free_pstring(i8** noundef %pscheme) #7
  call fastcc void @free_pstring(i8** noundef %puser) #7
  call fastcc void @free_pstring(i8** noundef %phost) #7
  call fastcc void @free_pstring(i8** noundef %pport) #7
  call fastcc void @free_pstring(i8** noundef %ppath) #7
  call fastcc void @free_pstring(i8** noundef %pquery) #7
  call fastcc void @free_pstring(i8** noundef %pfrag) #7
  br label %cleanup155

cleanup155:                                       ; preds = %cleanup, %if.then134, %if.else139, %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %err ], [ 1, %if.else139 ], [ 1, %cleanup ], [ 1, %if.then134 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @init_pstring(i8** noundef writeonly %pstr) unnamed_addr #2 {
entry:
  %cmp.not = icmp eq i8** %pstr, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %pstr, align 8, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strstr(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @copy_substring(i8** noundef writeonly %dest, i8* noundef %start, i8* noundef %end) unnamed_addr #0 {
entry:
  %cmp = icmp eq i8** %dest, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %end to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %start to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = tail call i8* @CRYPTO_strndup(i8* noundef %start, i64 noundef %sub.ptr.sub, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 28) #8
  store i8* %call, i8** %dest, align 8, !tbaa !11
  %cmp1 = icmp ne i8* %call, null
  %phi.cast = zext i1 %cmp1 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i32 [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @free_pstring(i8** noundef %pstr) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8** %pstr, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %pstr, align 8, !tbaa !11
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 34) #8
  store i8* null, i8** %pstr, align 8, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_HTTP_parse_url(i8* noundef %url, i32* noundef writeonly %pssl, i8** noundef %puser, i8** noundef %phost, i8** noundef %pport, i32* noundef %pport_num, i8** noundef %ppath, i8** noundef %pquery, i8** noundef %pfrag) local_unnamed_addr #0 {
entry:
  %scheme = alloca i8*, align 8
  %port = alloca i8*, align 8
  %portnum = alloca i32, align 4
  %0 = bitcast i8** %scheme to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = bitcast i8** %port to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %2 = bitcast i32* %portnum to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #6
  tail call fastcc void @init_pstring(i8** noundef %pport) #7
  %cmp.not = icmp eq i32* %pssl, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %pssl, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i32 @OSSL_parse_url(i8* noundef %url, i8** noundef nonnull %scheme, i8** noundef %puser, i8** noundef %phost, i8** noundef nonnull %port, i32* noundef %pport_num, i8** noundef %ppath, i8** noundef %pquery, i8** noundef %pfrag) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %3 = load i8*, i8** %scheme, align 8, !tbaa !11
  %call3 = call i32 @strcmp(i8* noundef %3, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #9
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end2
  br i1 %cmp.not, label %if.end16, label %if.then7

if.then7:                                         ; preds = %if.then5
  store i32 1, i32* %pssl, align 4, !tbaa !9
  br label %if.end16

if.else:                                          ; preds = %if.end2
  %4 = load i8, i8* %3, align 1, !tbaa !4
  %cmp9.not = icmp eq i8 %4, 0
  br i1 %cmp9.not, label %if.end16, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %call11 = call i32 @strcmp(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #9
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %land.lhs.true
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 204, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.OSSL_HTTP_parse_url, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 124, i8* noundef null) #8
  %5 = load i8*, i8** %scheme, align 8, !tbaa !11
  call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 205) #8
  %6 = load i8*, i8** %port, align 8, !tbaa !11
  call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 206) #8
  br label %err

if.end16:                                         ; preds = %if.else, %land.lhs.true, %if.then5, %if.then7
  %tobool21.not = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), %if.else ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), %land.lhs.true ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), %if.then5 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), %if.then7 ]
  call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 209) #8
  %7 = load i8*, i8** %port, align 8, !tbaa !11
  %call17 = call i32 @strcmp(i8* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #9
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.else42

if.then20:                                        ; preds = %if.end16
  call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 213) #8
  store i8* %tobool21.not, i8** %port, align 8, !tbaa !11
  %call22 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %tobool21.not, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32* noundef nonnull %portnum) #8
  %cmp23 = icmp eq i32 %call22, 1
  br i1 %cmp23, label %if.end28, label %err

if.end28:                                         ; preds = %if.then20
  %cmp29.not = icmp eq i32* %pport_num, null
  br i1 %cmp29.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end28
  %8 = load i32, i32* %portnum, align 4, !tbaa !9
  store i32 %8, i32* %pport_num, align 4, !tbaa !9
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end28
  %cmp33.not = icmp eq i8** %pport, null
  br i1 %cmp33.not, label %cleanup, label %if.then35

if.then35:                                        ; preds = %if.end32
  %9 = load i8*, i8** %port, align 8, !tbaa !11
  %call36 = call i8* @CRYPTO_strdup(i8* noundef %9, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 220) #8
  store i8* %call36, i8** %pport, align 8, !tbaa !11
  %cmp37 = icmp eq i8* %call36, null
  br i1 %cmp37, label %err, label %cleanup

if.else42:                                        ; preds = %if.end16
  %cmp43.not = icmp eq i8** %pport, null
  br i1 %cmp43.not, label %if.else46, label %if.then45

if.then45:                                        ; preds = %if.else42
  store i8* %7, i8** %pport, align 8, !tbaa !11
  br label %cleanup

if.else46:                                        ; preds = %if.else42
  call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 228) #8
  br label %cleanup

err:                                              ; preds = %if.then35, %if.then20, %if.then14
  call fastcc void @free_pstring(i8** noundef %puser) #7
  call fastcc void @free_pstring(i8** noundef %phost) #7
  call fastcc void @free_pstring(i8** noundef %ppath) #7
  call fastcc void @free_pstring(i8** noundef %pquery) #7
  call fastcc void @free_pstring(i8** noundef %pfrag) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end32, %if.else46, %if.then45, %if.end, %err
  %retval.0 = phi i32 [ 0, %err ], [ 0, %if.end ], [ 1, %if.then45 ], [ 1, %if.else46 ], [ 1, %if.end32 ], [ 1, %if.then35 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i8* @OSSL_HTTP_adapt_proxy(i8* noundef readonly %proxy, i8* noundef %no_proxy, i8* noundef %server, i32 noundef %use_ssl) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %proxy, null
  br i1 %cmp, label %if.end, label %lor.lhs.false

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %use_ssl, 0
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0)
  %call = tail call i8* @getenv(i8* noundef %cond) #8
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.end6, label %lor.lhs.false

if.end6:                                          ; preds = %if.end
  %cond4 = select i1 %tobool.not, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0)
  %call5 = tail call i8* @getenv(i8* noundef %cond4) #8
  %cmp7 = icmp eq i8* %call5, null
  br i1 %cmp7, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry, %if.end, %if.end6
  %proxy.addr.124 = phi i8* [ %call5, %if.end6 ], [ %call, %if.end ], [ %proxy, %entry ]
  %0 = load i8, i8* %proxy.addr.124, align 1, !tbaa !4
  %cmp8 = icmp eq i8 %0, 0
  br i1 %cmp8, label %return, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %call11 = tail call fastcc i32 @use_proxy(i8* noundef %no_proxy, i8* noundef %server) #7
  %tobool12.not = icmp eq i32 %call11, 0
  %spec.select = select i1 %tobool12.not, i8* null, i8* %proxy.addr.124
  br label %return

return:                                           ; preds = %lor.lhs.false10, %if.end6, %lor.lhs.false
  %retval.0 = phi i8* [ null, %lor.lhs.false ], [ null, %if.end6 ], [ %spec.select, %lor.lhs.false10 ]
  ret i8* %retval.0
}

; Function Attrs: nounwind
declare i8* @getenv(i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @use_proxy(i8* noundef readonly %no_proxy, i8* noundef readonly %server) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %server, null
  br i1 %cmp.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef nonnull %server) #9
  %cmp3 = icmp eq i8* %no_proxy, null
  br i1 %cmp3, label %if.end7, label %if.end17

if.end7:                                          ; preds = %if.end
  %call6 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0)) #8
  %cmp8 = icmp eq i8* %call6, null
  br i1 %cmp8, label %if.end12, label %if.end17

if.end12:                                         ; preds = %if.end7
  %call11 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0)) #8
  %cmp13.not = icmp eq i8* %call11, null
  br i1 %cmp13.not, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.end12, %if.end7, %if.end
  %no_proxy.addr.174 = phi i8* [ %call11, %if.end12 ], [ %call6, %if.end7 ], [ %no_proxy, %if.end ]
  %call16 = tail call i8* @strstr(i8* noundef nonnull %no_proxy.addr.174, i8* noundef nonnull %server) #9
  %cmp18.not76 = icmp eq i8* %call16, null
  br i1 %cmp18.not76, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %if.end17, %while.body
  %found.177 = phi i8* [ %call45, %while.body ], [ %call16, %if.end17 ]
  %cmp20.not = icmp eq i8* %found.177, %no_proxy.addr.174
  br i1 %cmp20.not, label %lor.rhs, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.rhs
  %arrayidx = getelementptr inbounds i8, i8* %found.177, i64 -1
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !4
  switch i8 %0, label %while.body [
    i8 32, label %lor.rhs
    i8 44, label %lor.rhs
  ]

lor.rhs:                                          ; preds = %land.lhs.true, %land.lhs.true, %land.rhs
  %arrayidx30 = getelementptr inbounds i8, i8* %found.177, i64 %call
  %1 = load i8, i8* %arrayidx30, align 1, !tbaa !4
  switch i8 %1, label %while.body [
    i8 0, label %cleanup
    i8 32, label %cleanup
    i8 44, label %cleanup
  ]

while.body:                                       ; preds = %lor.rhs, %land.lhs.true
  %add.ptr = getelementptr inbounds i8, i8* %found.177, i64 1
  %call45 = tail call i8* @strstr(i8* noundef nonnull %add.ptr, i8* noundef nonnull %server) #9
  %cmp18.not = icmp eq i8* %call45, null
  br i1 %cmp18.not, label %cleanup, label %land.rhs, !llvm.loop !13

cleanup:                                          ; preds = %lor.rhs, %lor.rhs, %lor.rhs, %while.body, %if.end17, %if.end12, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.end17 ], [ 1, %if.end12 ], [ 0, %lor.rhs ], [ 0, %lor.rhs ], [ 0, %lor.rhs ], [ 1, %while.body ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_strndup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = distinct !{!13, !8}
